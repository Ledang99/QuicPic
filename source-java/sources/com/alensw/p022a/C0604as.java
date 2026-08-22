package com.alensw.p022a;

import android.net.Uri;
import com.alensw.p023b.p031h.C0714j;
import com.alensw.p023b.p034k.C0733d;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: com.alensw.a.as */
/* loaded from: classes.dex */
public class C0604as extends C0733d {

    /* renamed from: a */
    final /* synthetic */ C0600ao f2314a;

    /* renamed from: b */
    private C0605at f2315b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0604as(C0600ao c0600ao, C0605at c0605at) {
        super(c0605at);
        this.f2314a = c0600ao;
        this.f2315b = c0605at;
    }

    /* renamed from: a */
    public C0714j m2238a() {
        AtomicReference atomicReference;
        C0714j m2225a = isDone() ? this.f2314a.m2225a(this.f2315b.f2316a.mo3021i()) : null;
        if (m2225a != null) {
            return m2225a;
        }
        atomicReference = this.f2315b.f2326k;
        C0714j c0714j = (C0714j) atomicReference.get();
        if (c0714j != null) {
            return c0714j.mo2865l();
        }
        return null;
    }

    /* renamed from: a */
    public final boolean m2239a(Uri uri) {
        Uri mo3021i = this.f2315b.f2316a.mo3021i();
        return uri == mo3021i || uri.equals(mo3021i);
    }

    /* renamed from: b */
    public final boolean m2240b(Uri uri) {
        return !isCancelled() && m2239a(uri);
    }

    @Override // java.util.concurrent.FutureTask
    public String toString() {
        return this.f2315b.toString();
    }
}
