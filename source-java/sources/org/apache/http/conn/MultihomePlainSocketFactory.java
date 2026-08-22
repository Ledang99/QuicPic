package org.apache.http.conn;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import org.apache.http.annotation.Immutable;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@Deprecated
@Immutable
/* loaded from: classes.dex */
public final class MultihomePlainSocketFactory implements SocketFactory {
    private static final MultihomePlainSocketFactory DEFAULT_FACTORY = new MultihomePlainSocketFactory();

    private MultihomePlainSocketFactory() {
    }

    public static MultihomePlainSocketFactory getSocketFactory() {
        return DEFAULT_FACTORY;
    }

    @Override // org.apache.http.conn.scheme.SocketFactory
    public Socket connectSocket(Socket socket, String str, int i, InetAddress inetAddress, int i2, HttpParams httpParams) throws IOException {
        Args.notNull(str, "Target host");
        Args.notNull(httpParams, "HTTP parameters");
        Socket socket2 = socket;
        if (socket2 == null) {
            socket2 = createSocket();
        }
        if (inetAddress != null || i2 > 0) {
            socket2.bind(new InetSocketAddress(inetAddress, i2 > 0 ? i2 : 0));
        }
        int connectionTimeout = HttpConnectionParams.getConnectionTimeout(httpParams);
        InetAddress[] allByName = InetAddress.getAllByName(str);
        ArrayList<InetAddress> arrayList = new ArrayList(allByName.length);
        arrayList.addAll(Arrays.asList(allByName));
        Collections.shuffle(arrayList);
        IOException iOException = null;
        Socket socket3 = socket2;
        for (InetAddress inetAddress2 : arrayList) {
            try {
            } catch (SocketTimeoutException e) {
            } catch (IOException e2) {
                e = e2;
            }
            try {
                socket3.connect(new InetSocketAddress(inetAddress2, i), connectionTimeout);
                break;
            } catch (SocketTimeoutException e3) {
                throw new ConnectTimeoutException("Connect to " + inetAddress2 + " timed out");
            } catch (IOException e4) {
                e = e4;
                socket3 = new Socket();
                iOException = e;
            }
        }
        if (iOException == null) {
            return socket3;
        }
        throw iOException;
    }

    @Override // org.apache.http.conn.scheme.SocketFactory
    public Socket createSocket() {
        return new Socket();
    }

    @Override // org.apache.http.conn.scheme.SocketFactory
    public final boolean isSecure(Socket socket) throws IllegalArgumentException {
        Args.notNull(socket, "Socket");
        Asserts.check(!socket.isClosed(), "Socket is closed");
        return false;
    }
}
