package org.apache.http.impl.conn;

import java.io.IOException;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NoRouteToHostException;
import java.net.Socket;
import java.net.SocketTimeoutException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.config.Lookup;
import org.apache.http.config.SocketConfig;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.DnsResolver;
import org.apache.http.conn.HttpClientConnectionOperator;
import org.apache.http.conn.HttpHostConnectException;
import org.apache.http.conn.ManagedHttpClientConnection;
import org.apache.http.conn.SchemePortResolver;
import org.apache.http.conn.UnsupportedSchemeException;
import org.apache.http.conn.socket.ConnectionSocketFactory;
import org.apache.http.conn.socket.LayeredConnectionSocketFactory;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;

@Immutable
/* loaded from: classes.dex */
public class DefaultHttpClientConnectionOperator implements HttpClientConnectionOperator {
    static final String SOCKET_FACTORY_REGISTRY = "http.socket-factory-registry";
    private final DnsResolver dnsResolver;
    private final Log log = LogFactory.getLog(getClass());
    private final SchemePortResolver schemePortResolver;
    private final Lookup<ConnectionSocketFactory> socketFactoryRegistry;

    public DefaultHttpClientConnectionOperator(Lookup<ConnectionSocketFactory> lookup, SchemePortResolver schemePortResolver, DnsResolver dnsResolver) {
        Args.notNull(lookup, "Socket factory registry");
        this.socketFactoryRegistry = lookup;
        this.schemePortResolver = schemePortResolver != null ? schemePortResolver : DefaultSchemePortResolver.INSTANCE;
        this.dnsResolver = dnsResolver != null ? dnsResolver : SystemDefaultDnsResolver.INSTANCE;
    }

    private Lookup<ConnectionSocketFactory> getSocketFactoryRegistry(HttpContext httpContext) {
        Lookup<ConnectionSocketFactory> lookup = (Lookup) httpContext.getAttribute("http.socket-factory-registry");
        return lookup == null ? this.socketFactoryRegistry : lookup;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0130 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r15v3 */
    @Override // org.apache.http.conn.HttpClientConnectionOperator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void connect(ManagedHttpClientConnection managedHttpClientConnection, HttpHost httpHost, InetSocketAddress inetSocketAddress, int i, SocketConfig socketConfig, HttpContext httpContext) throws IOException {
        HttpContext httpContext2 = httpContext;
        ConnectionSocketFactory lookup = getSocketFactoryRegistry(httpContext2).lookup(httpHost.getSchemeName());
        if (lookup == null) {
            throw new UnsupportedSchemeException(httpHost.getSchemeName() + " protocol is not supported");
        }
        ?? r15 = 1;
        InetAddress[] resolve = httpHost.getAddress() != null ? new InetAddress[]{httpHost.getAddress()} : this.dnsResolver.resolve(httpHost.getHostName());
        int resolve2 = this.schemePortResolver.resolve(httpHost);
        int i2 = 0;
        while (i2 < resolve.length) {
            InetAddress inetAddress = resolve[i2];
            boolean z = i2 == resolve.length - r15;
            Socket createSocket = lookup.createSocket(httpContext2);
            createSocket.setSoTimeout(socketConfig.getSoTimeout());
            createSocket.setReuseAddress(socketConfig.isSoReuseAddress());
            createSocket.setTcpNoDelay(socketConfig.isTcpNoDelay());
            createSocket.setKeepAlive(socketConfig.isSoKeepAlive());
            int soLinger = socketConfig.getSoLinger();
            if (soLinger >= 0) {
                createSocket.setSoLinger(r15, soLinger);
            }
            managedHttpClientConnection.bind(createSocket);
            InetSocketAddress inetSocketAddress2 = new InetSocketAddress(inetAddress, resolve2);
            if (this.log.isDebugEnabled()) {
                this.log.debug("Connecting to " + inetSocketAddress2);
            }
            int i3 = i2;
            int i4 = resolve2;
            InetAddress[] inetAddressArr = resolve;
            try {
                try {
                    managedHttpClientConnection.bind(lookup.connectSocket(i, createSocket, httpHost, inetSocketAddress2, inetSocketAddress, httpContext));
                    if (this.log.isDebugEnabled()) {
                        this.log.debug("Connection established " + managedHttpClientConnection);
                        return;
                    }
                    return;
                } catch (ConnectException e) {
                    e = e;
                    if (z) {
                        if (!"Connection timed out".equals(e.getMessage())) {
                            throw new HttpHostConnectException(e, httpHost, inetAddressArr);
                        }
                        throw new ConnectTimeoutException(e, httpHost, inetAddressArr);
                    }
                    if (this.log.isDebugEnabled()) {
                        this.log.debug("Connect to " + inetSocketAddress2 + " timed out. Connection will be retried using another IP address");
                    }
                    i2 = i3 + 1;
                    resolve = inetAddressArr;
                    resolve2 = i4;
                    r15 = 1;
                    httpContext2 = httpContext;
                } catch (NoRouteToHostException e2) {
                    e = e2;
                    if (z) {
                        throw e;
                    }
                    if (this.log.isDebugEnabled()) {
                    }
                    i2 = i3 + 1;
                    resolve = inetAddressArr;
                    resolve2 = i4;
                    r15 = 1;
                    httpContext2 = httpContext;
                } catch (SocketTimeoutException e3) {
                    e = e3;
                    if (z) {
                        throw new ConnectTimeoutException(e, httpHost, inetAddressArr);
                    }
                    if (this.log.isDebugEnabled()) {
                    }
                    i2 = i3 + 1;
                    resolve = inetAddressArr;
                    resolve2 = i4;
                    r15 = 1;
                    httpContext2 = httpContext;
                }
            } catch (ConnectException e4) {
                e = e4;
            } catch (NoRouteToHostException e5) {
                e = e5;
            } catch (SocketTimeoutException e6) {
                e = e6;
            }
        }
    }

    @Override // org.apache.http.conn.HttpClientConnectionOperator
    public void upgrade(ManagedHttpClientConnection managedHttpClientConnection, HttpHost httpHost, HttpContext httpContext) throws IOException {
        ConnectionSocketFactory lookup = getSocketFactoryRegistry(HttpClientContext.adapt(httpContext)).lookup(httpHost.getSchemeName());
        if (lookup == null) {
            throw new UnsupportedSchemeException(httpHost.getSchemeName() + " protocol is not supported");
        }
        if (lookup instanceof LayeredConnectionSocketFactory) {
            managedHttpClientConnection.bind(((LayeredConnectionSocketFactory) lookup).createLayeredSocket(managedHttpClientConnection.getSocket(), httpHost.getHostName(), this.schemePortResolver.resolve(httpHost), httpContext));
        } else {
            throw new UnsupportedSchemeException(httpHost.getSchemeName() + " protocol does not support connection upgrade");
        }
    }
}
