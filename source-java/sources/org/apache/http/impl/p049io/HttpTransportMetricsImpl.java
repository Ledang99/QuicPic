package org.apache.http.impl.p049io;

import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.p050io.HttpTransportMetrics;

@NotThreadSafe
/* loaded from: classes.dex */
public class HttpTransportMetricsImpl implements HttpTransportMetrics {
    private long bytesTransferred = 0;

    @Override // org.apache.http.p050io.HttpTransportMetrics
    public long getBytesTransferred() {
        return this.bytesTransferred;
    }

    public void incrementBytesTransferred(long j) {
        this.bytesTransferred += j;
    }

    @Override // org.apache.http.p050io.HttpTransportMetrics
    public void reset() {
        this.bytesTransferred = 0L;
    }

    public void setBytesTransferred(long j) {
        this.bytesTransferred = j;
    }
}
