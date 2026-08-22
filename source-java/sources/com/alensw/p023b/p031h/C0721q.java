package com.alensw.p023b.p031h;

import android.graphics.Bitmap;

/* renamed from: com.alensw.b.h.q */
/* loaded from: classes.dex */
class C0721q extends C0712h {

    /* renamed from: a */
    protected final boolean f2745a;

    /* renamed from: c */
    protected final int f2746c;

    /* renamed from: d */
    final /* synthetic */ C0718n f2747d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0721q(C0718n c0718n, int i, int i2, int i3) {
        super(i2, i3, 0, 0);
        this.f2747d = c0718n;
        this.f2745a = false;
        this.f2746c = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0721q(C0718n c0718n, int i, Bitmap bitmap) {
        super(bitmap);
        this.f2747d = c0718n;
        this.f2745a = bitmap.hasAlpha() && bitmap.getConfig() == Bitmap.Config.ARGB_8888;
        this.f2746c = i;
    }

    @Override // com.alensw.p023b.p031h.C0712h
    /* renamed from: a */
    protected void mo2842a(Bitmap bitmap) {
        C0718n.m2883b(bitmap);
    }

    @Override // com.alensw.p023b.p031h.C0712h
    public String toString() {
        return super.toString() + ", tile=" + C0717m.m2873e(this.f2746c);
    }
}
