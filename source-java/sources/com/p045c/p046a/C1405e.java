package com.p045c.p046a;

/* renamed from: com.c.a.e */
/* loaded from: classes.dex */
public class C1405e extends C1409i {

    /* renamed from: a */
    private long f4976a;

    /* renamed from: b */
    private long f4977b;

    public C1405e(int i) {
        this.f4977b = 0L;
        this.f4976a = i;
        this.f4977b = System.currentTimeMillis();
    }

    @Override // com.p045c.p046a.C1409i
    /* renamed from: a */
    public boolean mo4581a() {
        return System.currentTimeMillis() - this.f4977b < this.f4976a;
    }

    @Override // com.p045c.p046a.C1409i
    /* renamed from: a */
    public boolean mo4582a(boolean z) {
        return System.currentTimeMillis() - this.f4977b >= this.f4976a;
    }
}
