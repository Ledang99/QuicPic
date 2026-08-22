package org.apache.http.impl.conn;

import java.io.IOException;
import org.apache.http.Consts;
import org.apache.http.annotation.Immutable;
import org.apache.http.p050io.EofSensor;
import org.apache.http.p050io.HttpTransportMetrics;
import org.apache.http.p050io.SessionInputBuffer;
import org.apache.http.util.CharArrayBuffer;

@Deprecated
@Immutable
/* loaded from: classes.dex */
public class LoggingSessionInputBuffer implements SessionInputBuffer, EofSensor {
    private final String charset;
    private final EofSensor eofSensor;

    /* renamed from: in */
    private final SessionInputBuffer f5033in;
    private final Wire wire;

    public LoggingSessionInputBuffer(SessionInputBuffer sessionInputBuffer, Wire wire) {
        this(sessionInputBuffer, wire, null);
    }

    public LoggingSessionInputBuffer(SessionInputBuffer sessionInputBuffer, Wire wire, String str) {
        this.f5033in = sessionInputBuffer;
        this.eofSensor = sessionInputBuffer instanceof EofSensor ? (EofSensor) sessionInputBuffer : null;
        this.wire = wire;
        this.charset = str != null ? str : Consts.ASCII.name();
    }

    @Override // org.apache.http.p050io.SessionInputBuffer
    public HttpTransportMetrics getMetrics() {
        return this.f5033in.getMetrics();
    }

    @Override // org.apache.http.p050io.SessionInputBuffer
    public boolean isDataAvailable(int i) throws IOException {
        return this.f5033in.isDataAvailable(i);
    }

    @Override // org.apache.http.p050io.EofSensor
    public boolean isEof() {
        EofSensor eofSensor = this.eofSensor;
        if (eofSensor != null) {
            return eofSensor.isEof();
        }
        return false;
    }

    @Override // org.apache.http.p050io.SessionInputBuffer
    public int read() throws IOException {
        int read = this.f5033in.read();
        if (this.wire.enabled() && read != -1) {
            this.wire.input(read);
        }
        return read;
    }

    @Override // org.apache.http.p050io.SessionInputBuffer
    public int read(byte[] bArr) throws IOException {
        int read = this.f5033in.read(bArr);
        if (this.wire.enabled() && read > 0) {
            this.wire.input(bArr, 0, read);
        }
        return read;
    }

    @Override // org.apache.http.p050io.SessionInputBuffer
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = this.f5033in.read(bArr, i, i2);
        if (this.wire.enabled() && read > 0) {
            this.wire.input(bArr, i, read);
        }
        return read;
    }

    @Override // org.apache.http.p050io.SessionInputBuffer
    public int readLine(CharArrayBuffer charArrayBuffer) throws IOException {
        int readLine = this.f5033in.readLine(charArrayBuffer);
        if (this.wire.enabled() && readLine >= 0) {
            this.wire.input((new String(charArrayBuffer.buffer(), charArrayBuffer.length() - readLine, readLine) + "\r\n").getBytes(this.charset));
        }
        return readLine;
    }

    @Override // org.apache.http.p050io.SessionInputBuffer
    public String readLine() throws IOException {
        String readLine = this.f5033in.readLine();
        if (this.wire.enabled() && readLine != null) {
            this.wire.input((readLine + "\r\n").getBytes(this.charset));
        }
        return readLine;
    }
}
