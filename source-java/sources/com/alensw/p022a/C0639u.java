package com.alensw.p022a;

import android.content.Context;
import android.os.Handler;
import android.os.Process;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p023b.p026c.C0660d;
import com.alensw.p023b.p034k.C0734e;
import com.alensw.p023b.p034k.C0736g;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* renamed from: com.alensw.a.u */
/* loaded from: classes.dex */
class C0639u extends C0736g {

    /* renamed from: a */
    final /* synthetic */ C0637s f2467a;

    /* renamed from: b */
    private Handler f2468b;

    /* renamed from: c */
    private C0633o f2469c;

    /* renamed from: d */
    private C0635q f2470d;

    /* renamed from: e */
    private HashMap f2471e;

    /* renamed from: f */
    private String[] f2472f;

    /* renamed from: g */
    private String[] f2473g;

    /* renamed from: h */
    private final ArrayList f2474h;

    private C0639u(C0637s c0637s) {
        this.f2467a = c0637s;
        this.f2474h = new ArrayList(C0637s.f2449a.length);
    }

    /* synthetic */ C0639u(C0637s c0637s, CallableC0638t callableC0638t) {
        this(c0637s);
    }

    @Override // com.alensw.p023b.p034k.C0736g
    /* renamed from: a */
    protected C0734e mo2465a(int i, int i2, int i3, Object... objArr) {
        C0597al c0597al;
        String str;
        C0640v c0640v = new C0640v(this, null);
        c0640v.f2475a = i;
        c0640v.f2476b = objArr[0];
        c0640v.f2477c = (Handler) objArr[1];
        c0640v.f2478d = this.f2467a.f2452b;
        if (c0640v.f2475a != 4) {
            c0640v.f2481h = new C0597al();
            c0597al = c0640v.f2481h;
            str = this.f2467a.f2462n;
            c0597al.m2178a(str);
        }
        return c0640v;
    }

    @Override // com.alensw.p023b.p034k.C0736g
    /* renamed from: a */
    public void mo2466a() {
        Context context;
        Context context2;
        Context context3;
        Process.setThreadPriority(3);
        context = this.f2467a.f2454f;
        this.f2469c = C0633o.m2410a(context);
        context2 = this.f2467a.f2454f;
        this.f2470d = C0635q.m2430a(context2);
        context3 = this.f2467a.f2454f;
        C0632n.m2405a(context3);
        for (String str : QuickApp.f2073p.m2325a()) {
            for (String str2 : C0637s.f2449a) {
                String str3 = str + File.separatorChar + str2;
                if (new File(str3).exists()) {
                    this.f2474h.add(str3);
                }
            }
        }
        C0623e c0623e = new C0623e(C0623e.f2410b + "/tencent/MicroMsg", 0);
        if (this.f2467a.m2448a(c0623e, false) > 0) {
            Iterator it = c0623e.f2424h.iterator();
            while (it.hasNext()) {
                C0623e c0623e2 = (C0623e) it.next();
                String name = c0623e2.getName();
                if (name.length() > 16 && C0742b.m2985a(name)) {
                    this.f2474h.add(c0623e2.getPath());
                    return;
                }
            }
        }
    }

    @Override // com.alensw.p023b.p034k.C0736g
    /* renamed from: a */
    protected void mo2467a(C0734e c0734e) {
        C0597al c0597al;
        C0597al c0597al2;
        C0640v c0640v = (C0640v) c0734e;
        c0640v.f2479e = true;
        c0597al = c0640v.f2481h;
        if (c0597al != null) {
            c0597al2 = c0640v.f2481h;
            c0597al2.m2179a(true);
        }
    }

    @Override // com.alensw.p023b.p034k.C0736g
    /* renamed from: b */
    protected int mo2468b(C0734e c0734e) {
        C0612b c0612b;
        C0612b c0612b2;
        C0660d c0660d;
        File file;
        File file2;
        String str;
        C0612b c0612b3;
        C0612b c0612b4;
        C0660d c0660d2;
        C0612b c0612b5;
        C0612b c0612b6;
        C0660d c0660d3;
        C0660d c0660d4;
        C0660d c0660d5;
        C0660d c0660d6;
        C0660d c0660d7;
        String str2;
        C0640v c0640v = (C0640v) c0734e;
        this.f2468b = c0640v.f2477c;
        switch (c0640v.f2475a) {
            case 1:
                this.f2468b.obtainMessage(10, c0640v.f2475a, 0).sendToTarget();
                c0640v.m2480b();
                boolean z = !c0640v.f2479e;
                if (!z) {
                    this.f2468b.removeMessages(12);
                }
                this.f2468b.obtainMessage(11, c0640v.f2475a, z ? 1 : 0).sendToTarget();
                break;
            case 2:
            case 3:
                boolean z2 = c0640v.f2475a == 3;
                if (z2) {
                    c0660d6 = this.f2467a.f2461m;
                    if (c0660d6.m2612b()) {
                        c0660d7 = this.f2467a.f2461m;
                        StringBuilder sb = new StringBuilder();
                        str2 = this.f2467a.f2460l;
                        c0660d7.m2616d(sb.append(str2).append(this.f2467a.f2453c).toString());
                    }
                }
                this.f2468b.obtainMessage(10, c0640v.f2475a, 0).sendToTarget();
                c0640v.m2483c();
                boolean z3 = !c0640v.f2479e;
                if (!z3) {
                    this.f2468b.removeMessages(12);
                }
                this.f2468b.obtainMessage(11, c0640v.f2475a, z3 ? 1 : 0).sendToTarget();
                if (z2 && z3) {
                    c0660d4 = this.f2467a.f2461m;
                    if (c0660d4.m2617e()) {
                        c0660d5 = this.f2467a.f2461m;
                        c0660d5.m2620h();
                        break;
                    }
                }
                break;
            case 4:
                String str3 = (String) c0640v.f2476b;
                if (str3 != null) {
                    c0612b5 = this.f2467a.f2456h;
                    c0612b5.m2614c(str3);
                    c0612b6 = this.f2467a.f2457i;
                    c0612b6.m2614c(str3);
                    c0660d3 = this.f2467a.f2461m;
                    c0660d3.m2614c(str3);
                } else {
                    c0612b = this.f2467a.f2456h;
                    c0612b.m2615d();
                    c0612b2 = this.f2467a.f2457i;
                    c0612b2.m2615d();
                    c0660d = this.f2467a.f2461m;
                    c0660d.m2615d();
                    file = this.f2467a.f2458j;
                    C0742b.m2999c(file);
                    file2 = this.f2467a.f2459k;
                    C0742b.m2999c(file2);
                    while (r1 <= 3) {
                        StringBuilder sb2 = new StringBuilder();
                        str = this.f2467a.f2460l;
                        C0742b.m3010i(sb2.append(str).append(r1).toString());
                        r1++;
                    }
                }
                c0612b3 = this.f2467a.f2456h;
                c0612b3.m2620h();
                c0612b4 = this.f2467a.f2457i;
                c0612b4.m2620h();
                c0660d2 = this.f2467a.f2461m;
                c0660d2.m2620h();
                break;
        }
        this.f2468b = null;
        return 0;
    }
}
