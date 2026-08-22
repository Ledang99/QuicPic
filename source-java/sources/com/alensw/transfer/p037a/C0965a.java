package com.alensw.transfer.p037a;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.util.Log;
import com.alensw.p023b.p034k.C0730a;
import com.alensw.p023b.p034k.C0733d;
import com.alensw.p023b.p035l.C0742b;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Random;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* renamed from: com.alensw.transfer.a.a */
/* loaded from: classes.dex */
public class C0965a {

    /* renamed from: a */
    private static final C0984t f3397a = new C0984t("", null, 0);

    /* renamed from: b */
    private final ConcurrentHashMap f3398b = new ConcurrentHashMap();

    /* renamed from: c */
    private final AtomicInteger f3399c = new AtomicInteger(0);

    /* renamed from: d */
    private final LinkedList f3400d = new LinkedList();

    /* renamed from: e */
    private final Random f3401e = new Random();

    /* renamed from: f */
    private final C0982r f3402f = new C0982r(1);

    /* renamed from: g */
    private final C0730a f3403g = C0730a.m2934a(1, 0);

    /* renamed from: h */
    private final ConcurrentLinkedQueue f3404h = new ConcurrentLinkedQueue();

    /* renamed from: i */
    private final C0730a f3405i = C0730a.m2934a(1, 0);

    /* renamed from: j */
    private boolean f3406j;

    /* renamed from: k */
    private C0984t f3407k;

    /* renamed from: l */
    private String f3408l;

    /* renamed from: m */
    private String f3409m;

    /* renamed from: n */
    private C0981q f3410n;

    /* renamed from: o */
    private InetAddress f3411o;

    /* renamed from: p */
    private InetAddress f3412p;

    /* renamed from: q */
    private C0980p f3413q;

    /* renamed from: r */
    private C0733d f3414r;

    /* renamed from: s */
    private Future f3415s;

    /* renamed from: t */
    private InterfaceC0974j f3416t;

    /* renamed from: u */
    private WifiManager.MulticastLock f3417u;

    public C0965a() {
        try {
            this.f3411o = InetAddress.getByName("192.168.43.1");
            this.f3412p = InetAddress.getByName("172.20.10.1");
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public long m3533a(long j, boolean z) {
        RunnableC0969e runnableC0969e = new RunnableC0969e(this, m3537a(1, 0), z);
        for (int i = 0; i < 3; i++) {
            this.f3404h.offer(this.f3402f.schedule(runnableC0969e, j, TimeUnit.MILLISECONDS));
            j += 250;
        }
        return j;
    }

    /* renamed from: a */
    private static String m3535a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.SHA_1);
            messageDigest.update(str.getBytes("UTF-8"));
            return C0742b.m2976a(messageDigest.digest());
        } catch (Exception e) {
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public ByteBuffer m3537a(int i, int i2) {
        C0979o c0979o = new C0979o();
        c0979o.m3595a(this.f3407k.m3611a());
        c0979o.m3594a(this.f3407k.m3615c());
        c0979o.m3597b(i2);
        c0979o.m3593a((byte) i);
        c0979o.m3596a(this.f3407k.m3614b());
        return c0979o.m3592a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3539a(long j) {
        RunnableC0970f runnableC0970f = new RunnableC0970f(this, m3537a(0, 20000));
        long j2 = j;
        for (int i = 0; i < 3; i++) {
            this.f3404h.offer(this.f3402f.schedule(runnableC0970f, j2, TimeUnit.MILLISECONDS));
            j2 += 250;
        }
        this.f3404h.offer(this.f3402f.scheduleAtFixedRate(runnableC0970f, j2, 5000L, TimeUnit.MILLISECONDS));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3545a(InetAddress inetAddress, long j) {
        RunnableC0971g runnableC0971g = new RunnableC0971g(this, m3537a(0, 20000), inetAddress);
        for (int i = 0; i < 2; i++) {
            this.f3404h.offer(this.f3402f.schedule(runnableC0971g, j, TimeUnit.MILLISECONDS));
            j += 250;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3546a(ByteBuffer byteBuffer, boolean z) {
        InetAddress m3604a;
        synchronized (this) {
            m3604a = this.f3413q.m3604a();
        }
        if (m3604a != null) {
            m3549a(byteBuffer, m3604a);
        }
        if (!z) {
            Iterator it = this.f3398b.keySet().iterator();
            while (it.hasNext()) {
                m3549a(byteBuffer, (InetAddress) it.next());
            }
            return;
        }
        if (this.f3411o != null && !this.f3410n.m3608a(this.f3411o) && this.f3410n.m3609b(this.f3411o)) {
            m3549a(byteBuffer, this.f3411o);
        }
        if (this.f3412p == null || this.f3410n.m3608a(this.f3412p) || !this.f3410n.m3609b(this.f3412p)) {
            return;
        }
        m3549a(byteBuffer, this.f3412p);
    }

    /* renamed from: a */
    private boolean m3548a(DatagramPacket datagramPacket) {
        try {
            this.f3413q.send(datagramPacket);
            return true;
        } catch (IOException e) {
            Log.e("DiscoveryManager", "send: ", e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m3549a(ByteBuffer byteBuffer, InetAddress inetAddress) {
        DatagramPacket datagramPacket = new DatagramPacket(byteBuffer.array(), byteBuffer.position());
        datagramPacket.setAddress(inetAddress);
        datagramPacket.setPort(15353);
        return m3548a(datagramPacket);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static String m3551b(String str, String str2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes("UTF-8"), "HmacSHA1");
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(secretKeySpec);
            return C0742b.m2976a(mac.doFinal(str.getBytes("UTF-8")));
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3553b(long j) {
        RunnableC0972h runnableC0972h = new RunnableC0972h(this, m3537a(0, 0));
        for (int i = 0; i < 2; i++) {
            this.f3404h.offer(this.f3402f.schedule(runnableC0972h, j, TimeUnit.MILLISECONDS));
            j += 250;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3555b(C0979o c0979o) {
        InetAddress m3603g = c0979o.m3603g();
        if (c0979o.m3599c()) {
            C0984t c0984t = (C0984t) this.f3398b.remove(m3603g);
            if (c0984t != null) {
                InterfaceC0974j interfaceC0974j = this.f3416t;
                if (interfaceC0974j != null) {
                    interfaceC0974j.mo3587c(c0984t);
                }
                Log.d("DiscoveryManager", "peer level: " + c0984t);
                return;
            }
            return;
        }
        C0984t c0984t2 = (C0984t) this.f3398b.get(m3603g);
        if (c0984t2 == null || c0984t2 == f3397a) {
            c0984t2 = new C0984t(c0979o.m3602f(), c0979o.m3603g(), c0979o.m3600d());
            this.f3398b.put(m3603g, c0984t2);
            InterfaceC0974j interfaceC0974j2 = this.f3416t;
            if (interfaceC0974j2 != null) {
                interfaceC0974j2.mo3586b(c0984t2);
            }
            Log.d("DiscoveryManager", "peer join: " + c0984t2);
        } else {
            c0984t2.m3613a(c0979o.m3602f());
            c0984t2.m3612a(c0979o.m3600d());
        }
        c0984t2.f3459a = System.currentTimeMillis() + c0979o.m3601e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m3556c() {
        m3566h();
        m3559d();
        m3563f();
        this.f3398b.clear();
        this.f3399c.set(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m3559d() {
        while (true) {
            try {
                ScheduledFuture scheduledFuture = (ScheduledFuture) this.f3404h.poll();
                if (scheduledFuture == null) {
                    this.f3402f.purge();
                    return;
                }
                scheduledFuture.cancel(false);
            } catch (Throwable th) {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public synchronized void m3560e() {
        if (this.f3413q == null) {
            try {
                this.f3406j = this.f3407k.m3614b() instanceof Inet4Address;
                this.f3413q = new C0980p(InetAddress.getByName(this.f3406j ? "224.0.0.251" : "FF02:0:0:0:0:0:0:FB"), this.f3407k.m3614b(), 15353);
            } catch (IOException e) {
                Log.e("DiscoveryManager", "create socket: ", e);
            }
        }
    }

    /* renamed from: f */
    private synchronized void m3563f() {
        if (this.f3413q != null) {
            this.f3413q.close();
            this.f3413q = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public synchronized void m3564g() {
        if (this.f3414r != null) {
            this.f3414r.cancel(false);
        }
        this.f3414r = this.f3403g.m2936a(new C0978n(this, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public synchronized void m3566h() {
        if (this.f3414r != null) {
            this.f3414r.cancel(false);
            this.f3414r = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public int m3568i() {
        int intValue;
        synchronized (this.f3400d) {
            if (this.f3400d.isEmpty()) {
                for (int i = 1; i <= 256; i++) {
                    this.f3400d.add(Integer.valueOf(i));
                }
                Collections.shuffle(this.f3400d, this.f3401e);
            }
            intValue = ((Integer) this.f3400d.removeFirst()).intValue();
        }
        return intValue;
    }

    /* renamed from: a */
    public void m3581a() {
        if (this.f3399c.get() != 0) {
            this.f3402f.submit(new RunnableC0967c(this));
        }
        if (this.f3415s != null) {
            this.f3415s.cancel(false);
        }
        this.f3415s = this.f3402f.schedule(new RunnableC0968d(this), 1000L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: a */
    public void m3582a(Context context, C0984t c0984t, String str, InterfaceC0974j interfaceC0974j) {
        synchronized (this) {
            this.f3416t = interfaceC0974j;
            this.f3407k = c0984t;
            this.f3408l = c0984t.m3611a();
            this.f3410n = new C0981q(c0984t.m3614b());
            this.f3409m = m3535a(str);
            synchronized (this.f3400d) {
                Integer valueOf = Integer.valueOf(C0981q.m3605a(this.f3410n.m3607a()));
                this.f3400d.remove(valueOf);
                this.f3400d.addFirst(valueOf);
            }
            if (this.f3417u == null) {
                try {
                    this.f3417u = ((WifiManager) context.getSystemService("wifi")).createMulticastLock("quickpic.discovery");
                } catch (Exception e) {
                    Log.e("DiscoveryManager", "create multicast lock: ", e);
                }
            }
            if (this.f3417u != null && !this.f3417u.isHeld()) {
                this.f3417u.acquire();
            }
        }
        if (this.f3415s != null) {
            this.f3415s.cancel(false);
            this.f3415s = null;
        }
        this.f3402f.submit(new RunnableC0966b(this, c0984t));
    }

    /* renamed from: a */
    public void m3583a(C0979o c0979o) {
        this.f3402f.submit(new RunnableC0973i(this, c0979o));
    }
}
