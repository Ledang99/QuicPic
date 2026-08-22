package com.alensw.cloud.sync;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* loaded from: classes.dex */
public class SyncService extends Service {

    /* renamed from: a */
    private static final Object f3274a = new Object();

    /* renamed from: b */
    private static C0938f f3275b = null;

    /* renamed from: c */
    private C0933a f3276c;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return "android.content.SyncAdapter".equals(intent.getAction()) ? f3275b.getSyncAdapterBinder() : this.f3276c.getIBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        synchronized (f3274a) {
            if (f3275b == null) {
                f3275b = new C0938f(getApplicationContext(), true);
            }
        }
        this.f3276c = new C0933a(this);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
    }
}
