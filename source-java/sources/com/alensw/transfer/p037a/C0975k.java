package com.alensw.transfer.p037a;

import android.util.Log;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p029f.C0691d;
import com.alensw.p023b.p034k.InterfaceCallableC0740k;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.http.client.methods.HttpPost;

/* renamed from: com.alensw.transfer.a.k */
/* loaded from: classes.dex */
class C0975k implements InterfaceCallableC0740k {

    /* renamed from: a */
    final /* synthetic */ C0965a f3437a;

    /* renamed from: b */
    private int f3438b;

    /* renamed from: c */
    private volatile boolean f3439c;

    /* renamed from: d */
    private InterfaceC0679f f3440d = new C0976l(this);

    public C0975k(C0965a c0965a, int i) {
        this.f3437a = c0965a;
        this.f3438b = i;
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: a */
    public void mo2094a() {
        this.f3439c = true;
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: b */
    public void mo2095b() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x011e, code lost:
    
        if (r0.get() == 2) goto L40;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.net.HttpURLConnection] */
    @Override // java.util.concurrent.Callable
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Void call() {
        String str;
        C0984t c0984t;
        String hostAddress;
        HttpURLConnection httpURLConnection;
        String m3551b;
        AtomicInteger atomicInteger;
        ConcurrentLinkedQueue concurrentLinkedQueue;
        C0982r c0982r;
        AtomicInteger atomicInteger2;
        ConcurrentHashMap concurrentHashMap;
        C0984t c0984t2;
        synchronized (this) {
            str = this.f3437a.f3409m;
            c0984t = this.f3437a.f3407k;
            hostAddress = c0984t.m3614b().getHostAddress();
        }
        StringBuilder sb = new StringBuilder("/id/");
        ?? append = sb.append(str).append("?ip=").append(hostAddress).append("&method=");
        append.append(this.f3438b == 0 ? "join" : "leave");
        try {
            try {
                String sb2 = sb.toString();
                httpURLConnection = C0675b.m2661a("http://hub.q-supreme.com" + sb2, HttpPost.METHOD_NAME);
                try {
                    httpURLConnection.setConnectTimeout(5000);
                    m3551b = C0965a.m3551b("POST " + sb2, C0691d.m2728b("`tpu_becqe__cptsg`tcscafabfucpdq"));
                    httpURLConnection.setRequestProperty("X-PeerHub-ReqCode", m3551b);
                    String m2660a = C0675b.m2660a(httpURLConnection, this.f3440d);
                    if (this.f3438b == 0 && m2660a.startsWith("hub:")) {
                        String[] split = m2660a.substring(4).split(",");
                        Log.d("DiscoveryManager", "peer hub list: " + split.length);
                        for (String str2 : split) {
                            try {
                                if (str2.length() > 0) {
                                    concurrentHashMap = this.f3437a.f3398b;
                                    InetAddress byName = InetAddress.getByName(str2);
                                    c0984t2 = C0965a.f3397a;
                                    concurrentHashMap.putIfAbsent(byName, c0984t2);
                                }
                            } catch (Throwable th) {
                                Log.e("DiscoveryManager", "invalid ip address: " + str2);
                            }
                        }
                        if (split.length > 0) {
                            atomicInteger = this.f3437a.f3399c;
                            if (atomicInteger.get() != 1) {
                                atomicInteger2 = this.f3437a.f3399c;
                            }
                            RunnableC0977m runnableC0977m = new RunnableC0977m(this);
                            long j = 0;
                            for (int i = 0; i < 3; i++) {
                                concurrentLinkedQueue = this.f3437a.f3404h;
                                c0982r = this.f3437a.f3402f;
                                concurrentLinkedQueue.offer(c0982r.schedule(runnableC0977m, j, TimeUnit.MILLISECONDS));
                                j += 10;
                            }
                        }
                    }
                    C0675b.m2670a(httpURLConnection);
                } catch (Throwable th2) {
                    th = th2;
                    Log.e("DiscoveryManager", "request peer hub: ", th);
                    C0675b.m2670a(httpURLConnection);
                    return null;
                }
            } catch (Throwable th3) {
                th = th3;
                C0675b.m2670a((HttpURLConnection) append);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            append = 0;
            C0675b.m2670a((HttpURLConnection) append);
            throw th;
        }
        return null;
    }
}
