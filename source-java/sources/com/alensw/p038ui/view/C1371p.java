package com.alensw.p038ui.view;

import android.graphics.Matrix;
import android.view.View;
import android.view.animation.Interpolator;
import com.alensw.p023b.p031h.C0714j;

/* renamed from: com.alensw.ui.view.p */
/* loaded from: classes.dex */
class C1371p extends RunnableC1346bt {

    /* renamed from: a */
    final /* synthetic */ boolean f4807a;

    /* renamed from: b */
    final /* synthetic */ boolean f4808b;

    /* renamed from: c */
    final /* synthetic */ boolean f4809c;

    /* renamed from: d */
    final /* synthetic */ Matrix f4810d;

    /* renamed from: e */
    final /* synthetic */ float f4811e;

    /* renamed from: f */
    final /* synthetic */ float f4812f;

    /* renamed from: g */
    final /* synthetic */ float f4813g;

    /* renamed from: h */
    final /* synthetic */ float f4814h;

    /* renamed from: i */
    final /* synthetic */ float f4815i;

    /* renamed from: j */
    final /* synthetic */ float f4816j;

    /* renamed from: k */
    final /* synthetic */ float f4817k;

    /* renamed from: l */
    final /* synthetic */ int f4818l;

    /* renamed from: m */
    final /* synthetic */ Runnable f4819m;

    /* renamed from: n */
    final /* synthetic */ float f4820n;

    /* renamed from: o */
    final /* synthetic */ C1365j f4821o;

    /* renamed from: p */
    private final Matrix f4822p;

    /* renamed from: q */
    private final Matrix f4823q;

    /* renamed from: r */
    private final Matrix f4824r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1371p(C1365j c1365j, View view, Interpolator interpolator, boolean z, boolean z2, boolean z3, Matrix matrix, float f, float f2, float f3, float f4, float f5, float f6, float f7, int i, Runnable runnable, float f8) {
        super(view, interpolator);
        this.f4821o = c1365j;
        this.f4807a = z;
        this.f4808b = z2;
        this.f4809c = z3;
        this.f4810d = matrix;
        this.f4811e = f;
        this.f4812f = f2;
        this.f4813g = f3;
        this.f4814h = f4;
        this.f4815i = f5;
        this.f4816j = f6;
        this.f4817k = f7;
        this.f4818l = i;
        this.f4819m = runnable;
        this.f4820n = f8;
        this.f4822p = this.f4807a ? new Matrix() : null;
        this.f4823q = this.f4808b ? new Matrix() : null;
        this.f4824r = this.f4809c ? new Matrix() : null;
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: a */
    public void mo2076a() {
        this.f4821o.f4732I = this.f4807a || this.f4808b;
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: a */
    public void mo2077a(float f) {
        this.f4821o.f4742S.set(this.f4810d);
        if (this.f4807a) {
            float f2 = (this.f4811e + (this.f4812f * f)) / this.f4811e;
            this.f4822p.setScale(f2, f2, this.f4813g, this.f4814h);
            this.f4821o.f4742S.postConcat(this.f4822p);
        }
        if (this.f4808b) {
            this.f4823q.setRotate(this.f4815i * f, this.f4813g, this.f4814h);
            this.f4821o.f4742S.postConcat(this.f4823q);
            this.f4821o.f4731H = true;
        }
        if (this.f4809c) {
            this.f4824r.setTranslate(this.f4816j * f, this.f4817k * f);
            this.f4821o.f4742S.postConcat(this.f4824r);
        }
        this.f4821o.m4465j();
        this.f4821o.invalidate();
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: b */
    public void mo2079b() {
        C0714j c0714j;
        C0714j c0714j2;
        C0714j c0714j3;
        C0714j c0714j4;
        C0714j c0714j5;
        C0714j c0714j6;
        this.f4821o.f4733J = null;
        this.f4821o.f4731H = false;
        this.f4821o.f4732I = false;
        if (this.f4818l != 0) {
            c0714j = this.f4821o.f4759b;
            Matrix matrix = c0714j != null ? this.f4821o.f4744U : this.f4821o.f4741R;
            c0714j2 = this.f4821o.f4759b;
            Matrix matrix2 = c0714j2 != null ? this.f4821o.f4745V : this.f4821o.f4743T;
            c0714j3 = this.f4821o.f4747a;
            if (c0714j3 != null) {
                c0714j6 = this.f4821o.f4747a;
                c0714j6.m2847c(this.f4818l);
            }
            c0714j4 = this.f4821o.f4759b;
            if (c0714j4 != null) {
                c0714j5 = this.f4821o.f4759b;
                c0714j5.m2847c(this.f4818l);
            }
            this.f4821o.m4464i();
            matrix.invert(this.f4821o.f4742S);
            this.f4821o.f4742S.postConcat(matrix2);
            this.f4821o.m4465j();
        }
        this.f4821o.invalidate();
        if (this.f4819m != null) {
            this.f4819m.run();
        }
        if (this.f4821o.f4732I || this.f4821o.f4734K == null) {
            return;
        }
        this.f4821o.f4734K.mo3959a(this.f4820n / this.f4811e, false);
    }
}
