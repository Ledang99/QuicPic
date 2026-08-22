package com.alensw.p038ui.p041c;

import android.net.Uri;
import android.os.Build;
import com.alensw.PicFolder.QuickApp;
import com.alensw.bean.CommonFile;
import com.alensw.bean.CommonFolder;
import com.alensw.p022a.C0600ao;
import com.alensw.p022a.C0604as;
import com.alensw.p023b.p031h.C0714j;
import com.alensw.p038ui.view.InterfaceC1372q;
import com.alensw.p038ui.view.PictureView;
import org.apache.http.protocol.HttpRequestExecutor;

/* renamed from: com.alensw.ui.c.be */
/* loaded from: classes.dex */
class C1191be implements InterfaceC1372q {

    /* renamed from: a */
    final /* synthetic */ C1178as f3959a;

    C1191be(C1178as c1178as) {
        this.f3959a = c1178as;
    }

    /* renamed from: c */
    private void m3956c(float f, float f2) {
        PictureView pictureView;
        pictureView = this.f3959a.f3916f;
        mo3959a(pictureView.m4435a(f, f2), true);
    }

    @Override // com.alensw.p038ui.view.InterfaceC1372q
    /* renamed from: a */
    public C0714j mo3957a(int i, boolean z) {
        CommonFolder commonFolder;
        CommonFolder commonFolder2;
        boolean z2;
        CommonFolder commonFolder3;
        C0714j c0714j;
        C0714j c0714j2;
        C0714j c0714j3;
        C0714j m3896a;
        C0714j c0714j4;
        C0714j c0714j5;
        C0714j c0714j6;
        commonFolder = this.f3959a.f3921k;
        if (commonFolder == null) {
            return null;
        }
        this.f3959a.f3927q = i > 0;
        C1178as c1178as = this.f3959a;
        commonFolder2 = this.f3959a.f3921k;
        int i2 = commonFolder2.f2807k;
        z2 = this.f3959a.f3927q;
        int m3938a = c1178as.m3938a(i2, z2);
        commonFolder3 = this.f3959a.f3921k;
        CommonFile m3027a = commonFolder3.m3027a(m3938a);
        Uri mo3021i = m3027a != null ? m3027a.mo3021i() : Uri.EMPTY;
        c0714j = this.f3959a.f3924n;
        if (c0714j != null) {
            c0714j4 = this.f3959a.f3924n;
            if (c0714j4.m2863a(mo3021i)) {
                c0714j6 = this.f3959a.f3924n;
                return c0714j6.mo2865l();
            }
            c0714j5 = this.f3959a.f3924n;
            c0714j5.m2866m();
            this.f3959a.f3924n = null;
        }
        if (m3027a != null) {
            C1178as c1178as2 = this.f3959a;
            m3896a = this.f3959a.m3896a(m3027a, z);
            c1178as2.f3924n = m3896a;
        }
        c0714j2 = this.f3959a.f3924n;
        if (c0714j2 == null) {
            return null;
        }
        c0714j3 = this.f3959a.f3924n;
        return c0714j3.mo2865l();
    }

    @Override // com.alensw.p038ui.view.InterfaceC1372q
    /* renamed from: a */
    public void mo3958a(float f, float f2) {
        boolean z;
        if (this.f3959a.f4082C.f3738Q && Build.VERSION.SDK_INT < 19 && System.currentTimeMillis() < this.f3959a.f4082C.f3740S + 500) {
            mo3961b(f, f2);
            return;
        }
        z = this.f3959a.f3928r;
        if (z) {
            m3956c(f, f2);
        } else if (this.f3959a.f4087H == 2) {
            this.f3959a.f4082C.m3837v();
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
        CommonFile commonFile;
        z2 = this.f3959a.f3930t;
        if (z2 && z && f > 1.0f) {
            pictureView2 = this.f3959a.f3916f;
            if (pictureView2.getPictureType() == 1) {
                this.f3959a.f3930t = false;
                c0604as = this.f3959a.f3899M;
                if (c0604as == null) {
                    C1178as c1178as = this.f3959a;
                    C0600ao c0600ao = QuickApp.f2078u;
                    commonFile = this.f3959a.f3922l;
                    c1178as.f3899M = c0600ao.m2224a(commonFile, 3, this.f3959a.f3851b);
                }
            }
        }
        z3 = this.f3959a.f3932v;
        if (z3) {
            pictureView = this.f3959a.f3916f;
            float transScale = pictureView.getTransScale();
            this.f3959a.m3903a(transScale > 0.95f && transScale < 1.05f);
        }
    }

    @Override // com.alensw.p038ui.view.InterfaceC1372q
    /* renamed from: a */
    public boolean mo3960a(int i) {
        CommonFolder commonFolder;
        CommonFolder commonFolder2;
        CommonFolder commonFolder3;
        CommonFolder commonFolder4;
        commonFolder = this.f3959a.f3921k;
        if (commonFolder == null) {
            return false;
        }
        boolean z = i > 0;
        C1178as c1178as = this.f3959a;
        commonFolder2 = this.f3959a.f3921k;
        int m3938a = c1178as.m3938a(commonFolder2.f2807k, z);
        if (z) {
            commonFolder4 = this.f3959a.f3921k;
            return m3938a > commonFolder4.f2807k;
        }
        commonFolder3 = this.f3959a.f3921k;
        return m3938a < commonFolder3.f2807k;
    }

    @Override // com.alensw.p038ui.view.InterfaceC1372q
    /* renamed from: b */
    public void mo3961b(float f, float f2) {
        boolean z;
        z = this.f3959a.f3928r;
        if (!z) {
            m3956c(f, f2);
        } else if (this.f3959a.f4087H == 2) {
            this.f3959a.f4082C.m3837v();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    @Override // com.alensw.p038ui.view.InterfaceC1372q
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void mo3962b(int i) {
        CommonFolder commonFolder;
        CommonFolder commonFolder2;
        CommonFolder commonFolder3;
        boolean z;
        CommonFolder commonFolder4;
        CommonFolder commonFolder5;
        CommonFile commonFile;
        C0714j c0714j;
        C0714j m2225a;
        C0714j c0714j2;
        C0714j c0714j3;
        C0714j c0714j4;
        C0714j c0714j5;
        commonFolder = this.f3959a.f3921k;
        if (commonFolder == null) {
            return;
        }
        this.f3959a.f3927q = i > 0;
        commonFolder2 = this.f3959a.f3921k;
        C1178as c1178as = this.f3959a;
        commonFolder3 = this.f3959a.f3921k;
        int i2 = commonFolder3.f2807k;
        z = this.f3959a.f3927q;
        commonFolder2.f2807k = c1178as.m3938a(i2, z);
        C1178as c1178as2 = this.f3959a;
        commonFolder4 = this.f3959a.f3921k;
        commonFolder5 = this.f3959a.f3921k;
        c1178as2.f3922l = commonFolder4.m3027a(commonFolder5.f2807k);
        commonFile = this.f3959a.f3922l;
        Uri mo3021i = commonFile.mo3021i();
        c0714j = this.f3959a.f3924n;
        if (c0714j != null) {
            c0714j4 = this.f3959a.f3924n;
            if (c0714j4.m2863a(mo3021i)) {
                c0714j5 = this.f3959a.f3924n;
                m2225a = c0714j5.mo2865l();
                this.f3959a.m3942a(m2225a, true);
                if (m2225a != null) {
                    m2225a.m2866m();
                }
                c0714j2 = this.f3959a.f3924n;
                if (c0714j2 != null) {
                    c0714j3 = this.f3959a.f3924n;
                    c0714j3.m2866m();
                    this.f3959a.f3924n = null;
                }
                if (this.f3959a.f3851b.hasMessages(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE)) {
                    this.f3959a.f3851b.sendEmptyMessageDelayed(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE, 20L);
                    return;
                }
                return;
            }
        }
        m2225a = QuickApp.f2078u.m2225a(mo3021i);
        this.f3959a.m3942a(m2225a, true);
        if (m2225a != null) {
        }
        c0714j2 = this.f3959a.f3924n;
        if (c0714j2 != null) {
        }
        if (this.f3959a.f3851b.hasMessages(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE)) {
        }
    }
}
