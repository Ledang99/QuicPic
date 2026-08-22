package com.alensw.p038ui.p041c;

import android.net.Uri;
import android.os.Build;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p022a.C0600ao;
import com.alensw.p022a.C0604as;
import com.alensw.p022a.C0623e;
import com.alensw.p023b.p031h.C0714j;
import com.alensw.p038ui.view.InterfaceC1372q;
import com.alensw.p038ui.view.PictureView;
import org.apache.http.protocol.HttpRequestExecutor;

/* renamed from: com.alensw.ui.c.eb */
/* loaded from: classes.dex */
class C1269eb implements InterfaceC1372q {

    /* renamed from: a */
    final /* synthetic */ C1256dp f4213a;

    C1269eb(C1256dp c1256dp) {
        this.f4213a = c1256dp;
    }

    /* renamed from: c */
    private void m4140c(float f, float f2) {
        PictureView pictureView;
        pictureView = this.f4213a.f4176f;
        mo3959a(pictureView.m4435a(f, f2), true);
    }

    @Override // com.alensw.p038ui.view.InterfaceC1372q
    /* renamed from: a */
    public C0714j mo3957a(int i, boolean z) {
        C0623e c0623e;
        C0623e c0623e2;
        boolean z2;
        C0623e c0623e3;
        C0714j c0714j;
        C0623e c0623e4;
        C0714j m4091a;
        C0714j c0714j2;
        C0714j c0714j3;
        C0714j c0714j4;
        C0714j c0714j5;
        C0714j c0714j6;
        c0623e = this.f4213a.f4183m;
        if (c0623e == null) {
            return null;
        }
        this.f4213a.f4189s = i > 0;
        C1256dp c1256dp = this.f4213a;
        c0623e2 = this.f4213a.f4183m;
        int i2 = c0623e2.f2419c;
        z2 = this.f4213a.f4189s;
        int m4131a = c1256dp.m4131a(i2, z2);
        c0623e3 = this.f4213a.f4183m;
        Uri m2379d = c0623e3.m2379d(m4131a);
        c0714j = this.f4213a.f4187q;
        if (c0714j != null) {
            c0714j4 = this.f4213a.f4187q;
            if (c0714j4.m2863a(m2379d)) {
                c0714j6 = this.f4213a.f4187q;
                return c0714j6.mo2865l();
            }
            c0714j5 = this.f4213a.f4187q;
            c0714j5.m2866m();
            this.f4213a.f4187q = null;
        }
        C1256dp c1256dp2 = this.f4213a;
        C1256dp c1256dp3 = this.f4213a;
        c0623e4 = this.f4213a.f4183m;
        m4091a = c1256dp3.m4091a(m2379d, c0623e4.m2383f(m4131a), z);
        c1256dp2.f4187q = m4091a;
        c0714j2 = this.f4213a.f4187q;
        if (c0714j2 == null) {
            return null;
        }
        c0714j3 = this.f4213a.f4187q;
        return c0714j3.mo2865l();
    }

    @Override // com.alensw.p038ui.view.InterfaceC1372q
    /* renamed from: a */
    public void mo3958a(float f, float f2) {
        boolean z;
        if (this.f4213a.f4082C.f3738Q && Build.VERSION.SDK_INT < 19 && System.currentTimeMillis() < this.f4213a.f4082C.f3740S + 500) {
            mo3961b(f, f2);
            return;
        }
        z = this.f4213a.f4190t;
        if (z) {
            m4140c(f, f2);
        } else if (this.f4213a.f4087H == 2) {
            this.f4213a.f4082C.m3837v();
        }
    }

    @Override // com.alensw.p038ui.view.InterfaceC1372q
    /* renamed from: a */
    public void mo3959a(float f, boolean z) {
        boolean z2;
        boolean z3;
        PictureView pictureView;
        PictureView pictureView2;
        C0604as c0604as;
        Uri uri;
        char c;
        z2 = this.f4213a.f4192v;
        if (z2 && z && f > 1.0f) {
            pictureView2 = this.f4213a.f4176f;
            if (pictureView2.getPictureType() == 1) {
                this.f4213a.f4192v = false;
                c0604as = this.f4213a.f4159N;
                if (c0604as == null) {
                    C1256dp c1256dp = this.f4213a;
                    C0600ao c0600ao = QuickApp.f2078u;
                    uri = this.f4213a.f4185o;
                    c = this.f4213a.f4184n;
                    c1256dp.f4159N = c0600ao.m2223a(uri, c, 3, this.f4213a.f3851b);
                }
            }
        }
        z3 = this.f4213a.f4194x;
        if (z3) {
            pictureView = this.f4213a.f4176f;
            float transScale = pictureView.getTransScale();
            this.f4213a.m4095a(transScale > 0.95f && transScale < 1.05f);
        }
    }

    @Override // com.alensw.p038ui.view.InterfaceC1372q
    /* renamed from: a */
    public boolean mo3960a(int i) {
        C0623e c0623e;
        C0623e c0623e2;
        C0623e c0623e3;
        C0623e c0623e4;
        c0623e = this.f4213a.f4183m;
        if (c0623e == null) {
            return false;
        }
        boolean z = i > 0;
        C1256dp c1256dp = this.f4213a;
        c0623e2 = this.f4213a.f4183m;
        int m4131a = c1256dp.m4131a(c0623e2.f2419c, z);
        if (z) {
            c0623e4 = this.f4213a.f4183m;
            return m4131a > c0623e4.f2419c;
        }
        c0623e3 = this.f4213a.f4183m;
        return m4131a < c0623e3.f2419c;
    }

    @Override // com.alensw.p038ui.view.InterfaceC1372q
    /* renamed from: b */
    public void mo3961b(float f, float f2) {
        boolean z;
        z = this.f4213a.f4190t;
        if (!z) {
            m4140c(f, f2);
        } else if (this.f4213a.f4087H == 2) {
            this.f4213a.f4082C.m3837v();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    @Override // com.alensw.p038ui.view.InterfaceC1372q
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void mo3962b(int i) {
        C0623e c0623e;
        C0623e c0623e2;
        C0623e c0623e3;
        boolean z;
        C0623e c0623e4;
        C0623e c0623e5;
        C0623e c0623e6;
        C0623e c0623e7;
        C0714j c0714j;
        Uri uri;
        C0714j m2225a;
        C0714j c0714j2;
        C0714j c0714j3;
        C0714j c0714j4;
        Uri uri2;
        C0714j c0714j5;
        c0623e = this.f4213a.f4183m;
        if (c0623e == null) {
            return;
        }
        this.f4213a.f4189s = i > 0;
        c0623e2 = this.f4213a.f4183m;
        C1256dp c1256dp = this.f4213a;
        c0623e3 = this.f4213a.f4183m;
        int i2 = c0623e3.f2419c;
        z = this.f4213a.f4189s;
        c0623e2.f2419c = c1256dp.m4131a(i2, z);
        C1256dp c1256dp2 = this.f4213a;
        c0623e4 = this.f4213a.f4183m;
        c0623e5 = this.f4213a.f4183m;
        c1256dp2.f4185o = c0623e4.m2379d(c0623e5.f2419c);
        C1256dp c1256dp3 = this.f4213a;
        c0623e6 = this.f4213a.f4183m;
        c0623e7 = this.f4213a.f4183m;
        c1256dp3.f4184n = c0623e6.m2383f(c0623e7.f2419c);
        c0714j = this.f4213a.f4187q;
        if (c0714j != null) {
            c0714j4 = this.f4213a.f4187q;
            uri2 = this.f4213a.f4185o;
            if (c0714j4.m2863a(uri2)) {
                c0714j5 = this.f4213a.f4187q;
                m2225a = c0714j5.mo2865l();
                this.f4213a.m4133a(m2225a, true);
                if (m2225a != null) {
                    m2225a.m2866m();
                }
                c0714j2 = this.f4213a.f4187q;
                if (c0714j2 != null) {
                    c0714j3 = this.f4213a.f4187q;
                    c0714j3.m2866m();
                    this.f4213a.f4187q = null;
                }
                if (this.f4213a.f3851b.hasMessages(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE)) {
                    this.f4213a.f3851b.sendEmptyMessageDelayed(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE, 20L);
                    return;
                }
                return;
            }
        }
        C0600ao c0600ao = QuickApp.f2078u;
        uri = this.f4213a.f4185o;
        m2225a = c0600ao.m2225a(uri);
        this.f4213a.m4133a(m2225a, true);
        if (m2225a != null) {
        }
        c0714j2 = this.f4213a.f4187q;
        if (c0714j2 != null) {
        }
        if (this.f4213a.f3851b.hasMessages(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE)) {
        }
    }
}
