package com.alensw.transfer.p037a;

import android.util.Log;
import com.alensw.p023b.p034k.InterfaceCallableC0740k;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;

/* renamed from: com.alensw.transfer.a.n */
/* loaded from: classes.dex */
class C0978n implements InterfaceCallableC0740k {

    /* renamed from: a */
    final /* synthetic */ C0965a f3443a;

    /* renamed from: b */
    private volatile boolean f3444b;

    /* renamed from: c */
    private final byte[] f3445c;

    /* renamed from: d */
    private final DatagramPacket f3446d;

    private C0978n(C0965a c0965a) {
        this.f3443a = c0965a;
        this.f3445c = new byte[1024];
        this.f3446d = new DatagramPacket(this.f3445c, this.f3445c.length);
    }

    /* synthetic */ C0978n(C0965a c0965a, RunnableC0966b runnableC0966b) {
        this(c0965a);
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: a */
    public void mo2094a() {
        this.f3444b = true;
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: b */
    public void mo2095b() {
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public Void call() {
        C0980p c0980p;
        boolean z;
        C0981q c0981q;
        C0981q c0981q2;
        Log.d("DiscoveryManager", "start receive");
        while (!this.f3444b) {
            try {
                c0980p = this.f3443a.f3413q;
                c0980p.receive(this.f3446d);
                DatagramPacket datagramPacket = this.f3446d;
                z = this.f3443a.f3406j;
                C0979o m3591a = C0979o.m3591a(datagramPacket, z);
                InetAddress m3603g = m3591a.m3603g();
                if (m3603g == null) {
                    Log.w("DiscoveryManager", "invalid packet address: " + m3591a);
                } else {
                    c0981q = this.f3443a.f3410n;
                    if (c0981q.m3608a(m3603g)) {
                        Log.w("DiscoveryManager", "packet from self: " + m3591a);
                    } else {
                        c0981q2 = this.f3443a.f3410n;
                        if (c0981q2.m3609b(m3603g)) {
                            this.f3443a.m3583a(m3591a);
                        } else {
                            Log.w("DiscoveryManager", "packet from other subnet: " + m3591a);
                        }
                    }
                }
            } catch (SocketTimeoutException e) {
            } catch (IOException e2) {
                Log.w("DiscoveryManager", "receive fail: ", e2);
            } catch (Throwable th) {
                Log.e("DiscoveryManager", "receive error: ", th);
            }
        }
        Log.d("DiscoveryManager", "stop receive");
        return null;
    }
}
