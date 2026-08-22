package com.alensw.p022a;

import android.content.Context;
import android.media.MediaScannerConnection;
import android.net.Uri;
import java.util.concurrent.ConcurrentLinkedQueue;

/* renamed from: com.alensw.a.an */
/* loaded from: classes.dex */
public class C0599an implements MediaScannerConnection.MediaScannerConnectionClient {

    /* renamed from: a */
    private final MediaScannerConnection f2285a;

    /* renamed from: b */
    private final MediaScannerConnection.MediaScannerConnectionClient f2286b;

    /* renamed from: c */
    private final ConcurrentLinkedQueue f2287c = new ConcurrentLinkedQueue();

    public C0599an(Context context, MediaScannerConnection.MediaScannerConnectionClient mediaScannerConnectionClient) {
        this.f2286b = mediaScannerConnectionClient;
        this.f2285a = new MediaScannerConnection(context, this);
    }

    /* renamed from: a */
    private void m2191a() {
        String str = (String) this.f2287c.peek();
        synchronized (this.f2285a) {
            if (str != null) {
                this.f2285a.scanFile(str, null);
            } else {
                this.f2285a.disconnect();
            }
        }
    }

    /* renamed from: a */
    public void m2192a(String str) {
        if (str == null) {
            return;
        }
        this.f2287c.remove(str);
    }

    /* renamed from: b */
    public void m2193b(String str) {
        if (str == null) {
            return;
        }
        if (!this.f2287c.contains(str)) {
            this.f2287c.add(str);
        }
        synchronized (this.f2285a) {
            if (!this.f2285a.isConnected()) {
                this.f2285a.connect();
            }
        }
    }

    @Override // android.media.MediaScannerConnection.MediaScannerConnectionClient
    public void onMediaScannerConnected() {
        if (this.f2286b != null) {
            this.f2286b.onMediaScannerConnected();
        }
        m2191a();
    }

    @Override // android.media.MediaScannerConnection.OnScanCompletedListener
    public void onScanCompleted(String str, Uri uri) {
        this.f2287c.remove(str);
        m2191a();
        if (this.f2286b != null) {
            this.f2286b.onScanCompleted(str, uri);
        }
    }
}
