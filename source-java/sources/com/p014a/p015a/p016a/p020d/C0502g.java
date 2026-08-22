package com.p014a.p015a.p016a.p020d;

/* renamed from: com.a.a.a.d.g */
/* loaded from: classes.dex */
public final class C0502g extends AbstractC0501f {

    /* renamed from: c */
    static final C0502g f1867c = new C0502g("", 0, 0);

    /* renamed from: d */
    final int f1868d;

    C0502g(String str, int i, int i2) {
        super(str, i);
        this.f1868d = i2;
    }

    /* renamed from: b */
    static C0502g m1863b() {
        return f1867c;
    }

    @Override // com.p014a.p015a.p016a.p020d.AbstractC0501f
    /* renamed from: a */
    public boolean mo1860a(int i) {
        return i == this.f1868d;
    }

    @Override // com.p014a.p015a.p016a.p020d.AbstractC0501f
    /* renamed from: a */
    public boolean mo1861a(int i, int i2) {
        return i == this.f1868d && i2 == 0;
    }

    @Override // com.p014a.p015a.p016a.p020d.AbstractC0501f
    /* renamed from: a */
    public boolean mo1862a(int[] iArr, int i) {
        return i == 1 && iArr[0] == this.f1868d;
    }
}
