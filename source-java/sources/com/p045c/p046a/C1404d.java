package com.p045c.p046a;

import p012b.p013a.C0242b;
import p012b.p013a.C0458j;

/* renamed from: com.c.a.d */
/* loaded from: classes.dex */
public class C1404d extends C1409i {

    /* renamed from: a */
    private C0458j f4974a;

    /* renamed from: b */
    private C0242b f4975b;

    public C1404d(C0242b c0242b, C0458j c0458j) {
        this.f4975b = c0242b;
        this.f4974a = c0458j;
    }

    @Override // com.p045c.p046a.C1409i
    /* renamed from: a */
    public boolean mo4581a() {
        return this.f4974a.m1528b();
    }

    @Override // com.p045c.p046a.C1409i
    /* renamed from: a */
    public boolean mo4582a(boolean z) {
        return System.currentTimeMillis() - this.f4975b.f1011c >= this.f4974a.m1524a();
    }
}
