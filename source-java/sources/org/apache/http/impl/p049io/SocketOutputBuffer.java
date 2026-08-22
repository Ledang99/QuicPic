package org.apache.http.impl.p049io;

import java.io.IOException;
import java.net.Socket;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;

@Deprecated
@NotThreadSafe
/* loaded from: classes.dex */
public class SocketOutputBuffer extends AbstractSessionOutputBuffer {
    public SocketOutputBuffer(Socket socket, int i, HttpParams httpParams) throws IOException {
        Args.notNull(socket, "Socket");
        int i2 = i;
        i2 = i2 < 0 ? socket.getSendBufferSize() : i2;
        init(socket.getOutputStream(), i2 < 1024 ? 1024 : i2, httpParams);
    }
}
