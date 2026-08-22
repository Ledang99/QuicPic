package com.p045c.p046a;

import p012b.p013a.C0242b;

/* renamed from: com.c.a.h */
/* loaded from: classes.dex */
public class C1408h extends C1409i {

    /* renamed from: a */
    private long f4981a = 86400000;

    /* renamed from: b */
    private C0242b f4982b;

    public C1408h(C0242b c0242b) {
        this.f4982b = c0242b;
    }

    @Override // com.p045c.p046a.C1409i
    /* renamed from: a */
    public boolean mo4582a(boolean z) {
        return System.currentTimeMillis() - this.f4982b.f1011c >= this.f4981a;
    }
}
