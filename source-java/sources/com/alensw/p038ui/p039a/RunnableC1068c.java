package com.alensw.p038ui.p039a;

/* renamed from: com.alensw.ui.a.c */
/* loaded from: classes.dex */
class RunnableC1068c implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f3650a;

    /* renamed from: b */
    final /* synthetic */ String f3651b;

    /* renamed from: c */
    final /* synthetic */ String f3652c;

    /* renamed from: d */
    final /* synthetic */ C1067b f3653d;

    RunnableC1068c(C1067b c1067b, String str, String str2, String str3) {
        this.f3653d = c1067b;
        this.f3650a = str;
        this.f3651b = str2;
        this.f3652c = str3;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f3653d.f3649b.isFinishing()) {
            return;
        }
        C1047a.m3722b(this.f3653d.f3649b, this.f3650a, this.f3651b, this.f3652c);
    }
}
