package com.p014a.p015a.p016a.p020d;

/* renamed from: com.a.a.a.d.h */
/* loaded from: classes.dex */
public final class C0503h extends AbstractC0501f {

    /* renamed from: c */
    final int f1869c;

    /* renamed from: d */
    final int f1870d;

    C0503h(String str, int i, int i2, int i3) {
        super(str, i);
        this.f1869c = i2;
        this.f1870d = i3;
    }

    @Override // com.p014a.p015a.p016a.p020d.AbstractC0501f
    /* renamed from: a */
    public boolean mo1860a(int i) {
        return false;
    }

    @Override // com.p014a.p015a.p016a.p020d.AbstractC0501f
    /* renamed from: a */
    public boolean mo1861a(int i, int i2) {
        return i == this.f1869c && i2 == this.f1870d;
    }

    @Override // com.p014a.p015a.p016a.p020d.AbstractC0501f
    /* renamed from: a */
    public boolean mo1862a(int[] iArr, int i) {
        return i == 2 && iArr[0] == this.f1869c && iArr[1] == this.f1870d;
    }
}
