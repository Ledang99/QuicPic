package org.apache.http.impl.execchain;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpClientConnection;
import org.apache.http.HttpEntity;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpExecutionAware;
import org.apache.http.client.methods.HttpRequestWrapper;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.client.protocol.RequestClientConnControl;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.ConnectionRequest;
import org.apache.http.conn.HttpClientConnectionManager;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.impl.conn.ConnectionShutdownException;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.ImmutableHttpProcessor;
import org.apache.http.protocol.RequestContent;
import org.apache.http.protocol.RequestTargetHost;
import org.apache.http.protocol.RequestUserAgent;
import org.apache.http.util.Args;
import org.apache.http.util.VersionInfo;

@Immutable
/* loaded from: classes.dex */
public class MinimalClientExec implements ClientExecChain {
    private final HttpClientConnectionManager connManager;
    private final HttpProcessor httpProcessor;
    private final ConnectionKeepAliveStrategy keepAliveStrategy;
    private final Log log = LogFactory.getLog(getClass());
    private final HttpRequestExecutor requestExecutor;
    private final ConnectionReuseStrategy reuseStrategy;

    public MinimalClientExec(HttpRequestExecutor httpRequestExecutor, HttpClientConnectionManager httpClientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy) {
        Args.notNull(httpRequestExecutor, "HTTP request executor");
        Args.notNull(httpClientConnectionManager, "Client connection manager");
        Args.notNull(connectionReuseStrategy, "Connection reuse strategy");
        Args.notNull(connectionKeepAliveStrategy, "Connection keep alive strategy");
        this.httpProcessor = new ImmutableHttpProcessor(new RequestContent(), new RequestTargetHost(), new RequestClientConnControl(), new RequestUserAgent(VersionInfo.getUserAgent("Apache-HttpClient", "org.apache.http.client", getClass())));
        this.requestExecutor = httpRequestExecutor;
        this.connManager = httpClientConnectionManager;
        this.reuseStrategy = connectionReuseStrategy;
        this.keepAliveStrategy = connectionKeepAliveStrategy;
    }

    static void rewriteRequestURI(HttpRequestWrapper httpRequestWrapper, HttpRoute httpRoute) throws ProtocolException {
        try {
            URI uri = httpRequestWrapper.getURI();
            if (uri != null) {
                httpRequestWrapper.setURI(uri.isAbsolute() ? URIUtils.rewriteURI(uri, null, true) : URIUtils.rewriteURI(uri));
            }
        } catch (URISyntaxException e) {
            throw new ProtocolException("Invalid URI: " + httpRequestWrapper.getRequestLine().getUri(), e);
        }
    }

    @Override // org.apache.http.impl.execchain.ClientExecChain
    public CloseableHttpResponse execute(HttpRoute httpRoute, HttpRequestWrapper httpRequestWrapper, HttpClientContext httpClientContext, HttpExecutionAware httpExecutionAware) throws IOException, HttpException {
        int connectionRequestTimeout;
        Args.notNull(httpRoute, "HTTP route");
        Args.notNull(httpRequestWrapper, "HTTP request");
        Args.notNull(httpClientContext, "HTTP context");
        rewriteRequestURI(httpRequestWrapper, httpRoute);
        ConnectionRequest requestConnection = this.connManager.requestConnection(httpRoute, null);
        if (httpExecutionAware != null) {
            if (httpExecutionAware.isAborted()) {
                requestConnection.cancel();
                throw new RequestAbortedException("Request aborted");
            }
            httpExecutionAware.setCancellable(requestConnection);
        }
        RequestConfig requestConfig = httpClientContext.getRequestConfig();
        try {
            try {
                connectionRequestTimeout = requestConfig.getConnectionRequestTimeout();
            } catch (InterruptedException e) {
                e = e;
            }
            try {
                try {
                    HttpClientConnection httpClientConnection = requestConnection.get(connectionRequestTimeout > 0 ? connectionRequestTimeout : 0L, TimeUnit.MILLISECONDS);
                    ConnectionHolder connectionHolder = new ConnectionHolder(this.log, this.connManager, httpClientConnection);
                    if (httpExecutionAware != null) {
                        try {
                            if (httpExecutionAware.isAborted()) {
                                connectionHolder.close();
                                throw new RequestAbortedException("Request aborted");
                            }
                            httpExecutionAware.setCancellable(connectionHolder);
                        } catch (IOException e2) {
                            connectionHolder.abortConnection();
                            throw e2;
                        } catch (RuntimeException e3) {
                            connectionHolder.abortConnection();
                            throw e3;
                        } catch (HttpException e4) {
                            connectionHolder.abortConnection();
                            throw e4;
                        } catch (ConnectionShutdownException e5) {
                            InterruptedIOException interruptedIOException = new InterruptedIOException("Connection has been shut down");
                            interruptedIOException.initCause(e5);
                            throw interruptedIOException;
                        }
                    }
                    if (!httpClientConnection.isOpen()) {
                        int connectTimeout = requestConfig.getConnectTimeout();
                        this.connManager.connect(httpClientConnection, httpRoute, connectTimeout > 0 ? connectTimeout : 0, httpClientContext);
                        this.connManager.routeComplete(httpClientConnection, httpRoute, httpClientContext);
                    }
                    int socketTimeout = requestConfig.getSocketTimeout();
                    if (socketTimeout >= 0) {
                        httpClientConnection.setSocketTimeout(socketTimeout);
                    }
                    Object obj = null;
                    HttpRequest original = httpRequestWrapper.getOriginal();
                    if (original instanceof HttpUriRequest) {
                        URI uri = ((HttpUriRequest) original).getURI();
                        if (uri.isAbsolute()) {
                            obj = new HttpHost(uri.getHost(), uri.getPort(), uri.getScheme());
                        }
                    }
                    if (obj == null) {
                        obj = httpRoute.getTargetHost();
                    }
                    httpClientContext.setAttribute("http.target_host", obj);
                    httpClientContext.setAttribute("http.request", httpRequestWrapper);
                    httpClientContext.setAttribute("http.connection", httpClientConnection);
                    httpClientContext.setAttribute("http.route", httpRoute);
                    this.httpProcessor.process(httpRequestWrapper, httpClientContext);
                    HttpResponse execute = this.requestExecutor.execute(httpRequestWrapper, httpClientConnection, httpClientContext);
                    this.httpProcessor.process(execute, httpClientContext);
                    if (this.reuseStrategy.keepAlive(execute, httpClientContext)) {
                        connectionHolder.setValidFor(this.keepAliveStrategy.getKeepAliveDuration(execute, httpClientContext), TimeUnit.MILLISECONDS);
                        connectionHolder.markReusable();
                    } else {
                        connectionHolder.markNonReusable();
                    }
                    HttpEntity entity = execute.getEntity();
                    if (entity != null && entity.isStreaming()) {
                        return new HttpResponseProxy(execute, connectionHolder);
                    }
                    connectionHolder.releaseConnection();
                    return new HttpResponseProxy(execute, null);
                } catch (ExecutionException e6) {
                    e = e6;
                    Throwable cause = e.getCause();
                    if (cause == null) {
                        cause = e;
                    }
                    throw new RequestAbortedException("Request execution failed", cause);
                }
            } catch (InterruptedException e7) {
                e = e7;
                Thread.currentThread().interrupt();
                throw new RequestAbortedException("Request aborted", e);
            }
        } catch (ExecutionException e8) {
            e = e8;
        }
    }
}
