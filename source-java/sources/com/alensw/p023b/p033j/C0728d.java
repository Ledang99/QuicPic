package com.alensw.p023b.p033j;

/* renamed from: com.alensw.b.j.d */
/* loaded from: classes.dex */
public class C0728d {

    /* renamed from: a */
    final /* synthetic */ C0727c f2764a;

    /* renamed from: b */
    private final int f2765b;

    /* renamed from: c */
    private final int f2766c;

    /* renamed from: d */
    private int f2767d;

    C0728d(C0727c c0727c, int i) {
        int i2;
        int i3;
        this.f2764a = c0727c;
        this.f2765b = i;
        i2 = c0727c.f2763d;
        this.f2767d = i2 * i;
        int i4 = this.f2767d;
        i3 = c0727c.f2763d;
        this.f2766c = i4 + i3;
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0008 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C0728d m2933a(String str, Object obj) {
        String[] strArr;
        String[] strArr2;
        Object[] objArr;
        int i;
        for (int i2 = 0; i2 < strArr.length; i2++) {
            strArr2 = this.f2764a.f2760a;
            if (str.equals(strArr2[i2])) {
                objArr = this.f2764a.f2761b;
                int i3 = this.f2765b;
                i = this.f2764a.f2763d;
                objArr[(i3 * i) + i2] = obj;
            }
        }
        return this;
    }
}
