package com.alensw.PicFolder;

import android.graphics.RectF;
import com.alensw.p038ui.view.InterfaceC1380y;

/* renamed from: com.alensw.PicFolder.z */
/* loaded from: classes.dex */
class C0584z implements InterfaceC1380y {

    /* renamed from: a */
    final /* synthetic */ C0575q f2258a;

    C0584z(C0575q c0575q) {
        this.f2258a = c0575q;
    }

    @Override // com.alensw.p038ui.view.InterfaceC1380y
    /* renamed from: a */
    public void mo2144a() {
        float f;
        if (this.f2258a.f2231u.m2074b()) {
            this.f2258a.m2134b();
            this.f2258a.f2231u.f2097a = 0;
        } else if (this.f2258a.f2231u.m2075c()) {
            this.f2258a.m2137c();
            this.f2258a.f2231u.f2097a = 0;
        } else {
            C0575q c0575q = this.f2258a;
            f = this.f2258a.f4754ag;
            c0575q.m4452b(f);
        }
    }

    @Override // com.alensw.p038ui.view.InterfaceC1380y
    /* renamed from: a */
    public void mo2145a(float f, float f2) {
        if (this.f2258a.m4468m()) {
            this.f2258a.m4463h();
        }
        this.f2258a.f2231u.m2068a(f, f2);
    }

    @Override // com.alensw.p038ui.view.InterfaceC1380y
    /* renamed from: a */
    public boolean mo2146a(float f, float f2, float f3) {
        RectF rectF;
        RectF rectF2;
        if (this.f2258a.f2231u.m2073a() || Float.isNaN(f) || Float.isInfinite(f)) {
            return false;
        }
        if (f < 1.0f) {
            float min = Math.min(this.f2258a.getPictureWidth(), 16);
            float min2 = Math.min(this.f2258a.getPictureHeight(), 16);
            rectF = this.f2258a.f4739P;
            float width = rectF.width();
            rectF2 = this.f2258a.f4739P;
            float height = rectF2.height();
            if (width * f < min || height * f < min2) {
                return false;
            }
        }
        this.f2258a.m4437a(f, f2, f3);
        return true;
    }

    @Override // com.alensw.p038ui.view.InterfaceC1380y
    /* renamed from: b */
    public void mo2147b(float f, float f2) {
        if (this.f2258a.f2231u.m2073a()) {
            this.f2258a.m2137c();
            this.f2258a.f2231u.f2097a = 0;
        }
    }

    @Override // com.alensw.p038ui.view.InterfaceC1380y
    /* renamed from: b */
    public boolean mo2148b(float f, float f2, float f3) {
        if (this.f2258a.f2231u.m2073a()) {
            return false;
        }
        this.f2258a.m4454c(f, f2, f3);
        return true;
    }

    @Override // com.alensw.p038ui.view.InterfaceC1380y
    /* renamed from: c */
    public void mo2149c(float f, float f2) {
        this.f2258a.m4435a(f, f2);
    }

    @Override // com.alensw.p038ui.view.InterfaceC1380y
    /* renamed from: d */
    public void mo2150d(float f, float f2) {
        if (this.f2258a.f2231u.m2074b()) {
            this.f2258a.f2231u.m2069a(this.f2258a.f2231u.f2097a, f, f2);
            this.f2258a.m2137c();
        } else {
            if (!this.f2258a.f2231u.m2075c()) {
                this.f2258a.m4453c(f, f2);
                return;
            }
            this.f2258a.f2232v.offset(f, f2);
            this.f2258a.m2139d();
            this.f2258a.m2137c();
        }
    }

    @Override // com.alensw.p038ui.view.InterfaceC1380y
    /* renamed from: e */
    public void mo2151e(float f, float f2) {
        if (this.f2258a.f2231u.m2073a()) {
            mo2144a();
        } else {
            this.f2258a.m4458d(f, f2);
        }
    }

    @Override // com.alensw.p038ui.view.InterfaceC1380y
    /* renamed from: f */
    public void mo2152f(float f, float f2) {
        if (this.f2258a.f2231u.m2073a()) {
            return;
        }
        this.f2258a.m4459e(f, f2);
    }
}
