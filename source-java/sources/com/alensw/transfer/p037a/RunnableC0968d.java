package com.alensw.transfer.p037a;

import android.net.wifi.WifiManager;
import android.util.Log;

/* renamed from: com.alensw.transfer.a.d */
/* loaded from: classes.dex */
class RunnableC0968d implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0965a f3421a;

    RunnableC0968d(C0965a c0965a) {
        this.f3421a = c0965a;
    }

    @Override // java.lang.Runnable
    public void run() {
        WifiManager.MulticastLock multicastLock;
        WifiManager.MulticastLock multicastLock2;
        WifiManager.MulticastLock multicastLock3;
        this.f3421a.m3556c();
        Log.d("DiscoveryManager", "close");
        synchronized (this) {
            multicastLock = this.f3421a.f3417u;
            if (multicastLock != null) {
                multicastLock2 = this.f3421a.f3417u;
                if (multicastLock2.isHeld()) {
                    multicastLock3 = this.f3421a.f3417u;
                    multicastLock3.release();
                }
            }
        }
    }
}
