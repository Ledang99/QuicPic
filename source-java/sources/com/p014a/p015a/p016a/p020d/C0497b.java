package com.p014a.p015a.p016a.p020d;

/* renamed from: com.a.a.a.d.b */
/* loaded from: classes.dex */
final class C0497b {

    /* renamed from: a */
    protected final AbstractC0501f f1839a;

    /* renamed from: b */
    protected final C0497b f1840b;

    /* renamed from: c */
    private final int f1841c;

    C0497b(AbstractC0501f abstractC0501f, C0497b c0497b) {
        this.f1839a = abstractC0501f;
        this.f1840b = c0497b;
        this.f1841c = c0497b == null ? 1 : c0497b.f1841c + 1;
    }

    /* renamed from: a */
    public int m1834a() {
        return this.f1841c;
    }

    /* renamed from: a */
    public AbstractC0501f m1835a(int i, int i2, int i3) {
        if (this.f1839a.hashCode() == i && this.f1839a.mo1861a(i2, i3)) {
            return this.f1839a;
        }
        for (C0497b c0497b = this.f1840b; c0497b != null; c0497b = c0497b.f1840b) {
            AbstractC0501f abstractC0501f = c0497b.f1839a;
            if (abstractC0501f.hashCode() == i && abstractC0501f.mo1861a(i2, i3)) {
                return abstractC0501f;
            }
        }
        return null;
    }

    /* renamed from: a */
    public AbstractC0501f m1836a(int i, int[] iArr, int i2) {
        if (this.f1839a.hashCode() == i && this.f1839a.mo1862a(iArr, i2)) {
            return this.f1839a;
        }
        for (C0497b c0497b = this.f1840b; c0497b != null; c0497b = c0497b.f1840b) {
            AbstractC0501f abstractC0501f = c0497b.f1839a;
            if (abstractC0501f.hashCode() == i && abstractC0501f.mo1862a(iArr, i2)) {
                return abstractC0501f;
            }
        }
        return null;
    }
}
