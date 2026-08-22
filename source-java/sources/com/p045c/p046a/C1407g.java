package com.p045c.p046a;

import p012b.p013a.C0242b;

/* renamed from: com.c.a.g */
/* loaded from: classes.dex */
public class C1407g extends C1409i {

    /* renamed from: a */
    private long f4978a = 90000;

    /* renamed from: b */
    private long f4979b;

    /* renamed from: c */
    private C0242b f4980c;

    public C1407g(C0242b c0242b, long j) {
        this.f4980c = c0242b;
        this.f4979b = j < this.f4978a ? this.f4978a : j;
    }

    @Override // com.p045c.p046a.C1409i
    /* renamed from: a */
    public boolean mo4582a(boolean z) {
        return System.currentTimeMillis() - this.f4980c.f1011c >= this.f4979b;
    }
}
