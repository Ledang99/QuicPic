package com.p045c.p046a;

import android.content.Context;
import com.p045c.p046a.p047a.C1400b;
import java.util.Map;
import p012b.p013a.C0323e;
import p012b.p013a.C0377g;
import p012b.p013a.C0382ge;
import p012b.p013a.C0443il;
import p012b.p013a.C0447ip;
import p012b.p013a.C0448iq;
import p012b.p013a.C0456iy;
import p012b.p013a.C0460jb;
import p012b.p013a.InterfaceC0454iw;

/* renamed from: com.c.a.n */
/* loaded from: classes.dex */
public class C1414n implements InterfaceC0454iw {

    /* renamed from: c */
    private InterfaceC1413m f4989c;

    /* renamed from: g */
    private C0448iq f4993g;

    /* renamed from: h */
    private C0443il f4994h;

    /* renamed from: a */
    private final C1400b f4987a = new C1400b();

    /* renamed from: b */
    private Context f4988b = null;

    /* renamed from: d */
    private C0447ip f4990d = new C0447ip();

    /* renamed from: e */
    private C0323e f4991e = new C0323e();

    /* renamed from: f */
    private C0460jb f4992f = new C0460jb();

    /* renamed from: i */
    private boolean f4995i = false;

    C1414n() {
        this.f4990d.m1483a(this);
    }

    /* renamed from: c */
    private void m4592c(Context context) {
        if (this.f4995i) {
            return;
        }
        this.f4988b = context.getApplicationContext();
        this.f4993g = new C0448iq(this.f4988b);
        this.f4994h = C0443il.m1479a(this.f4988b);
        this.f4995i = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m4593d(Context context) {
        this.f4992f.m1538c(context);
        if (this.f4989c != null) {
            this.f4989c.m4588a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m4594e(Context context) {
        this.f4992f.m1539d(context);
        this.f4991e.m1029a(context);
        if (this.f4989c != null) {
            this.f4989c.m4589b();
        }
        this.f4994h.mo1466b();
    }

    /* renamed from: a */
    void m4595a(Context context) {
        if (context == null) {
            C0382ge.m1281b("MobclickAgent", "unexpected null context in onResume");
            return;
        }
        if (C1398a.f4960h) {
            this.f4991e.m1030a(context.getClass().getName());
        }
        try {
            if (!this.f4995i) {
                m4592c(context);
            }
            C1418r.m4603a(new C1415o(this, context));
        } catch (Exception e) {
            C0382ge.m1282b("MobclickAgent", "Exception occurred in Mobclick.onResume(). ", e);
        }
    }

    /* renamed from: a */
    public void m4596a(Context context, String str, String str2, long j, int i) {
        try {
            if (!this.f4995i) {
                m4592c(context);
            }
            this.f4993g.m1487a(str, str2, j, i);
        } catch (Exception e) {
            C0382ge.m1282b("MobclickAgent", "", e);
        }
    }

    /* renamed from: a */
    void m4597a(Context context, String str, Map map, long j) {
        try {
            if (!this.f4995i) {
                m4592c(context);
            }
            this.f4993g.m1488a(str, map, j);
        } catch (Exception e) {
            C0382ge.m1282b("MobclickAgent", "", e);
        }
    }

    /* renamed from: a */
    void m4598a(String str) {
        if (C1398a.f4960h) {
            return;
        }
        try {
            this.f4991e.m1030a(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // p012b.p013a.InterfaceC0454iw
    /* renamed from: a */
    public void mo1508a(Throwable th) {
        try {
            this.f4991e.m1028a();
            if (this.f4988b != null) {
                if (th != null && this.f4994h != null) {
                    this.f4994h.mo1468b(new C0377g(th));
                }
                m4594e(this.f4988b);
                C0456iy.m1509a(this.f4988b).edit().commit();
            }
            C1418r.m4602a();
        } catch (Exception e) {
            C0382ge.m1280a("MobclickAgent", "Exception in onAppCrash", e);
        }
    }

    /* renamed from: b */
    void m4599b(Context context) {
        if (context == null) {
            C0382ge.m1281b("MobclickAgent", "unexpected null context in onPause");
            return;
        }
        if (C1398a.f4960h) {
            this.f4991e.m1031b(context.getClass().getName());
        }
        try {
            if (!this.f4995i) {
                m4592c(context);
            }
            C1418r.m4603a(new C1416p(this, context));
        } catch (Exception e) {
            C0382ge.m1282b("MobclickAgent", "Exception occurred in Mobclick.onRause(). ", e);
        }
    }

    /* renamed from: b */
    void m4600b(String str) {
        if (C1398a.f4960h) {
            return;
        }
        try {
            this.f4991e.m1031b(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
