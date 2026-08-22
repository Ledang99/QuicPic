package org.apache.http.impl.execchain;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthProtocolState;
import org.apache.http.auth.AuthState;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.client.NonRepeatableRequestException;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.ConnectionRequest;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.routing.BasicRouteDirector;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRouteDirector;
import org.apache.http.conn.routing.RouteTracker;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.impl.auth.HttpAuthenticator;
import org.apache.http.impl.conn.ConnectionShutdownException;
import org.apache.http.message.BasicHttpRequest;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.ImmutableHttpProcessor;
import org.apache.http.protocol.RequestTargetHost;
import org.apache.http.util.Args;
import org.apache.http.util.EntityUtils;

@Immutable
/* loaded from: classes.dex */
public class MainClientExec implements ClientExecChain {
    private final HttpAuthenticator authenticator;
    private final HttpClientConnectionManager connManager;
    private final ConnectionKeepAliveStrategy keepAliveStrategy;
    private final Log log;
    private final AuthenticationStrategy proxyAuthStrategy;
    private final HttpProcessor proxyHttpProcessor;
    private final HttpRequestExecutor requestExecutor;
    private final ConnectionReuseStrategy reuseStrategy;
    private final HttpRouteDirector routeDirector;
    private final AuthenticationStrategy targetAuthStrategy;
    private final UserTokenHandler userTokenHandler;

    public MainClientExec(HttpRequestExecutor httpRequestExecutor, HttpClientConnectionManager httpClientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, AuthenticationStrategy authenticationStrategy, AuthenticationStrategy authenticationStrategy2, UserTokenHandler userTokenHandler) {
        this(httpRequestExecutor, httpClientConnectionManager, connectionReuseStrategy, connectionKeepAliveStrategy, new ImmutableHttpProcessor(new RequestTargetHost()), authenticationStrategy, authenticationStrategy2, userTokenHandler);
    }

    public MainClientExec(HttpRequestExecutor httpRequestExecutor, HttpClientConnectionManager httpClientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, HttpProcessor httpProcessor, AuthenticationStrategy authenticationStrategy, AuthenticationStrategy authenticationStrategy2, UserTokenHandler userTokenHandler) {
        this.log = LogFactory.getLog(getClass());
        Args.notNull(httpRequestExecutor, "HTTP request executor");
        Args.notNull(httpClientConnectionManager, "Client connection manager");
        Args.notNull(connectionReuseStrategy, "Connection reuse strategy");
        Args.notNull(connectionKeepAliveStrategy, "Connection keep alive strategy");
        Args.notNull(httpProcessor, "Proxy HTTP processor");
        Args.notNull(authenticationStrategy, "Target authentication strategy");
        Args.notNull(authenticationStrategy2, "Proxy authentication strategy");
        Args.notNull(userTokenHandler, "User token handler");
        this.authenticator = new HttpAuthenticator();
        this.routeDirector = new BasicRouteDirector();
        this.requestExecutor = httpRequestExecutor;
        this.connManager = httpClientConnectionManager;
        this.reuseStrategy = connectionReuseStrategy;
        this.keepAliveStrategy = connectionKeepAliveStrategy;
        this.proxyHttpProcessor = httpProcessor;
        this.targetAuthStrategy = authenticationStrategy;
        this.proxyAuthStrategy = authenticationStrategy2;
        this.userTokenHandler = userTokenHandler;
    }

    private boolean createTunnelToProxy(HttpRoute httpRoute, int i, HttpClientContext httpClientContext) throws HttpException {
        throw new HttpException("Proxy chains are not supported.");
    }

    private boolean createTunnelToTarget(AuthState authState, HttpClientConnection httpClientConnection, HttpRoute httpRoute, HttpRequest httpRequest, HttpClientContext httpClientContext) throws HttpException, IOException {
        HttpResponse httpResponse;
        RequestConfig requestConfig = httpClientContext.getRequestConfig();
        int connectTimeout = requestConfig.getConnectTimeout();
        HttpHost targetHost = httpRoute.getTargetHost();
        HttpHost proxyHost = httpRoute.getProxyHost();
        HttpResponse httpResponse2 = null;
        BasicHttpRequest basicHttpRequest = new BasicHttpRequest("CONNECT", targetHost.toHostString(), httpRequest.getProtocolVersion());
        this.requestExecutor.preProcess(basicHttpRequest, this.proxyHttpProcessor, httpClientContext);
        while (true) {
            if (httpResponse2 != null) {
                if (httpResponse2.getStatusLine().getStatusCode() <= 299) {
                    return false;
                }
                HttpEntity entity = httpResponse2.getEntity();
                if (entity != null) {
                    httpResponse2.setEntity(new BufferedHttpEntity(entity));
                }
                httpClientConnection.close();
                throw new TunnelRefusedException("CONNECT refused by proxy: " + httpResponse2.getStatusLine(), httpResponse2);
            }
            if (!httpClientConnection.isOpen()) {
                this.connManager.connect(httpClientConnection, httpRoute, connectTimeout > 0 ? connectTimeout : 0, httpClientContext);
            }
            basicHttpRequest.removeHeaders("Proxy-Authorization");
            this.authenticator.generateAuthResponse(basicHttpRequest, authState, httpClientContext);
            HttpResponse execute = this.requestExecutor.execute(basicHttpRequest, httpClientConnection, httpClientContext);
            if (execute.getStatusLine().getStatusCode() < 200) {
                throw new HttpException("Unexpected response to CONNECT request: " + execute.getStatusLine());
            }
            if (!requestConfig.isAuthenticationEnabled()) {
                httpResponse = execute;
            } else if (!this.authenticator.isAuthenticationRequested(proxyHost, execute, this.proxyAuthStrategy, authState, httpClientContext)) {
                httpResponse = execute;
            } else if (this.authenticator.handleAuthChallenge(proxyHost, execute, this.proxyAuthStrategy, authState, httpClientContext)) {
                if (this.reuseStrategy.keepAlive(execute, httpClientContext)) {
                    this.log.debug("Connection kept alive");
                    EntityUtils.consume(execute.getEntity());
                } else {
                    httpClientConnection.close();
                }
                httpResponse2 = null;
            } else {
                httpResponse = execute;
            }
            httpResponse2 = httpResponse;
        }
    }

    private boolean needAuthentication(AuthState authState, AuthState authState2, HttpRoute httpRoute, HttpResponse httpResponse, HttpClientContext httpClientContext) {
        if (!httpClientContext.getRequestConfig().isAuthenticationEnabled()) {
            return false;
        }
        HttpHost targetHost = httpClientContext.getTargetHost();
        if (targetHost == null) {
            targetHost = httpRoute.getTargetHost();
        }
        if (targetHost.getPort() < 0) {
            targetHost = new HttpHost(targetHost.getHostName(), httpRoute.getTargetHost().getPort(), targetHost.getSchemeName());
        }
        boolean isAuthenticationRequested = this.authenticator.isAuthenticationRequested(targetHost, httpResponse, this.targetAuthStrategy, authState, httpClientContext);
        HttpHost proxyHost = httpRoute.getProxyHost();
        HttpHost targetHost2 = proxyHost == null ? httpRoute.getTargetHost() : proxyHost;
        boolean isAuthenticationRequested2 = this.authenticator.isAuthenticationRequested(targetHost2, httpResponse, this.proxyAuthStrategy, authState2, httpClientContext);
        if (isAuthenticationRequested) {
            return this.authenticator.handleAuthChallenge(targetHost, httpResponse, this.targetAuthStrategy, authState, httpClientContext);
        }
        if (isAuthenticationRequested2) {
            return this.authenticator.handleAuthChallenge(targetHost2, httpResponse, this.proxyAuthStrategy, authState2, httpClientContext);
        }
        return false;
    }

    void establishRoute(AuthState authState, HttpClientConnection httpClientConnection, HttpRoute httpRoute, HttpRequest httpRequest, HttpClientContext httpClientContext) throws HttpException, IOException {
        int nextStep;
        int connectTimeout = httpClientContext.getRequestConfig().getConnectTimeout();
        RouteTracker routeTracker = new RouteTracker(httpRoute);
        do {
            HttpRoute route = routeTracker.toRoute();
            nextStep = this.routeDirector.nextStep(httpRoute, route);
            switch (nextStep) {
                case -1:
                    throw new HttpException("Unable to establish route: planned = " + httpRoute + "; current = " + route);
                case 0:
                    this.connManager.routeComplete(httpClientConnection, httpRoute, httpClientContext);
                    break;
                case 1:
                    this.connManager.connect(httpClientConnection, httpRoute, connectTimeout > 0 ? connectTimeout : 0, httpClientContext);
                    routeTracker.connectTarget(httpRoute.isSecure());
                    break;
                case 2:
                    this.connManager.connect(httpClientConnection, httpRoute, connectTimeout > 0 ? connectTimeout : 0, httpClientContext);
                    routeTracker.connectProxy(httpRoute.getProxyHost(), false);
                    break;
                case 3:
                    boolean createTunnelToTarget = createTunnelToTarget(authState, httpClientConnection, httpRoute, httpRequest, httpClientContext);
                    this.log.debug("Tunnel to target created.");
                    routeTracker.tunnelTarget(createTunnelToTarget);
                    break;
                case 4:
                    int hopCount = route.getHopCount() - 1;
                    boolean createTunnelToProxy = createTunnelToProxy(httpRoute, hopCount, httpClientContext);
                    this.log.debug("Tunnel to proxy created.");
                    routeTracker.tunnelProxy(httpRoute.getHopTarget(hopCount), createTunnelToProxy);
                    break;
                case 5:
                    this.connManager.upgrade(httpClientConnection, httpRoute, httpClientContext);
                    routeTracker.layerProtocol(httpRoute.isSecure());
                    break;
                default:
                    throw new IllegalStateException("Unknown step indicator " + nextStep + " from RouteDirector.");
            }
        } while (nextStep > 0);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:51|52|(8:245|246|247|248|249|250|251|252)(1:54)|(10:55|56|57|(1:59)|(3:64|65|66)|67|(1:69)|70|(3:72|(1:74)|75)|76)|(4:(3:208|209|(13:211|(1:213)|214|215|216|217|79|80|(7:168|169|(3:171|(1:173)(1:188)|174)(1:189)|175|176|177|178)(3:82|83|84)|85|86|87|(7:89|(1:91)(4:101|(1:107)|108|(1:114))|92|(1:94)|95|(2:97|98)(1:100)|99)(2:115|116)))|86|87|(0)(0))|78|79|80|(0)(0)|85) */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x049d, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:201:0x049e, code lost:
    
        r11 = r22;
        r1 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x04ac, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:203:0x04ad, code lost:
    
        r1 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:204:0x0496, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:205:0x0497, code lost:
    
        r11 = r22;
        r1 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x04a4, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:207:0x04a5, code lost:
    
        r11 = r22;
        r1 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x010e, code lost:
    
        if (r30.isAborted() != false) goto L322;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0118, code lost:
    
        throw new org.apache.http.impl.execchain.RequestAbortedException(r19);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0421 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x02f5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0389  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x03a4 A[Catch: RuntimeException -> 0x0432, IOException -> 0x0436, HttpException -> 0x043a, ConnectionShutdownException -> 0x043e, TryCatch #27 {IOException -> 0x0436, ConnectionShutdownException -> 0x043e, RuntimeException -> 0x0432, HttpException -> 0x043a, blocks: (B:87:0x039e, B:89:0x03a4, B:91:0x03ae, B:92:0x03f9, B:94:0x0403, B:95:0x0406, B:97:0x040c, B:99:0x040f, B:101:0x03b2, B:103:0x03bd, B:105:0x03c3, B:107:0x03cd, B:108:0x03d7, B:110:0x03df, B:112:0x03e5, B:114:0x03ef, B:118:0x0425), top: B:86:0x039e }] */
    @Override // org.apache.http.impl.execchain.ClientExecChain
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public CloseableHttpResponse execute(HttpRoute httpRoute, HttpRequestWrapper httpRequestWrapper, HttpClientContext httpClientContext, HttpExecutionAware httpExecutionAware) throws IOException, HttpException {
        AuthState authState;
        AuthState authState2;
        String str;
        String str2;
        long j;
        HttpException httpException;
        ConnectionHolder connectionHolder;
        RuntimeException runtimeException;
        ConnectionShutdownException connectionShutdownException;
        IOException iOException;
        int i;
        ConnectionHolder connectionHolder2;
        HttpClientConnection httpClientConnection;
        AuthState authState3;
        String str3;
        ConnectionRequest connectionRequest;
        Object obj;
        HttpResponse response;
        Object obj2;
        AuthState authState4;
        HttpResponse execute;
        long keepAliveDuration;
        HttpResponse httpResponse;
        String str4;
        HttpRoute httpRoute2 = httpRoute;
        HttpExecutionAware httpExecutionAware2 = httpExecutionAware;
        Args.notNull(httpRoute2, "HTTP route");
        Args.notNull(httpRequestWrapper, "HTTP request");
        Args.notNull(httpClientContext, "HTTP context");
        AuthState targetAuthState = httpClientContext.getTargetAuthState();
        if (targetAuthState == null) {
            AuthState authState5 = new AuthState();
            httpClientContext.setAttribute("http.auth.target-scope", authState5);
            authState = authState5;
        } else {
            authState = targetAuthState;
        }
        AuthState proxyAuthState = httpClientContext.getProxyAuthState();
        if (proxyAuthState == null) {
            AuthState authState6 = new AuthState();
            httpClientContext.setAttribute("http.auth.proxy-scope", authState6);
            authState2 = authState6;
        } else {
            authState2 = proxyAuthState;
        }
        if (httpRequestWrapper instanceof HttpEntityEnclosingRequest) {
            RequestEntityProxy.enhance((HttpEntityEnclosingRequest) httpRequestWrapper);
        }
        Object userToken = httpClientContext.getUserToken();
        ConnectionRequest requestConnection = this.connManager.requestConnection(httpRoute2, userToken);
        if (httpExecutionAware2 != null) {
            if (httpExecutionAware.isAborted()) {
                requestConnection.cancel();
                throw new RequestAbortedException("Request aborted");
            }
            httpExecutionAware2.setCancellable(requestConnection);
        }
        RequestConfig requestConfig = httpClientContext.getRequestConfig();
        try {
            try {
                int connectionRequestTimeout = requestConfig.getConnectionRequestTimeout();
                if (connectionRequestTimeout > 0) {
                    str2 = "Request aborted";
                    j = connectionRequestTimeout;
                } else {
                    str2 = "Request aborted";
                    j = 0;
                }
                try {
                    HttpClientConnection httpClientConnection2 = requestConnection.get(j, TimeUnit.MILLISECONDS);
                    httpClientContext.setAttribute("http.connection", httpClientConnection2);
                    if (requestConfig.isStaleConnectionCheckEnabled() && httpClientConnection2.isOpen()) {
                        this.log.debug("Stale connection check");
                        if (httpClientConnection2.isStale()) {
                            this.log.debug("Stale connection detected");
                            httpClientConnection2.close();
                        }
                    }
                    ConnectionHolder connectionHolder3 = new ConnectionHolder(this.log, this.connManager, httpClientConnection2);
                    if (httpExecutionAware2 != null) {
                        try {
                            httpExecutionAware2.setCancellable(connectionHolder3);
                        } catch (IOException e) {
                            iOException = e;
                            connectionHolder = connectionHolder3;
                            connectionHolder.abortConnection();
                            throw iOException;
                        } catch (ConnectionShutdownException e2) {
                            connectionShutdownException = e2;
                            InterruptedIOException interruptedIOException = new InterruptedIOException("Connection has been shut down");
                            interruptedIOException.initCause(connectionShutdownException);
                            throw interruptedIOException;
                        } catch (RuntimeException e3) {
                            runtimeException = e3;
                            connectionHolder = connectionHolder3;
                            connectionHolder.abortConnection();
                            throw runtimeException;
                        } catch (HttpException e4) {
                            httpException = e4;
                            connectionHolder = connectionHolder3;
                            connectionHolder.abortConnection();
                            throw httpException;
                        }
                    }
                    int i2 = 1;
                    while (true) {
                        if (i2 > 1 && !RequestEntityProxy.isRepeatable(httpRequestWrapper)) {
                            throw new NonRepeatableRequestException("Cannot retry request with a non-repeatable request entity.");
                        }
                        try {
                            if (httpClientConnection2.isOpen()) {
                                i = i2;
                                connectionHolder2 = connectionHolder3;
                                httpClientConnection = httpClientConnection2;
                                connectionRequest = requestConnection;
                                obj = userToken;
                                String str5 = str2;
                                authState3 = authState2;
                                str3 = str5;
                            } else {
                                try {
                                    Log log = this.log;
                                    i = i2;
                                    StringBuilder sb = new StringBuilder();
                                    connectionHolder2 = connectionHolder3;
                                    try {
                                        sb.append("Opening connection ");
                                        sb.append(httpRoute2);
                                        log.debug(sb.toString());
                                        AuthState authState7 = authState2;
                                        httpClientConnection = httpClientConnection2;
                                        String str6 = str2;
                                        authState3 = authState2;
                                        str3 = str6;
                                        connectionRequest = requestConnection;
                                        obj = userToken;
                                        try {
                                            try {
                                                establishRoute(authState7, httpClientConnection2, httpRoute, httpRequestWrapper, httpClientContext);
                                            } catch (TunnelRefusedException e5) {
                                                if (this.log.isDebugEnabled()) {
                                                    this.log.debug(e5.getMessage());
                                                }
                                                response = e5.getResponse();
                                                connectionHolder = connectionHolder2;
                                                if (obj == null) {
                                                    obj2 = this.userTokenHandler.getUserToken(httpClientContext);
                                                    try {
                                                        httpClientContext.setAttribute("http.user-token", obj2);
                                                    } catch (IOException e6) {
                                                        iOException = e6;
                                                        connectionHolder.abortConnection();
                                                        throw iOException;
                                                    } catch (ConnectionShutdownException e7) {
                                                        connectionShutdownException = e7;
                                                        InterruptedIOException interruptedIOException2 = new InterruptedIOException("Connection has been shut down");
                                                        interruptedIOException2.initCause(connectionShutdownException);
                                                        throw interruptedIOException2;
                                                    } catch (RuntimeException e8) {
                                                        runtimeException = e8;
                                                        connectionHolder.abortConnection();
                                                        throw runtimeException;
                                                    } catch (HttpException e9) {
                                                        httpException = e9;
                                                        connectionHolder.abortConnection();
                                                        throw httpException;
                                                    }
                                                } else {
                                                    obj2 = obj;
                                                }
                                                if (obj2 != null) {
                                                    connectionHolder.setState(obj2);
                                                }
                                                HttpEntity entity = response.getEntity();
                                                if (entity != null && entity.isStreaming()) {
                                                    return new HttpResponseProxy(response, connectionHolder);
                                                }
                                                connectionHolder.releaseConnection();
                                                return new HttpResponseProxy(response, null);
                                            }
                                        } catch (IOException e10) {
                                            iOException = e10;
                                            connectionHolder = connectionHolder2;
                                            connectionHolder.abortConnection();
                                            throw iOException;
                                        } catch (RuntimeException e11) {
                                            runtimeException = e11;
                                            connectionHolder = connectionHolder2;
                                            connectionHolder.abortConnection();
                                            throw runtimeException;
                                        } catch (HttpException e12) {
                                            httpException = e12;
                                            connectionHolder = connectionHolder2;
                                            connectionHolder.abortConnection();
                                            throw httpException;
                                        } catch (ConnectionShutdownException e13) {
                                            connectionShutdownException = e13;
                                            InterruptedIOException interruptedIOException22 = new InterruptedIOException("Connection has been shut down");
                                            interruptedIOException22.initCause(connectionShutdownException);
                                            throw interruptedIOException22;
                                        }
                                    } catch (IOException e14) {
                                        iOException = e14;
                                        connectionHolder = connectionHolder2;
                                    } catch (ConnectionShutdownException e15) {
                                        connectionShutdownException = e15;
                                    } catch (RuntimeException e16) {
                                        runtimeException = e16;
                                        connectionHolder = connectionHolder2;
                                    } catch (HttpException e17) {
                                        httpException = e17;
                                        connectionHolder = connectionHolder2;
                                    }
                                } catch (IOException e18) {
                                    iOException = e18;
                                    connectionHolder = connectionHolder3;
                                } catch (ConnectionShutdownException e19) {
                                    connectionShutdownException = e19;
                                } catch (RuntimeException e20) {
                                    runtimeException = e20;
                                    connectionHolder = connectionHolder3;
                                } catch (HttpException e21) {
                                    httpException = e21;
                                    connectionHolder = connectionHolder3;
                                }
                            }
                            try {
                                int socketTimeout = requestConfig.getSocketTimeout();
                                if (socketTimeout >= 0) {
                                    httpClientConnection.setSocketTimeout(socketTimeout);
                                }
                                if (httpExecutionAware2 != null && httpExecutionAware.isAborted()) {
                                    throw new RequestAbortedException(str3);
                                }
                                if (this.log.isDebugEnabled()) {
                                    this.log.debug("Executing request " + httpRequestWrapper.getRequestLine());
                                }
                                if (!httpRequestWrapper.containsHeader("Authorization")) {
                                    if (this.log.isDebugEnabled()) {
                                        this.log.debug("Target auth state: " + authState.getState());
                                    }
                                    this.authenticator.generateAuthResponse(httpRequestWrapper, authState, httpClientContext);
                                }
                            } catch (IOException e22) {
                                connectionHolder = connectionHolder2;
                                iOException = e22;
                            } catch (ConnectionShutdownException e23) {
                                connectionShutdownException = e23;
                            } catch (RuntimeException e24) {
                                connectionHolder = connectionHolder2;
                                runtimeException = e24;
                            } catch (HttpException e25) {
                                connectionHolder = connectionHolder2;
                                httpException = e25;
                            }
                            try {
                                if (!httpRequestWrapper.containsHeader("Proxy-Authorization")) {
                                    try {
                                        if (!httpRoute.isTunnelled()) {
                                            if (this.log.isDebugEnabled()) {
                                                this.log.debug("Proxy auth state: " + authState3.getState());
                                            }
                                            authState4 = authState3;
                                            try {
                                                this.authenticator.generateAuthResponse(httpRequestWrapper, authState4, httpClientContext);
                                                execute = this.requestExecutor.execute(httpRequestWrapper, httpClientConnection, httpClientContext);
                                                if (this.reuseStrategy.keepAlive(execute, httpClientContext)) {
                                                    httpResponse = execute;
                                                    connectionHolder = connectionHolder2;
                                                    try {
                                                        connectionHolder.markNonReusable();
                                                    } catch (IOException e26) {
                                                        iOException = e26;
                                                        connectionHolder.abortConnection();
                                                        throw iOException;
                                                    } catch (RuntimeException e27) {
                                                        runtimeException = e27;
                                                        connectionHolder.abortConnection();
                                                        throw runtimeException;
                                                    } catch (HttpException e28) {
                                                        httpException = e28;
                                                        connectionHolder.abortConnection();
                                                        throw httpException;
                                                    } catch (ConnectionShutdownException e29) {
                                                        connectionShutdownException = e29;
                                                        InterruptedIOException interruptedIOException222 = new InterruptedIOException("Connection has been shut down");
                                                        interruptedIOException222.initCause(connectionShutdownException);
                                                        throw interruptedIOException222;
                                                    }
                                                } else {
                                                    try {
                                                        keepAliveDuration = this.keepAliveStrategy.getKeepAliveDuration(execute, httpClientContext);
                                                        if (this.log.isDebugEnabled()) {
                                                            if (keepAliveDuration > 0) {
                                                                StringBuilder sb2 = new StringBuilder();
                                                                httpResponse = execute;
                                                                sb2.append("for ");
                                                                sb2.append(keepAliveDuration);
                                                                sb2.append(" ");
                                                                sb2.append(TimeUnit.MILLISECONDS);
                                                                str4 = sb2.toString();
                                                            } else {
                                                                httpResponse = execute;
                                                                str4 = "indefinitely";
                                                            }
                                                            this.log.debug("Connection can be kept alive " + str4);
                                                        } else {
                                                            httpResponse = execute;
                                                        }
                                                        connectionHolder = connectionHolder2;
                                                    } catch (IOException e30) {
                                                        connectionHolder = connectionHolder2;
                                                        iOException = e30;
                                                    } catch (RuntimeException e31) {
                                                        connectionHolder = connectionHolder2;
                                                        runtimeException = e31;
                                                    } catch (HttpException e32) {
                                                        connectionHolder = connectionHolder2;
                                                        httpException = e32;
                                                    } catch (ConnectionShutdownException e33) {
                                                        connectionShutdownException = e33;
                                                    }
                                                    try {
                                                        connectionHolder.setValidFor(keepAliveDuration, TimeUnit.MILLISECONDS);
                                                        connectionHolder.markReusable();
                                                    } catch (IOException e34) {
                                                        iOException = e34;
                                                        connectionHolder.abortConnection();
                                                        throw iOException;
                                                    } catch (HttpException e35) {
                                                        httpException = e35;
                                                        connectionHolder.abortConnection();
                                                        throw httpException;
                                                    } catch (ConnectionShutdownException e36) {
                                                        connectionShutdownException = e36;
                                                        InterruptedIOException interruptedIOException2222 = new InterruptedIOException("Connection has been shut down");
                                                        interruptedIOException2222.initCause(connectionShutdownException);
                                                        throw interruptedIOException2222;
                                                    } catch (RuntimeException e37) {
                                                        runtimeException = e37;
                                                        connectionHolder.abortConnection();
                                                        throw runtimeException;
                                                    }
                                                }
                                                AuthState authState8 = authState4;
                                                if (needAuthentication(authState, authState4, httpRoute, httpResponse, httpClientContext)) {
                                                    response = httpResponse;
                                                    break;
                                                }
                                                HttpEntity entity2 = httpResponse.getEntity();
                                                if (connectionHolder.isReusable()) {
                                                    EntityUtils.consume(entity2);
                                                } else {
                                                    httpClientConnection.close();
                                                    if (authState8.getState() == AuthProtocolState.SUCCESS && authState8.getAuthScheme() != null && authState8.getAuthScheme().isConnectionBased()) {
                                                        this.log.debug("Resetting proxy auth state");
                                                        authState8.reset();
                                                    }
                                                    if (authState.getState() == AuthProtocolState.SUCCESS && authState.getAuthScheme() != null && authState.getAuthScheme().isConnectionBased()) {
                                                        this.log.debug("Resetting target auth state");
                                                        authState.reset();
                                                    }
                                                }
                                                HttpRequest original = httpRequestWrapper.getOriginal();
                                                if (!original.containsHeader("Authorization")) {
                                                    httpRequestWrapper.removeHeaders("Authorization");
                                                }
                                                if (!original.containsHeader("Proxy-Authorization")) {
                                                    httpRequestWrapper.removeHeaders("Proxy-Authorization");
                                                }
                                                i2 = i + 1;
                                                httpClientConnection2 = httpClientConnection;
                                                connectionHolder3 = connectionHolder;
                                                str2 = str3;
                                                requestConnection = connectionRequest;
                                                authState2 = authState8;
                                                userToken = obj;
                                                httpRoute2 = httpRoute;
                                                httpExecutionAware2 = httpExecutionAware;
                                            } catch (IOException e38) {
                                                iOException = e38;
                                                connectionHolder = connectionHolder2;
                                                connectionHolder.abortConnection();
                                                throw iOException;
                                            } catch (ConnectionShutdownException e39) {
                                                connectionShutdownException = e39;
                                                InterruptedIOException interruptedIOException22222 = new InterruptedIOException("Connection has been shut down");
                                                interruptedIOException22222.initCause(connectionShutdownException);
                                                throw interruptedIOException22222;
                                            } catch (RuntimeException e40) {
                                                runtimeException = e40;
                                                connectionHolder = connectionHolder2;
                                                connectionHolder.abortConnection();
                                                throw runtimeException;
                                            } catch (HttpException e41) {
                                                httpException = e41;
                                                connectionHolder = connectionHolder2;
                                                connectionHolder.abortConnection();
                                                throw httpException;
                                            }
                                        }
                                    } catch (IOException e42) {
                                        iOException = e42;
                                        connectionHolder = connectionHolder2;
                                    } catch (HttpException e43) {
                                        httpException = e43;
                                        connectionHolder = connectionHolder2;
                                    } catch (ConnectionShutdownException e44) {
                                        connectionShutdownException = e44;
                                    } catch (RuntimeException e45) {
                                        runtimeException = e45;
                                        connectionHolder = connectionHolder2;
                                    }
                                }
                                if (needAuthentication(authState, authState4, httpRoute, httpResponse, httpClientContext)) {
                                }
                            } catch (IOException e46) {
                                iOException = e46;
                                connectionHolder.abortConnection();
                                throw iOException;
                            } catch (ConnectionShutdownException e47) {
                                connectionShutdownException = e47;
                                InterruptedIOException interruptedIOException222222 = new InterruptedIOException("Connection has been shut down");
                                interruptedIOException222222.initCause(connectionShutdownException);
                                throw interruptedIOException222222;
                            } catch (RuntimeException e48) {
                                runtimeException = e48;
                                connectionHolder.abortConnection();
                                throw runtimeException;
                            } catch (HttpException e49) {
                                httpException = e49;
                                connectionHolder.abortConnection();
                                throw httpException;
                            }
                            authState4 = authState3;
                            execute = this.requestExecutor.execute(httpRequestWrapper, httpClientConnection, httpClientContext);
                            if (this.reuseStrategy.keepAlive(execute, httpClientContext)) {
                            }
                            AuthState authState82 = authState4;
                        } catch (IOException e50) {
                            connectionHolder = connectionHolder3;
                            iOException = e50;
                        } catch (ConnectionShutdownException e51) {
                            connectionShutdownException = e51;
                        } catch (RuntimeException e52) {
                            connectionHolder = connectionHolder3;
                            runtimeException = e52;
                        } catch (HttpException e53) {
                            connectionHolder = connectionHolder3;
                            httpException = e53;
                        }
                    }
                } catch (InterruptedException e54) {
                    e = e54;
                    str = str2;
                    Thread.currentThread().interrupt();
                    throw new RequestAbortedException(str, e);
                }
            } catch (ExecutionException e55) {
                Throwable cause = e55.getCause();
                if (cause == null) {
                    cause = e55;
                }
                throw new RequestAbortedException("Request execution failed", cause);
            }
        } catch (InterruptedException e56) {
            e = e56;
            str = "Request aborted";
        }
    }
}
