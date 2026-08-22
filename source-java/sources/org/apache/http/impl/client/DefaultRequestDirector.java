package org.apache.http.impl.client;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.NoHttpResponseException;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthProtocolState;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthState;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.AuthenticationHandler;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.NonRepeatableRequestException;
import org.apache.http.client.RedirectException;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.RequestDirector;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.client.methods.AbortableHttpRequest;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.conn.BasicManagedEntity;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.BasicRouteDirector;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.impl.conn.ConnectionShutdownException;
import org.apache.http.message.BasicHttpRequest;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.util.Args;
import org.apache.http.util.EntityUtils;

@Deprecated
@NotThreadSafe
/* loaded from: classes.dex */
public class DefaultRequestDirector implements RequestDirector {
    private final HttpAuthenticator authenticator;
    protected final ClientConnectionManager connManager;
    private int execCount;
    protected final HttpProcessor httpProcessor;
    protected final ConnectionKeepAliveStrategy keepAliveStrategy;
    private final Log log;
    protected ManagedClientConnection managedConn;
    private final int maxRedirects;
    protected final HttpParams params;

    @Deprecated
    protected final AuthenticationHandler proxyAuthHandler;
    protected final AuthState proxyAuthState;
    protected final AuthenticationStrategy proxyAuthStrategy;
    private int redirectCount;

    @Deprecated
    protected final RedirectHandler redirectHandler;
    protected final RedirectStrategy redirectStrategy;
    protected final HttpRequestExecutor requestExec;
    protected final HttpRequestRetryHandler retryHandler;
    protected final ConnectionReuseStrategy reuseStrategy;
    protected final HttpRoutePlanner routePlanner;

    @Deprecated
    protected final AuthenticationHandler targetAuthHandler;
    protected final AuthState targetAuthState;
    protected final AuthenticationStrategy targetAuthStrategy;
    protected final UserTokenHandler userTokenHandler;
    private HttpHost virtualHost;

    @Deprecated
    public DefaultRequestDirector(Log log, HttpRequestExecutor httpRequestExecutor, ClientConnectionManager clientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, HttpRoutePlanner httpRoutePlanner, HttpProcessor httpProcessor, HttpRequestRetryHandler httpRequestRetryHandler, RedirectStrategy redirectStrategy, AuthenticationHandler authenticationHandler, AuthenticationHandler authenticationHandler2, UserTokenHandler userTokenHandler, HttpParams httpParams) {
        this(LogFactory.getLog(DefaultRequestDirector.class), httpRequestExecutor, clientConnectionManager, connectionReuseStrategy, connectionKeepAliveStrategy, httpRoutePlanner, httpProcessor, httpRequestRetryHandler, redirectStrategy, new AuthenticationStrategyAdaptor(authenticationHandler), new AuthenticationStrategyAdaptor(authenticationHandler2), userTokenHandler, httpParams);
    }

    public DefaultRequestDirector(Log log, HttpRequestExecutor httpRequestExecutor, ClientConnectionManager clientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, HttpRoutePlanner httpRoutePlanner, HttpProcessor httpProcessor, HttpRequestRetryHandler httpRequestRetryHandler, RedirectStrategy redirectStrategy, AuthenticationStrategy authenticationStrategy, AuthenticationStrategy authenticationStrategy2, UserTokenHandler userTokenHandler, HttpParams httpParams) {
        Args.notNull(log, "Log");
        Args.notNull(httpRequestExecutor, "Request executor");
        Args.notNull(clientConnectionManager, "Client connection manager");
        Args.notNull(connectionReuseStrategy, "Connection reuse strategy");
        Args.notNull(connectionKeepAliveStrategy, "Connection keep alive strategy");
        Args.notNull(httpRoutePlanner, "Route planner");
        Args.notNull(httpProcessor, "HTTP protocol processor");
        Args.notNull(httpRequestRetryHandler, "HTTP request retry handler");
        Args.notNull(redirectStrategy, "Redirect strategy");
        Args.notNull(authenticationStrategy, "Target authentication strategy");
        Args.notNull(authenticationStrategy2, "Proxy authentication strategy");
        Args.notNull(userTokenHandler, "User token handler");
        Args.notNull(httpParams, "HTTP parameters");
        this.log = log;
        this.authenticator = new HttpAuthenticator(log);
        this.requestExec = httpRequestExecutor;
        this.connManager = clientConnectionManager;
        this.reuseStrategy = connectionReuseStrategy;
        this.keepAliveStrategy = connectionKeepAliveStrategy;
        this.routePlanner = httpRoutePlanner;
        this.httpProcessor = httpProcessor;
        this.retryHandler = httpRequestRetryHandler;
        this.redirectStrategy = redirectStrategy;
        this.targetAuthStrategy = authenticationStrategy;
        this.proxyAuthStrategy = authenticationStrategy2;
        this.userTokenHandler = userTokenHandler;
        this.params = httpParams;
        if (redirectStrategy instanceof DefaultRedirectStrategyAdaptor) {
            this.redirectHandler = ((DefaultRedirectStrategyAdaptor) redirectStrategy).getHandler();
        } else {
            this.redirectHandler = null;
        }
        if (authenticationStrategy instanceof AuthenticationStrategyAdaptor) {
            this.targetAuthHandler = ((AuthenticationStrategyAdaptor) authenticationStrategy).getHandler();
        } else {
            this.targetAuthHandler = null;
        }
        if (authenticationStrategy2 instanceof AuthenticationStrategyAdaptor) {
            this.proxyAuthHandler = ((AuthenticationStrategyAdaptor) authenticationStrategy2).getHandler();
        } else {
            this.proxyAuthHandler = null;
        }
        this.managedConn = null;
        this.execCount = 0;
        this.redirectCount = 0;
        this.targetAuthState = new AuthState();
        this.proxyAuthState = new AuthState();
        this.maxRedirects = this.params.getIntParameter(ClientPNames.MAX_REDIRECTS, 100);
    }

    @Deprecated
    public DefaultRequestDirector(HttpRequestExecutor httpRequestExecutor, ClientConnectionManager clientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, HttpRoutePlanner httpRoutePlanner, HttpProcessor httpProcessor, HttpRequestRetryHandler httpRequestRetryHandler, RedirectHandler redirectHandler, AuthenticationHandler authenticationHandler, AuthenticationHandler authenticationHandler2, UserTokenHandler userTokenHandler, HttpParams httpParams) {
        this(LogFactory.getLog(DefaultRequestDirector.class), httpRequestExecutor, clientConnectionManager, connectionReuseStrategy, connectionKeepAliveStrategy, httpRoutePlanner, httpProcessor, httpRequestRetryHandler, new DefaultRedirectStrategyAdaptor(redirectHandler), new AuthenticationStrategyAdaptor(authenticationHandler), new AuthenticationStrategyAdaptor(authenticationHandler2), userTokenHandler, httpParams);
    }

    private void abortConnection() {
        ManagedClientConnection managedClientConnection = this.managedConn;
        if (managedClientConnection != null) {
            this.managedConn = null;
            try {
                managedClientConnection.abortConnection();
            } catch (IOException e) {
                if (this.log.isDebugEnabled()) {
                    this.log.debug(e.getMessage(), e);
                }
            }
            try {
                managedClientConnection.releaseConnection();
            } catch (IOException e2) {
                this.log.debug("Error releasing connection", e2);
            }
        }
    }

    private void tryConnect(RoutedRequest routedRequest, HttpContext httpContext) throws HttpException, IOException {
        HttpRoute route = routedRequest.getRoute();
        RequestWrapper request = routedRequest.getRequest();
        int i = 0;
        while (true) {
            httpContext.setAttribute("http.request", request);
            i++;
            try {
                if (this.managedConn.isOpen()) {
                    this.managedConn.setSocketTimeout(HttpConnectionParams.getSoTimeout(this.params));
                } else {
                    this.managedConn.open(route, httpContext, this.params);
                }
                establishRoute(route, httpContext);
                return;
            } catch (IOException e) {
                try {
                    this.managedConn.close();
                } catch (IOException e2) {
                }
                if (!this.retryHandler.retryRequest(e, i, httpContext)) {
                    throw e;
                }
                if (this.log.isInfoEnabled()) {
                    this.log.info("I/O exception (" + e.getClass().getName() + ") caught when connecting to " + route + ": " + e.getMessage());
                    if (this.log.isDebugEnabled()) {
                        this.log.debug(e.getMessage(), e);
                    }
                    this.log.info("Retrying connect to " + route);
                }
            }
        }
    }

    private HttpResponse tryExecute(RoutedRequest routedRequest, HttpContext httpContext) throws HttpException, IOException {
        RequestWrapper request = routedRequest.getRequest();
        HttpRoute route = routedRequest.getRoute();
        IOException iOException = null;
        while (true) {
            this.execCount++;
            request.incrementExecCount();
            if (!request.isRepeatable()) {
                this.log.debug("Cannot retry non-repeatable request");
                if (iOException != null) {
                    throw new NonRepeatableRequestException("Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed.", iOException);
                }
                throw new NonRepeatableRequestException("Cannot retry request with a non-repeatable request entity.");
            }
            try {
                if (!this.managedConn.isOpen()) {
                    if (route.isTunnelled()) {
                        this.log.debug("Proxied connection. Need to start over.");
                        return null;
                    }
                    this.log.debug("Reopening the direct connection.");
                    this.managedConn.open(route, httpContext, this.params);
                }
                if (this.log.isDebugEnabled()) {
                    this.log.debug("Attempt " + this.execCount + " to execute request");
                }
                return this.requestExec.execute(request, this.managedConn, httpContext);
            } catch (IOException e) {
                this.log.debug("Closing the connection.");
                try {
                    this.managedConn.close();
                } catch (IOException e2) {
                }
                if (!this.retryHandler.retryRequest(e, request.getExecCount(), httpContext)) {
                    if (!(e instanceof NoHttpResponseException)) {
                        throw e;
                    }
                    NoHttpResponseException noHttpResponseException = new NoHttpResponseException(route.getTargetHost().toHostString() + " failed to respond");
                    noHttpResponseException.setStackTrace(e.getStackTrace());
                    throw noHttpResponseException;
                }
                if (this.log.isInfoEnabled()) {
                    this.log.info("I/O exception (" + e.getClass().getName() + ") caught when processing request to " + route + ": " + e.getMessage());
                }
                if (this.log.isDebugEnabled()) {
                    this.log.debug(e.getMessage(), e);
                }
                if (this.log.isInfoEnabled()) {
                    this.log.info("Retrying request to " + route);
                }
                iOException = e;
            }
        }
    }

    private RequestWrapper wrapRequest(HttpRequest httpRequest) throws ProtocolException {
        return httpRequest instanceof HttpEntityEnclosingRequest ? new EntityEnclosingRequestWrapper((HttpEntityEnclosingRequest) httpRequest) : new RequestWrapper(httpRequest);
    }

    protected HttpRequest createConnectRequest(HttpRoute httpRoute, HttpContext httpContext) {
        HttpHost targetHost = httpRoute.getTargetHost();
        String hostName = targetHost.getHostName();
        int port = targetHost.getPort();
        if (port < 0) {
            port = this.connManager.getSchemeRegistry().getScheme(targetHost.getSchemeName()).getDefaultPort();
        }
        StringBuilder sb = new StringBuilder(hostName.length() + 6);
        sb.append(hostName);
        sb.append(':');
        sb.append(Integer.toString(port));
        return new BasicHttpRequest("CONNECT", sb.toString(), HttpProtocolParams.getVersion(this.params));
    }

    protected boolean createTunnelToProxy(HttpRoute httpRoute, int i, HttpContext httpContext) throws HttpException, IOException {
        throw new HttpException("Proxy chains are not supported.");
    }

    protected boolean createTunnelToTarget(HttpRoute httpRoute, HttpContext httpContext) throws HttpException, IOException {
        HttpResponse execute;
        HttpHost proxyHost = httpRoute.getProxyHost();
        HttpHost targetHost = httpRoute.getTargetHost();
        while (true) {
            if (!this.managedConn.isOpen()) {
                this.managedConn.open(httpRoute, httpContext, this.params);
            }
            HttpRequest createConnectRequest = createConnectRequest(httpRoute, httpContext);
            createConnectRequest.setParams(this.params);
            httpContext.setAttribute("http.target_host", targetHost);
            httpContext.setAttribute("http.route", httpRoute);
            httpContext.setAttribute(ExecutionContext.HTTP_PROXY_HOST, proxyHost);
            httpContext.setAttribute("http.connection", this.managedConn);
            httpContext.setAttribute("http.request", createConnectRequest);
            this.requestExec.preProcess(createConnectRequest, this.httpProcessor, httpContext);
            execute = this.requestExec.execute(createConnectRequest, this.managedConn, httpContext);
            execute.setParams(this.params);
            this.requestExec.postProcess(execute, this.httpProcessor, httpContext);
            if (execute.getStatusLine().getStatusCode() < 200) {
                throw new HttpException("Unexpected response to CONNECT request: " + execute.getStatusLine());
            }
            if (HttpClientParams.isAuthenticating(this.params)) {
                if (!this.authenticator.isAuthenticationRequested(proxyHost, execute, this.proxyAuthStrategy, this.proxyAuthState, httpContext) || !this.authenticator.authenticate(proxyHost, execute, this.proxyAuthStrategy, this.proxyAuthState, httpContext)) {
                    break;
                }
                if (this.reuseStrategy.keepAlive(execute, httpContext)) {
                    this.log.debug("Connection kept alive");
                    EntityUtils.consume(execute.getEntity());
                } else {
                    this.managedConn.close();
                }
            }
        }
        if (execute.getStatusLine().getStatusCode() <= 299) {
            this.managedConn.markReusable();
            return false;
        }
        HttpEntity entity = execute.getEntity();
        if (entity != null) {
            execute.setEntity(new BufferedHttpEntity(entity));
        }
        this.managedConn.close();
        throw new TunnelRefusedException("CONNECT refused by proxy: " + execute.getStatusLine(), execute);
    }

    protected HttpRoute determineRoute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws HttpException {
        return this.routePlanner.determineRoute(httpHost != null ? httpHost : (HttpHost) httpRequest.getParams().getParameter(ClientPNames.DEFAULT_HOST), httpRequest, httpContext);
    }

    protected void establishRoute(HttpRoute httpRoute, HttpContext httpContext) throws HttpException, IOException {
        int nextStep;
        BasicRouteDirector basicRouteDirector = new BasicRouteDirector();
        do {
            HttpRoute route = this.managedConn.getRoute();
            nextStep = basicRouteDirector.nextStep(httpRoute, route);
            switch (nextStep) {
                case -1:
                    throw new HttpException("Unable to establish route: planned = " + httpRoute + "; current = " + route);
                case 0:
                    break;
                case 1:
                case 2:
                    this.managedConn.open(httpRoute, httpContext, this.params);
                    break;
                case 3:
                    boolean createTunnelToTarget = createTunnelToTarget(httpRoute, httpContext);
                    this.log.debug("Tunnel to target created.");
                    this.managedConn.tunnelTarget(createTunnelToTarget, this.params);
                    break;
                case 4:
                    int hopCount = route.getHopCount() - 1;
                    boolean createTunnelToProxy = createTunnelToProxy(httpRoute, hopCount, httpContext);
                    this.log.debug("Tunnel to proxy created.");
                    this.managedConn.tunnelProxy(httpRoute.getHopTarget(hopCount), createTunnelToProxy, this.params);
                    break;
                case 5:
                    this.managedConn.layerProtocol(httpContext, this.params);
                    break;
                default:
                    throw new IllegalStateException("Unknown step indicator " + nextStep + " from RouteDirector.");
            }
        } while (nextStep > 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:187:0x04d2, code lost:
    
        r24.managedConn.markReusable();
     */
    @Override // org.apache.http.client.RequestDirector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public HttpResponse execute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) throws HttpException, IOException {
        ConnectionShutdownException connectionShutdownException;
        HttpException httpException;
        RuntimeException runtimeException;
        IOException iOException;
        HttpHost httpHost2;
        RequestWrapper requestWrapper;
        HttpRoute httpRoute;
        HttpRequest httpRequest2;
        HttpHost httpHost3;
        boolean z;
        long j;
        StringBuilder sb;
        String sb2;
        httpContext.setAttribute("http.auth.target-scope", this.targetAuthState);
        httpContext.setAttribute("http.auth.proxy-scope", this.proxyAuthState);
        HttpHost httpHost4 = httpHost;
        HttpRequest httpRequest3 = httpRequest;
        RequestWrapper wrapRequest = wrapRequest(httpRequest3);
        wrapRequest.setParams(this.params);
        HttpRoute determineRoute = determineRoute(httpHost4, wrapRequest, httpContext);
        this.virtualHost = (HttpHost) wrapRequest.getParams().getParameter(ClientPNames.VIRTUAL_HOST);
        HttpHost httpHost5 = this.virtualHost;
        if (httpHost5 != null && httpHost5.getPort() == -1) {
            int port = (httpHost4 != null ? httpHost4 : determineRoute.getTargetHost()).getPort();
            if (port != -1) {
                this.virtualHost = new HttpHost(this.virtualHost.getHostName(), port, this.virtualHost.getSchemeName());
            }
        }
        RoutedRequest routedRequest = new RoutedRequest(wrapRequest, determineRoute);
        boolean z2 = false;
        boolean z3 = false;
        HttpResponse httpResponse = null;
        while (!z3) {
            try {
                RequestWrapper request = routedRequest.getRequest();
                HttpRoute route = routedRequest.getRoute();
                Object attribute = httpContext.getAttribute("http.user-token");
                if (this.managedConn == null) {
                    try {
                        ClientConnectionRequest requestConnection = this.connManager.requestConnection(route, attribute);
                        httpHost2 = httpHost4;
                        try {
                            if (httpRequest3 instanceof AbortableHttpRequest) {
                                try {
                                    ((AbortableHttpRequest) httpRequest3).setConnectionRequest(requestConnection);
                                } catch (IOException e) {
                                    iOException = e;
                                    abortConnection();
                                    throw iOException;
                                } catch (ConnectionShutdownException e2) {
                                    connectionShutdownException = e2;
                                    InterruptedIOException interruptedIOException = new InterruptedIOException("Connection has been shut down");
                                    interruptedIOException.initCause(connectionShutdownException);
                                    throw interruptedIOException;
                                } catch (RuntimeException e3) {
                                    runtimeException = e3;
                                    abortConnection();
                                    throw runtimeException;
                                } catch (HttpException e4) {
                                    httpException = e4;
                                    abortConnection();
                                    throw httpException;
                                }
                            }
                            try {
                                requestWrapper = wrapRequest;
                                httpRoute = determineRoute;
                            } catch (InterruptedException e5) {
                            }
                        } catch (IOException e6) {
                            iOException = e6;
                        } catch (ConnectionShutdownException e7) {
                            connectionShutdownException = e7;
                        } catch (RuntimeException e8) {
                            runtimeException = e8;
                        } catch (HttpException e9) {
                            httpException = e9;
                        }
                        try {
                            try {
                                this.managedConn = requestConnection.getConnection(HttpClientParams.getConnectionManagerTimeout(this.params), TimeUnit.MILLISECONDS);
                                if (HttpConnectionParams.isStaleCheckingEnabled(this.params) && this.managedConn.isOpen()) {
                                    this.log.debug("Stale connection check");
                                    if (this.managedConn.isStale()) {
                                        this.log.debug("Stale connection detected");
                                        this.managedConn.close();
                                    }
                                }
                            } catch (InterruptedException e10) {
                                Thread.currentThread().interrupt();
                                throw new InterruptedIOException();
                            }
                        } catch (IOException e11) {
                            iOException = e11;
                            abortConnection();
                            throw iOException;
                        } catch (ConnectionShutdownException e12) {
                            connectionShutdownException = e12;
                            InterruptedIOException interruptedIOException2 = new InterruptedIOException("Connection has been shut down");
                            interruptedIOException2.initCause(connectionShutdownException);
                            throw interruptedIOException2;
                        } catch (RuntimeException e13) {
                            runtimeException = e13;
                            abortConnection();
                            throw runtimeException;
                        } catch (HttpException e14) {
                            httpException = e14;
                            abortConnection();
                            throw httpException;
                        }
                    } catch (IOException e15) {
                        iOException = e15;
                    } catch (ConnectionShutdownException e16) {
                        connectionShutdownException = e16;
                    } catch (RuntimeException e17) {
                        runtimeException = e17;
                    } catch (HttpException e18) {
                        httpException = e18;
                    }
                } else {
                    httpHost2 = httpHost4;
                    requestWrapper = wrapRequest;
                    httpRoute = determineRoute;
                }
                try {
                    if (httpRequest3 instanceof AbortableHttpRequest) {
                        ((AbortableHttpRequest) httpRequest3).setReleaseTrigger(this.managedConn);
                    }
                    try {
                        tryConnect(routedRequest, httpContext);
                        String userInfo = request.getURI().getUserInfo();
                        if (userInfo != null) {
                            this.targetAuthState.update(new BasicScheme(), new UsernamePasswordCredentials(userInfo));
                        }
                        if (this.virtualHost != null) {
                            httpHost2 = this.virtualHost;
                        } else {
                            URI uri = request.getURI();
                            if (uri.isAbsolute()) {
                                httpHost2 = URIUtils.extractHost(uri);
                            }
                        }
                        HttpHost targetHost = httpHost2 == null ? route.getTargetHost() : httpHost2;
                        try {
                            request.resetHeaders();
                            rewriteRequestURI(request, route);
                            httpContext.setAttribute("http.target_host", targetHost);
                            httpContext.setAttribute("http.route", route);
                            httpContext.setAttribute("http.connection", this.managedConn);
                            this.requestExec.preProcess(request, this.httpProcessor, httpContext);
                            httpResponse = tryExecute(routedRequest, httpContext);
                            if (httpResponse == null) {
                                httpHost4 = targetHost;
                                wrapRequest = requestWrapper;
                                determineRoute = httpRoute;
                            } else {
                                httpResponse.setParams(this.params);
                                this.requestExec.postProcess(httpResponse, this.httpProcessor, httpContext);
                                z2 = this.reuseStrategy.keepAlive(httpResponse, httpContext);
                                if (z2) {
                                    long keepAliveDuration = this.keepAliveStrategy.getKeepAliveDuration(httpResponse, httpContext);
                                    if (this.log.isDebugEnabled()) {
                                        HttpRequest httpRequest4 = httpRequest3;
                                        j = keepAliveDuration;
                                        if (j > 0) {
                                            try {
                                                sb = new StringBuilder();
                                                httpHost3 = targetHost;
                                            } catch (IOException e19) {
                                                iOException = e19;
                                            } catch (ConnectionShutdownException e20) {
                                                connectionShutdownException = e20;
                                            } catch (RuntimeException e21) {
                                                runtimeException = e21;
                                            } catch (HttpException e22) {
                                                httpException = e22;
                                            }
                                            try {
                                                sb.append("for ");
                                                sb.append(j);
                                                sb.append(" ");
                                                sb.append(TimeUnit.MILLISECONDS);
                                                sb2 = sb.toString();
                                            } catch (IOException e23) {
                                                iOException = e23;
                                                abortConnection();
                                                throw iOException;
                                            } catch (RuntimeException e24) {
                                                runtimeException = e24;
                                                abortConnection();
                                                throw runtimeException;
                                            } catch (HttpException e25) {
                                                httpException = e25;
                                                abortConnection();
                                                throw httpException;
                                            } catch (ConnectionShutdownException e26) {
                                                connectionShutdownException = e26;
                                                InterruptedIOException interruptedIOException22 = new InterruptedIOException("Connection has been shut down");
                                                interruptedIOException22.initCause(connectionShutdownException);
                                                throw interruptedIOException22;
                                            }
                                        } else {
                                            httpHost3 = targetHost;
                                            sb2 = "indefinitely";
                                        }
                                        try {
                                            Log log = this.log;
                                            httpRequest2 = httpRequest4;
                                            try {
                                                StringBuilder sb3 = new StringBuilder();
                                                z = z3;
                                                try {
                                                    sb3.append("Connection can be kept alive ");
                                                    sb3.append(sb2);
                                                    log.debug(sb3.toString());
                                                } catch (IOException e27) {
                                                    iOException = e27;
                                                    abortConnection();
                                                    throw iOException;
                                                } catch (ConnectionShutdownException e28) {
                                                    connectionShutdownException = e28;
                                                    InterruptedIOException interruptedIOException222 = new InterruptedIOException("Connection has been shut down");
                                                    interruptedIOException222.initCause(connectionShutdownException);
                                                    throw interruptedIOException222;
                                                } catch (RuntimeException e29) {
                                                    runtimeException = e29;
                                                    abortConnection();
                                                    throw runtimeException;
                                                } catch (HttpException e30) {
                                                    httpException = e30;
                                                    abortConnection();
                                                    throw httpException;
                                                }
                                            } catch (IOException e31) {
                                                iOException = e31;
                                            } catch (HttpException e32) {
                                                httpException = e32;
                                            } catch (ConnectionShutdownException e33) {
                                                connectionShutdownException = e33;
                                            } catch (RuntimeException e34) {
                                                runtimeException = e34;
                                            }
                                        } catch (IOException e35) {
                                            iOException = e35;
                                        } catch (RuntimeException e36) {
                                            runtimeException = e36;
                                        } catch (HttpException e37) {
                                            httpException = e37;
                                        } catch (ConnectionShutdownException e38) {
                                            connectionShutdownException = e38;
                                        }
                                    } else {
                                        httpHost3 = targetHost;
                                        httpRequest2 = httpRequest3;
                                        z = z3;
                                        j = keepAliveDuration;
                                    }
                                    this.managedConn.setIdleDuration(j, TimeUnit.MILLISECONDS);
                                } else {
                                    httpRequest2 = httpRequest3;
                                    httpHost3 = targetHost;
                                    z = z3;
                                }
                                RoutedRequest handleResponse = handleResponse(routedRequest, httpResponse, httpContext);
                                if (handleResponse == null) {
                                    z3 = true;
                                } else {
                                    if (z2) {
                                        EntityUtils.consume(httpResponse.getEntity());
                                        this.managedConn.markReusable();
                                    } else {
                                        this.managedConn.close();
                                        if (this.proxyAuthState.getState().compareTo(AuthProtocolState.CHALLENGED) > 0 && this.proxyAuthState.getAuthScheme() != null && this.proxyAuthState.getAuthScheme().isConnectionBased()) {
                                            this.log.debug("Resetting proxy auth state");
                                            this.proxyAuthState.reset();
                                        }
                                        if (this.targetAuthState.getState().compareTo(AuthProtocolState.CHALLENGED) > 0 && this.targetAuthState.getAuthScheme() != null && this.targetAuthState.getAuthScheme().isConnectionBased()) {
                                            this.log.debug("Resetting target auth state");
                                            this.targetAuthState.reset();
                                        }
                                    }
                                    if (!handleResponse.getRoute().equals(routedRequest.getRoute())) {
                                        releaseConnection();
                                    }
                                    routedRequest = handleResponse;
                                    z3 = z;
                                }
                                try {
                                    if (this.managedConn != null) {
                                        if (attribute == null) {
                                            attribute = this.userTokenHandler.getUserToken(httpContext);
                                            httpContext.setAttribute("http.user-token", attribute);
                                        }
                                        if (attribute != null) {
                                            this.managedConn.setState(attribute);
                                        }
                                    }
                                    httpHost4 = httpHost3;
                                    wrapRequest = requestWrapper;
                                    determineRoute = httpRoute;
                                    httpRequest3 = httpRequest2;
                                } catch (IOException e39) {
                                    iOException = e39;
                                    abortConnection();
                                    throw iOException;
                                } catch (HttpException e40) {
                                    httpException = e40;
                                    abortConnection();
                                    throw httpException;
                                } catch (ConnectionShutdownException e41) {
                                    connectionShutdownException = e41;
                                    InterruptedIOException interruptedIOException2222 = new InterruptedIOException("Connection has been shut down");
                                    interruptedIOException2222.initCause(connectionShutdownException);
                                    throw interruptedIOException2222;
                                } catch (RuntimeException e42) {
                                    runtimeException = e42;
                                    abortConnection();
                                    throw runtimeException;
                                }
                            }
                        } catch (IOException e43) {
                            iOException = e43;
                        } catch (HttpException e44) {
                            httpException = e44;
                        } catch (ConnectionShutdownException e45) {
                            connectionShutdownException = e45;
                        } catch (RuntimeException e46) {
                            runtimeException = e46;
                        }
                    } catch (TunnelRefusedException e47) {
                        if (this.log.isDebugEnabled()) {
                            this.log.debug(e47.getMessage());
                        }
                        httpResponse = e47.getResponse();
                    }
                } catch (IOException e48) {
                    iOException = e48;
                } catch (HttpException e49) {
                    httpException = e49;
                } catch (ConnectionShutdownException e50) {
                    connectionShutdownException = e50;
                } catch (RuntimeException e51) {
                    runtimeException = e51;
                }
            } catch (IOException e52) {
                iOException = e52;
            } catch (RuntimeException e53) {
                runtimeException = e53;
            } catch (HttpException e54) {
                httpException = e54;
            } catch (ConnectionShutdownException e55) {
                connectionShutdownException = e55;
            }
        }
        if (httpResponse != null && httpResponse.getEntity() != null && httpResponse.getEntity().isStreaming()) {
            httpResponse.setEntity(new BasicManagedEntity(httpResponse.getEntity(), this.managedConn, z2));
            return httpResponse;
        }
        releaseConnection();
        return httpResponse;
    }

    protected RoutedRequest handleResponse(RoutedRequest routedRequest, HttpResponse httpResponse, HttpContext httpContext) throws HttpException, IOException {
        HttpRoute route = routedRequest.getRoute();
        RequestWrapper request = routedRequest.getRequest();
        HttpParams params = request.getParams();
        if (HttpClientParams.isAuthenticating(params)) {
            HttpHost httpHost = (HttpHost) httpContext.getAttribute("http.target_host");
            if (httpHost == null) {
                httpHost = route.getTargetHost();
            }
            HttpHost httpHost2 = httpHost.getPort() < 0 ? new HttpHost(httpHost.getHostName(), this.connManager.getSchemeRegistry().getScheme(httpHost).getDefaultPort(), httpHost.getSchemeName()) : httpHost;
            boolean isAuthenticationRequested = this.authenticator.isAuthenticationRequested(httpHost2, httpResponse, this.targetAuthStrategy, this.targetAuthState, httpContext);
            HttpHost proxyHost = route.getProxyHost();
            HttpHost targetHost = proxyHost == null ? route.getTargetHost() : proxyHost;
            boolean isAuthenticationRequested2 = this.authenticator.isAuthenticationRequested(targetHost, httpResponse, this.proxyAuthStrategy, this.proxyAuthState, httpContext);
            if (isAuthenticationRequested) {
                if (this.authenticator.authenticate(httpHost2, httpResponse, this.targetAuthStrategy, this.targetAuthState, httpContext)) {
                    return routedRequest;
                }
            }
            if (isAuthenticationRequested2) {
                if (this.authenticator.authenticate(targetHost, httpResponse, this.proxyAuthStrategy, this.proxyAuthState, httpContext)) {
                    return routedRequest;
                }
            }
        }
        if (!HttpClientParams.isRedirecting(params) || !this.redirectStrategy.isRedirected(request, httpResponse, httpContext)) {
            return null;
        }
        int i = this.redirectCount;
        if (i >= this.maxRedirects) {
            throw new RedirectException("Maximum redirects (" + this.maxRedirects + ") exceeded");
        }
        this.redirectCount = i + 1;
        this.virtualHost = null;
        HttpUriRequest redirect = this.redirectStrategy.getRedirect(request, httpResponse, httpContext);
        redirect.setHeaders(request.getOriginal().getAllHeaders());
        URI uri = redirect.getURI();
        HttpHost extractHost = URIUtils.extractHost(uri);
        if (extractHost == null) {
            throw new ProtocolException("Redirect URI does not specify a valid host name: " + uri);
        }
        if (!route.getTargetHost().equals(extractHost)) {
            this.log.debug("Resetting target auth state");
            this.targetAuthState.reset();
            AuthScheme authScheme = this.proxyAuthState.getAuthScheme();
            if (authScheme != null && authScheme.isConnectionBased()) {
                this.log.debug("Resetting proxy auth state");
                this.proxyAuthState.reset();
            }
        }
        RequestWrapper wrapRequest = wrapRequest(redirect);
        wrapRequest.setParams(params);
        HttpRoute determineRoute = determineRoute(extractHost, wrapRequest, httpContext);
        RoutedRequest routedRequest2 = new RoutedRequest(wrapRequest, determineRoute);
        if (this.log.isDebugEnabled()) {
            this.log.debug("Redirecting to '" + uri + "' via " + determineRoute);
        }
        return routedRequest2;
    }

    protected void releaseConnection() {
        try {
            this.managedConn.releaseConnection();
        } catch (IOException e) {
            this.log.debug("IOException releasing connection", e);
        }
        this.managedConn = null;
    }

    protected void rewriteRequestURI(RequestWrapper requestWrapper, HttpRoute httpRoute) throws ProtocolException {
        try {
            URI uri = requestWrapper.getURI();
            requestWrapper.setURI((httpRoute.getProxyHost() == null || httpRoute.isTunnelled()) ? uri.isAbsolute() ? URIUtils.rewriteURI(uri, null, true) : URIUtils.rewriteURI(uri) : !uri.isAbsolute() ? URIUtils.rewriteURI(uri, httpRoute.getTargetHost(), true) : URIUtils.rewriteURI(uri));
        } catch (URISyntaxException e) {
            throw new ProtocolException("Invalid URI: " + requestWrapper.getRequestLine().getUri(), e);
        }
    }
}
