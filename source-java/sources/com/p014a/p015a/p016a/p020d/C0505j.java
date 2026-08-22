package com.p014a.p015a.p016a.p020d;

/* renamed from: com.a.a.a.d.j */
/* loaded from: classes.dex */
public final class C0505j extends AbstractC0501f {

    /* renamed from: c */
    final int[] f1874c;

    /* renamed from: d */
    final int f1875d;

    C0505j(String str, int i, int[] iArr, int i2) {
        super(str, i);
        if (i2 < 3) {
            throw new IllegalArgumentException("Qlen must >= 3");
        }
        this.f1874c = iArr;
        this.f1875d = i2;
    }

    @Override // com.p014a.p015a.p016a.p020d.AbstractC0501f
    /* renamed from: a */
    public boolean mo1860a(int i) {
        return false;
    }

    @Override // com.p014a.p015a.p016a.p020d.AbstractC0501f
    /* renamed from: a */
    public boolean mo1861a(int i, int i2) {
        return false;
    }

    @Override // com.p014a.p015a.p016a.p020d.AbstractC0501f
    /* renamed from: a */
    public boolean mo1862a(int[] iArr, int i) {
        if (i != this.f1875d) {
            return false;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != this.f1874c[i2]) {
                return false;
            }
        }
        return true;
    }
}
