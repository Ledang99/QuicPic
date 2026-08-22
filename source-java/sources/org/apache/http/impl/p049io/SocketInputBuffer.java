package org.apache.http.impl.p049io;

import java.io.IOException;
import java.net.Socket;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.p050io.EofSensor;
import org.apache.http.params.HttpParams;
import org.apache.http.util.Args;

@Deprecated
@NotThreadSafe
/* loaded from: classes.dex */
public class SocketInputBuffer extends AbstractSessionInputBuffer implements EofSensor {
    private boolean eof;
    private final Socket socket;

    public SocketInputBuffer(Socket socket, int i, HttpParams httpParams) throws IOException {
        Args.notNull(socket, "Socket");
        this.socket = socket;
        this.eof = false;
        int i2 = i;
        i2 = i2 < 0 ? socket.getReceiveBufferSize() : i2;
        init(socket.getInputStream(), i2 < 1024 ? 1024 : i2, httpParams);
    }

    @Override // org.apache.http.impl.p049io.AbstractSessionInputBuffer
    protected int fillBuffer() throws IOException {
        int fillBuffer = super.fillBuffer();
        this.eof = fillBuffer == -1;
        return fillBuffer;
    }

    @Override // org.apache.http.p050io.SessionInputBuffer
    public boolean isDataAvailable(int i) throws IOException {
        boolean hasBufferedData = hasBufferedData();
        if (hasBufferedData) {
            return hasBufferedData;
        }
        int soTimeout = this.socket.getSoTimeout();
        try {
            this.socket.setSoTimeout(i);
            fillBuffer();
            return hasBufferedData();
        } finally {
            this.socket.setSoTimeout(soTimeout);
        }
    }

    @Override // org.apache.http.p050io.EofSensor
    public boolean isEof() {
        return this.eof;
    }
}
