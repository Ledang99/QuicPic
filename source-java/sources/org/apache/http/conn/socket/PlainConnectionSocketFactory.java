package org.apache.http.conn.socket;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Immutable;
import org.apache.http.protocol.HttpContext;

@Immutable
/* loaded from: classes.dex */
public class PlainConnectionSocketFactory implements ConnectionSocketFactory {
    public static final PlainConnectionSocketFactory INSTANCE = new PlainConnectionSocketFactory();

    public static PlainConnectionSocketFactory getSocketFactory() {
        return INSTANCE;
    }

    @Override // org.apache.http.conn.socket.ConnectionSocketFactory
    public Socket connectSocket(int i, Socket socket, HttpHost httpHost, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, HttpContext httpContext) throws IOException {
        Socket createSocket = socket != null ? socket : createSocket(httpContext);
        if (inetSocketAddress2 != null) {
            createSocket.bind(inetSocketAddress2);
        }
        try {
            createSocket.connect(inetSocketAddress, i);
            return createSocket;
        } catch (IOException e) {
            try {
                createSocket.close();
            } catch (IOException e2) {
            }
            throw e;
        }
    }

    @Override // org.apache.http.conn.socket.ConnectionSocketFactory
    public Socket createSocket(HttpContext httpContext) throws IOException {
        return new Socket();
    }
}
