package com.alensw.p022a;

import com.alensw.PicFolder.QuickApp;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* renamed from: com.alensw.a.t */
/* loaded from: classes.dex */
class CallableC0638t implements Callable {

    /* renamed from: a */
    final /* synthetic */ boolean f2464a;

    /* renamed from: b */
    final /* synthetic */ String f2465b;

    /* renamed from: c */
    final /* synthetic */ C0637s f2466c;

    CallableC0638t(C0637s c0637s, boolean z, String str) {
        this.f2466c = c0637s;
        this.f2464a = z;
        this.f2465b = str;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public HashMap call() {
        return QuickApp.f2076s.m2278a(this.f2465b, this.f2464a ? C0613ba.f2361m : C0613ba.f2360l);
    }
}
