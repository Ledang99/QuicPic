package com.alensw.p038ui.view;

import android.graphics.RectF;
import android.support.v4.widget.C0208k;
import android.view.View;
import android.view.animation.Interpolator;

/* renamed from: com.alensw.ui.view.m */
/* loaded from: classes.dex */
class C1368m extends RunnableC1346bt {

    /* renamed from: a */
    final /* synthetic */ RectF f4781a;

    /* renamed from: b */
    final /* synthetic */ int f4782b;

    /* renamed from: c */
    final /* synthetic */ int f4783c;

    /* renamed from: d */
    final /* synthetic */ int f4784d;

    /* renamed from: e */
    final /* synthetic */ int f4785e;

    /* renamed from: f */
    final /* synthetic */ float f4786f;

    /* renamed from: g */
    final /* synthetic */ float f4787g;

    /* renamed from: h */
    final /* synthetic */ C1365j f4788h;

    /* renamed from: i */
    private final int f4789i;

    /* renamed from: j */
    private final int f4790j;

    /* renamed from: k */
    private float f4791k;

    /* renamed from: l */
    private float f4792l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1368m(C1365j c1365j, View view, Interpolator interpolator, RectF rectF, int i, int i2, int i3, int i4, float f, float f2) {
        super(view, interpolator);
        this.f4788h = c1365j;
        this.f4781a = rectF;
        this.f4782b = i;
        this.f4783c = i2;
        this.f4784d = i3;
        this.f4785e = i4;
        this.f4786f = f;
        this.f4787g = f2;
        this.f4789i = this.f4788h.f4750ac * 4;
        this.f4790j = this.f4788h.f4750ac * 4;
        this.f4791k = -this.f4781a.left;
        this.f4792l = -this.f4781a.top;
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: a */
    public void mo2076a() {
        C0208k c0208k;
        C0208k c0208k2;
        C0208k c0208k3;
        this.f4788h.f4729F = true;
        c0208k = this.f4788h.f4770m;
        if (c0208k.m569a()) {
            c0208k3 = this.f4788h.f4770m;
            c0208k3.m567a((int) this.f4791k, (int) this.f4792l, this.f4782b, this.f4783c, 0, this.f4784d, 0, this.f4785e, this.f4789i, this.f4790j);
        } else {
            c0208k2 = this.f4788h.f4770m;
            c0208k2.m567a((int) this.f4791k, (int) this.f4792l, this.f4782b, this.f4783c, 0 - (this.f4789i * 2), this.f4784d + (this.f4789i * 2), 0 - (this.f4790j * 2), this.f4785e + (this.f4790j * 2), 0, 0);
        }
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: a */
    public void mo2077a(float f) {
        C0208k c0208k;
        C0208k c0208k2;
        C0208k c0208k3;
        C0208k c0208k4;
        float f2;
        float f3;
        C0208k c0208k5;
        C0208k c0208k6;
        C0208k c0208k7;
        c0208k = this.f4788h.f4770m;
        if (!c0208k.m571b()) {
            mo4403c();
            mo2079b();
            return;
        }
        c0208k2 = this.f4788h.f4770m;
        float m572c = c0208k2.m572c();
        c0208k3 = this.f4788h.f4770m;
        float m573d = c0208k3.m573d();
        c0208k4 = this.f4788h.f4770m;
        if (c0208k4.m569a()) {
            f3 = this.f4784d > 0 ? 0 - this.f4789i : this.f4791k;
            float f4 = this.f4784d > 0 ? this.f4784d + this.f4789i : this.f4791k;
            f2 = this.f4785e > 0 ? 0 - this.f4790j : this.f4792l;
            float f5 = this.f4785e > 0 ? this.f4785e + this.f4790j : this.f4792l;
            if (m572c >= f3) {
                f3 = m572c > f4 ? f4 : m572c;
            }
            if (m573d >= f2) {
                f2 = m573d > f5 ? f5 : m573d;
            }
        } else {
            f2 = m573d;
            f3 = m572c;
        }
        this.f4788h.m4446b(this.f4791k - f3, this.f4792l - f2);
        this.f4791k = f3;
        this.f4792l = f2;
        c0208k5 = this.f4788h.f4770m;
        if (c0208k5.m569a()) {
            return;
        }
        if (this.f4789i < this.f4781a.left - 0.0f || this.f4789i < this.f4786f - this.f4781a.right) {
            c0208k6 = this.f4788h.f4770m;
            c0208k6.m576g();
        }
        if (this.f4781a.top > this.f4790j + 0 || this.f4790j < this.f4787g - this.f4781a.bottom) {
            c0208k7 = this.f4788h.f4770m;
            c0208k7.m576g();
        }
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: b */
    public void mo2079b() {
        this.f4788h.f4733J = null;
        this.f4788h.f4729F = false;
        this.f4788h.m4467l();
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: c */
    public void mo4403c() {
        C0208k c0208k;
        super.mo4403c();
        this.f4788h.f4733J = null;
        this.f4788h.f4729F = false;
        c0208k = this.f4788h.f4770m;
        c0208k.m576g();
    }
}
