package com.alensw.transfer;

import android.annotation.TargetApi;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import android.widget.Toast;
import com.alensw.jni.JniUtils;
import com.alensw.p022a.C0623e;
import com.alensw.p023b.p026c.C0658b;
import com.alensw.p023b.p034k.C0730a;
import com.alensw.transfer.p037a.C0984t;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;

@TargetApi(9)
/* loaded from: classes.dex */
public class TransferService extends Service {

    /* renamed from: a */
    private static final ConcurrentLinkedQueue f3381a = new ConcurrentLinkedQueue();

    /* renamed from: f */
    private C1034n f3386f;

    /* renamed from: g */
    private File f3387g;

    /* renamed from: b */
    private final ConcurrentHashMap f3382b = new ConcurrentHashMap();

    /* renamed from: c */
    private final IBinder f3383c = new BinderC1022bk(this);

    /* renamed from: d */
    private final Handler f3384d = new Handler(Looper.getMainLooper());

    /* renamed from: e */
    private final Object f3385e = new Object();

    /* renamed from: h */
    private final C0730a f3388h = new C0730a(4, 4, Integer.MAX_VALUE, 5);

    /* renamed from: i */
    private final C0730a f3389i = C0730a.m2934a(1, 5);

    /* renamed from: j */
    private final AtomicInteger f3390j = new AtomicInteger(0);

    /* renamed from: k */
    private final Object f3391k = new Object();

    /* renamed from: l */
    private final Runnable f3392l = new RunnableC1012ba(this);

    /* renamed from: m */
    private final ArrayList f3393m = new ArrayList(2);

    /* renamed from: n */
    private Runnable f3394n = new RunnableC1013bb(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public String m3491a(C0984t c0984t) {
        return "http://" + c0984t.m3614b().getHostAddress() + ":" + Integer.toString(c0984t.m3615c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public void m3499g() {
        synchronized (this.f3393m) {
            this.f3384d.removeCallbacks(this.f3394n);
            this.f3384d.postDelayed(this.f3394n, 30L);
        }
    }

    /* renamed from: h */
    private void m3500h() {
        this.f3384d.post(new RunnableC1014bc(this));
    }

    /* renamed from: i */
    private void m3501i() {
        synchronized (this.f3385e) {
            if (this.f3386f == null) {
                this.f3386f = new C1034n(this, 0);
            }
            if (!this.f3386f.m2711f()) {
                try {
                    this.f3386f.m2708c();
                    Log.d("TransferService", "start ShareServer");
                } catch (Exception e) {
                    Log.e("TransferService", "start ShareServer: ", e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public void m3502j() {
        synchronized (this.f3385e) {
            if (this.f3386f != null) {
                if (this.f3386f.m2711f()) {
                    this.f3386f.m2709d();
                }
                this.f3386f = null;
                Log.d("TransferService", "stop ShareServer");
            }
        }
    }

    /* renamed from: a */
    public C1024d m3503a(Long l) {
        return (C1024d) this.f3382b.get(l);
    }

    /* renamed from: a */
    public C1024d m3504a(String str) {
        for (C1024d c1024d : this.f3382b.values()) {
            if (c1024d.m3680c().equals(str)) {
                return c1024d;
            }
        }
        return null;
    }

    /* renamed from: a */
    public File m3505a() {
        return this.f3387g;
    }

    /* renamed from: a */
    public void m3506a(Intent intent) {
        String m3704b;
        m3513c();
        synchronized (this.f3385e) {
            m3704b = this.f3386f.m3704b(getContentResolver(), intent.getData());
        }
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setDataAndType(Uri.parse(m3704b), intent.getType());
        intent2.setFlags(268435456);
        startActivity(intent2);
        m3515d();
    }

    /* renamed from: a */
    public void m3507a(C0984t c0984t, C0984t c0984t2, List list) {
        new C1015bd(this, c0984t2, c0984t, list, getContentResolver()).start();
    }

    /* renamed from: a */
    public void m3508a(InterfaceC1021bj interfaceC1021bj) {
        synchronized (this.f3393m) {
            if (interfaceC1021bj != null) {
                if (!this.f3393m.contains(interfaceC1021bj)) {
                    this.f3393m.add(interfaceC1021bj);
                    m3499g();
                }
            }
        }
    }

    /* renamed from: a */
    public void m3509a(C1024d c1024d) {
        long m3687i = c1024d.m3687i();
        long fuGetAvailBytes = JniUtils.fuGetAvailBytes(C0623e.f2410b);
        Context applicationContext = getApplicationContext();
        if (fuGetAvailBytes < m3687i + 4194304) {
            Toast.makeText(applicationContext, "No enough storage to save files!", 0).show();
            Log.v("TransferService", "no enough storage, give up receive");
            return;
        }
        m3513c();
        c1024d.m3670a(0);
        this.f3389i.submit(new RunnableC1019bh(this, c1024d));
        f3381a.add(c1024d);
        m3499g();
        m3500h();
    }

    /* renamed from: b */
    public int m3510b() {
        int e;
        synchronized (this.f3385e) {
            e = (this.f3386f == null || !this.f3386f.m2711f()) ? 0 : this.f3386f.m2710e();
        }
        return e;
    }

    /* renamed from: b */
    public void m3511b(InterfaceC1021bj interfaceC1021bj) {
        synchronized (this.f3393m) {
            this.f3393m.remove(interfaceC1021bj);
        }
    }

    /* renamed from: b */
    public void m3512b(C1024d c1024d) {
        c1024d.m3670a(2);
        c1024d.m3691m();
        this.f3382b.remove(Long.valueOf(c1024d.m3682d()));
        m3499g();
    }

    /* renamed from: c */
    public void m3513c() {
        if (this.f3390j.getAndIncrement() == 0) {
            synchronized (this.f3391k) {
                this.f3384d.removeCallbacks(this.f3392l);
                m3501i();
            }
        }
        Log.d("TransferService", "TransferService acquire: " + this.f3390j.get());
    }

    /* renamed from: c */
    public void m3514c(C1024d c1024d) {
        c1024d.m3670a(3);
        c1024d.m3691m();
        this.f3382b.remove(Long.valueOf(c1024d.m3682d()));
        m3499g();
    }

    /* renamed from: d */
    public void m3515d() {
        if (this.f3390j.decrementAndGet() == 0) {
            synchronized (this.f3391k) {
                this.f3384d.postDelayed(this.f3392l, 30000L);
                Log.d("TransferService", "delay stop service");
            }
        }
        Log.d("TransferService", "TransferService release: " + this.f3390j.get());
    }

    /* renamed from: e */
    public int m3516e() {
        int i = 0;
        Iterator it = f3381a.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            int m3694p = ((C1024d) it.next()).m3694p();
            if (m3694p != 2 && m3694p != 3) {
                i2++;
            }
            i = i2;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f3383c;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f3387g = new File(C0658b.m2562a(), "QP Transfer");
        if (!this.f3387g.exists()) {
            this.f3387g.mkdirs();
        }
        Log.v("TransferService", "TransferService create");
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        Log.v("TransferService", "TransferService destroy");
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        if (!"android.intent.action.VIEW".equals(intent.getAction())) {
            return 2;
        }
        m3506a(intent);
        return 2;
    }
}
