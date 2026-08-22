package com.alensw.p022a;

import android.net.Uri;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p023b.p024a.C0650f;
import com.alensw.p023b.p031h.C0712h;
import com.alensw.p023b.p031h.C0714j;
import com.alensw.p023b.p034k.InterfaceCallableC0740k;
import java.io.File;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.alensw.a.ar */
/* loaded from: classes.dex */
class C0603ar implements InterfaceCallableC0740k {

    /* renamed from: a */
    final /* synthetic */ Uri f2309a;

    /* renamed from: b */
    final /* synthetic */ C0606au f2310b;

    /* renamed from: c */
    final /* synthetic */ String f2311c;

    /* renamed from: d */
    final /* synthetic */ long f2312d;

    /* renamed from: e */
    final /* synthetic */ C0600ao f2313e;

    C0603ar(C0600ao c0600ao, Uri uri, C0606au c0606au, String str, long j) {
        this.f2313e = c0600ao;
        this.f2309a = uri;
        this.f2310b = c0606au;
        this.f2311c = str;
        this.f2312d = j;
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: a */
    public void mo2094a() {
        ConcurrentHashMap concurrentHashMap;
        concurrentHashMap = this.f2313e.f2306s;
        concurrentHashMap.remove(this.f2309a);
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: b */
    public void mo2095b() {
        ConcurrentHashMap concurrentHashMap;
        concurrentHashMap = this.f2313e.f2306s;
        concurrentHashMap.remove(this.f2309a);
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public Void call() {
        boolean m2209d;
        C0650f c0650f;
        boolean m2206b;
        C0650f c0650f2;
        C0714j m2225a = this.f2313e.m2225a(this.f2309a);
        if (m2225a == null) {
            return null;
        }
        boolean j = m2225a.m2854j();
        if (j) {
            m2209d = this.f2313e.m2209d(this.f2309a);
            if (!m2209d) {
                this.f2310b.f2329a = true;
                c0650f = this.f2313e.f2297j;
                File m2546f = c0650f.m2546f();
                m2206b = C0600ao.m2206b(m2546f.getPath(), m2225a);
                if (m2206b) {
                    String uri = this.f2311c != null ? "file://" + this.f2311c : this.f2309a.toString();
                    c0650f2 = this.f2313e.f2297j;
                    c0650f2.m2538a(uri, this.f2312d, m2546f);
                }
                this.f2310b.f2329a = false;
            }
        }
        if (j && this.f2311c == null) {
            C0615bc c0615bc = QuickApp.f2075r;
            C0712h a2 = m2225a.m2840a(c0615bc.f2373d, c0615bc.f2374e, c0615bc.f2371b, C0615bc.f2368a);
            if (a2 != null) {
                c0615bc.m2311a(this.f2309a.toString(), this.f2312d, a2);
                a2.m2866m();
            }
        }
        m2225a.m2866m();
        return null;
    }
}
