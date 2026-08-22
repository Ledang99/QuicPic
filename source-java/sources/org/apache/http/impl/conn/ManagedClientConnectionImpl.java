package org.apache.http.impl.conn;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetAddress;
import java.net.Socket;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.RouteTracker;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Deprecated
@NotThreadSafe
/* loaded from: classes.dex */
class ManagedClientConnectionImpl implements ManagedClientConnection {
    private volatile long duration;
    private final ClientConnectionManager manager;
    private final ClientConnectionOperator operator;
    private volatile HttpPoolEntry poolEntry;
    private volatile boolean reusable;

    ManagedClientConnectionImpl(ClientConnectionManager clientConnectionManager, ClientConnectionOperator clientConnectionOperator, HttpPoolEntry httpPoolEntry) {
        Args.notNull(clientConnectionManager, "Connection manager");
        Args.notNull(clientConnectionOperator, "Connection operator");
        Args.notNull(httpPoolEntry, "HTTP pool entry");
        this.manager = clientConnectionManager;
        this.operator = clientConnectionOperator;
        this.poolEntry = httpPoolEntry;
        this.reusable = false;
        this.duration = Long.MAX_VALUE;
    }

    private OperatedClientConnection ensureConnection() {
        HttpPoolEntry httpPoolEntry = this.poolEntry;
        if (httpPoolEntry != null) {
            return httpPoolEntry.getConnection();
        }
        throw new ConnectionShutdownException();
    }

    private HttpPoolEntry ensurePoolEntry() {
        HttpPoolEntry httpPoolEntry = this.poolEntry;
        if (httpPoolEntry != null) {
            return httpPoolEntry;
        }
        throw new ConnectionShutdownException();
    }

    private OperatedClientConnection getConnection() {
        HttpPoolEntry httpPoolEntry = this.poolEntry;
        if (httpPoolEntry == null) {
            return null;
        }
        return httpPoolEntry.getConnection();
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void abortConnection() {
        synchronized (this) {
            if (this.poolEntry == null) {
                return;
            }
            this.reusable = false;
            try {
                this.poolEntry.getConnection().shutdown();
            } catch (IOException e) {
            }
            this.manager.releaseConnection(this, this.duration, TimeUnit.MILLISECONDS);
            this.poolEntry = null;
        }
    }

    @Override // org.apache.http.conn.ManagedHttpClientConnection
    public void bind(Socket socket) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // org.apache.http.HttpConnection, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        HttpPoolEntry httpPoolEntry = this.poolEntry;
        if (httpPoolEntry != null) {
            OperatedClientConnection connection = httpPoolEntry.getConnection();
            httpPoolEntry.getTracker().reset();
            connection.close();
        }
    }

    HttpPoolEntry detach() {
        HttpPoolEntry httpPoolEntry = this.poolEntry;
        this.poolEntry = null;
        return httpPoolEntry;
    }

    @Override // org.apache.http.HttpClientConnection
    public void flush() throws IOException {
        ensureConnection().flush();
    }

    public Object getAttribute(String str) {
        OperatedClientConnection ensureConnection = ensureConnection();
        if (ensureConnection instanceof HttpContext) {
            return ((HttpContext) ensureConnection).getAttribute(str);
        }
        return null;
    }

    @Override // org.apache.http.conn.ManagedHttpClientConnection
    public String getId() {
        return null;
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getLocalAddress() {
        return ensureConnection().getLocalAddress();
    }

    @Override // org.apache.http.HttpInetConnection
    public int getLocalPort() {
        return ensureConnection().getLocalPort();
    }

    public ClientConnectionManager getManager() {
        return this.manager;
    }

    @Override // org.apache.http.HttpConnection
    public HttpConnectionMetrics getMetrics() {
        return ensureConnection().getMetrics();
    }

    HttpPoolEntry getPoolEntry() {
        return this.poolEntry;
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getRemoteAddress() {
        return ensureConnection().getRemoteAddress();
    }

    @Override // org.apache.http.HttpInetConnection
    public int getRemotePort() {
        return ensureConnection().getRemotePort();
    }

    @Override // org.apache.http.conn.ManagedClientConnection, org.apache.http.conn.HttpRoutedConnection
    public HttpRoute getRoute() {
        return ensurePoolEntry().getEffectiveRoute();
    }

    @Override // org.apache.http.conn.ManagedClientConnection, org.apache.http.conn.HttpRoutedConnection, org.apache.http.conn.ManagedHttpClientConnection
    public SSLSession getSSLSession() {
        Socket socket = ensureConnection().getSocket();
        if (socket instanceof SSLSocket) {
            return ((SSLSocket) socket).getSession();
        }
        return null;
    }

    @Override // org.apache.http.conn.ManagedHttpClientConnection
    public Socket getSocket() {
        return ensureConnection().getSocket();
    }

    @Override // org.apache.http.HttpConnection
    public int getSocketTimeout() {
        return ensureConnection().getSocketTimeout();
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public Object getState() {
        return ensurePoolEntry().getState();
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public boolean isMarkedReusable() {
        return this.reusable;
    }

    @Override // org.apache.http.HttpConnection
    public boolean isOpen() {
        OperatedClientConnection connection = getConnection();
        if (connection != null) {
            return connection.isOpen();
        }
        return false;
    }

    @Override // org.apache.http.HttpClientConnection
    public boolean isResponseAvailable(int i) throws IOException {
        return ensureConnection().isResponseAvailable(i);
    }

    @Override // org.apache.http.conn.ManagedClientConnection, org.apache.http.conn.HttpRoutedConnection
    public boolean isSecure() {
        return ensureConnection().isSecure();
    }

    @Override // org.apache.http.HttpConnection
    public boolean isStale() {
        OperatedClientConnection connection = getConnection();
        if (connection != null) {
            return connection.isStale();
        }
        return true;
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void layerProtocol(HttpContext httpContext, HttpParams httpParams) throws IOException {
        Args.notNull(httpParams, "HTTP parameters");
        synchronized (this) {
            try {
                try {
                    if (this.poolEntry == null) {
                        throw new ConnectionShutdownException();
                    }
                    RouteTracker tracker = this.poolEntry.getTracker();
                    Asserts.notNull(tracker, "Route tracker");
                    Asserts.check(tracker.isConnected(), "Connection not open");
                    Asserts.check(tracker.isTunnelled(), "Protocol layering without a tunnel not supported");
                    Asserts.check(!tracker.isLayered(), "Multiple protocol layering not supported");
                    HttpHost targetHost = tracker.getTargetHost();
                    try {
                        OperatedClientConnection connection = this.poolEntry.getConnection();
                        this.operator.updateSecureConnection(connection, targetHost, httpContext, httpParams);
                        synchronized (this) {
                            if (this.poolEntry == null) {
                                throw new InterruptedIOException();
                            }
                            this.poolEntry.getTracker().layerProtocol(connection.isSecure());
                        }
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void markReusable() {
        this.reusable = true;
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void open(HttpRoute httpRoute, HttpContext httpContext, HttpParams httpParams) throws IOException {
        Args.notNull(httpRoute, "Route");
        Args.notNull(httpParams, "HTTP parameters");
        synchronized (this) {
            try {
                if (this.poolEntry == null) {
                    throw new ConnectionShutdownException();
                }
                RouteTracker tracker = this.poolEntry.getTracker();
                Asserts.notNull(tracker, "Route tracker");
                Asserts.check(!tracker.isConnected(), "Connection already open");
                OperatedClientConnection connection = this.poolEntry.getConnection();
                try {
                    HttpHost proxyHost = httpRoute.getProxyHost();
                    this.operator.openConnection(connection, proxyHost != null ? proxyHost : httpRoute.getTargetHost(), httpRoute.getLocalAddress(), httpContext, httpParams);
                    synchronized (this) {
                        if (this.poolEntry == null) {
                            throw new InterruptedIOException();
                        }
                        RouteTracker tracker2 = this.poolEntry.getTracker();
                        if (proxyHost == null) {
                            tracker2.connectTarget(connection.isSecure());
                        } else {
                            tracker2.connectProxy(proxyHost, connection.isSecure());
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    while (true) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    @Override // org.apache.http.HttpClientConnection
    public void receiveResponseEntity(HttpResponse httpResponse) throws HttpException, IOException {
        ensureConnection().receiveResponseEntity(httpResponse);
    }

    @Override // org.apache.http.HttpClientConnection
    public HttpResponse receiveResponseHeader() throws HttpException, IOException {
        return ensureConnection().receiveResponseHeader();
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void releaseConnection() {
        synchronized (this) {
            if (this.poolEntry == null) {
                return;
            }
            this.manager.releaseConnection(this, this.duration, TimeUnit.MILLISECONDS);
            this.poolEntry = null;
        }
    }

    public Object removeAttribute(String str) {
        OperatedClientConnection ensureConnection = ensureConnection();
        if (ensureConnection instanceof HttpContext) {
            return ((HttpContext) ensureConnection).removeAttribute(str);
        }
        return null;
    }

    @Override // org.apache.http.HttpClientConnection
    public void sendRequestEntity(HttpEntityEnclosingRequest httpEntityEnclosingRequest) throws HttpException, IOException {
        ensureConnection().sendRequestEntity(httpEntityEnclosingRequest);
    }

    @Override // org.apache.http.HttpClientConnection
    public void sendRequestHeader(HttpRequest httpRequest) throws HttpException, IOException {
        ensureConnection().sendRequestHeader(httpRequest);
    }

    public void setAttribute(String str, Object obj) {
        OperatedClientConnection ensureConnection = ensureConnection();
        if (ensureConnection instanceof HttpContext) {
            ((HttpContext) ensureConnection).setAttribute(str, obj);
        }
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void setIdleDuration(long j, TimeUnit timeUnit) {
        if (j > 0) {
            this.duration = timeUnit.toMillis(j);
        } else {
            this.duration = -1L;
        }
    }

    @Override // org.apache.http.HttpConnection
    public void setSocketTimeout(int i) {
        ensureConnection().setSocketTimeout(i);
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void setState(Object obj) {
        ensurePoolEntry().setState(obj);
    }

    @Override // org.apache.http.HttpConnection
    public void shutdown() throws IOException {
        HttpPoolEntry httpPoolEntry = this.poolEntry;
        if (httpPoolEntry != null) {
            OperatedClientConnection connection = httpPoolEntry.getConnection();
            httpPoolEntry.getTracker().reset();
            connection.shutdown();
        }
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void tunnelProxy(HttpHost httpHost, boolean z, HttpParams httpParams) throws IOException {
        Args.notNull(httpHost, "Next proxy");
        Args.notNull(httpParams, "HTTP parameters");
        synchronized (this) {
            try {
                if (this.poolEntry == null) {
                    throw new ConnectionShutdownException();
                }
                RouteTracker tracker = this.poolEntry.getTracker();
                Asserts.notNull(tracker, "Route tracker");
                Asserts.check(tracker.isConnected(), "Connection not open");
                OperatedClientConnection connection = this.poolEntry.getConnection();
                try {
                    connection.update(null, httpHost, z, httpParams);
                    synchronized (this) {
                        if (this.poolEntry == null) {
                            throw new InterruptedIOException();
                        }
                        this.poolEntry.getTracker().tunnelProxy(httpHost, z);
                    }
                } catch (Throwable th) {
                    th = th;
                    while (true) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void tunnelTarget(boolean z, HttpParams httpParams) throws IOException {
        Args.notNull(httpParams, "HTTP parameters");
        synchronized (this) {
            try {
                if (this.poolEntry == null) {
                    throw new ConnectionShutdownException();
                }
                RouteTracker tracker = this.poolEntry.getTracker();
                Asserts.notNull(tracker, "Route tracker");
                Asserts.check(tracker.isConnected(), "Connection not open");
                Asserts.check(!tracker.isTunnelled(), "Connection is already tunnelled");
                HttpHost targetHost = tracker.getTargetHost();
                try {
                    OperatedClientConnection connection = this.poolEntry.getConnection();
                    try {
                        connection.update(null, targetHost, z, httpParams);
                        synchronized (this) {
                            if (this.poolEntry == null) {
                                throw new InterruptedIOException();
                            }
                            this.poolEntry.getTracker().tunnelTarget(z);
                        }
                    } catch (Throwable th) {
                        th = th;
                        while (true) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void unmarkReusable() {
        this.reusable = false;
    }
}
