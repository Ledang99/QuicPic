package com.alensw.p022a;

import android.media.MediaScannerConnection;
import android.net.Uri;

/* renamed from: com.alensw.a.bb */
/* loaded from: classes.dex */
class C0614bb implements MediaScannerConnection.MediaScannerConnectionClient {

    /* renamed from: a */
    final /* synthetic */ C0613ba f2367a;

    C0614bb(C0613ba c0613ba) {
        this.f2367a = c0613ba;
    }

    @Override // android.media.MediaScannerConnection.MediaScannerConnectionClient
    public void onMediaScannerConnected() {
    }

    @Override // android.media.MediaScannerConnection.OnScanCompletedListener
    public void onScanCompleted(String str, Uri uri) {
        C0598am c0598am;
        try {
            int parseInt = Integer.parseInt(uri.getLastPathSegment());
            c0598am = this.f2367a.f2364p;
            c0598am.m2188a(str, parseInt);
        } catch (Throwable th) {
        }
    }
}
