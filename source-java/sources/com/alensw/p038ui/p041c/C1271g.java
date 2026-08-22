package com.alensw.p038ui.p041c;

import com.alensw.PicFolder.QuickApp;
import com.alensw.p022a.C0623e;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.InterfaceC1084s;

/* renamed from: com.alensw.ui.c.g */
/* loaded from: classes.dex */
class C1271g implements InterfaceC1084s {

    /* renamed from: a */
    final /* synthetic */ String f4216a;

    /* renamed from: b */
    final /* synthetic */ C0623e f4217b;

    /* renamed from: c */
    final /* synthetic */ int f4218c;

    /* renamed from: d */
    final /* synthetic */ InterfaceC1279o f4219d;

    /* renamed from: e */
    final /* synthetic */ C1159a f4220e;

    C1271g(C1159a c1159a, String str, C0623e c0623e, int i, InterfaceC1279o interfaceC1279o) {
        this.f4220e = c1159a;
        this.f4216a = str;
        this.f4217b = c0623e;
        this.f4218c = i;
        this.f4219d = interfaceC1279o;
    }

    @Override // com.alensw.p038ui.p039a.InterfaceC1084s
    /* renamed from: a */
    public void mo3652a(String str) {
        String m3008g = C0742b.m3008g(C0742b.m2973a(str.trim(), '.'));
        if (m3008g.length() == 0 || this.f4216a.equals(m3008g)) {
            return;
        }
        String m2373b = this.f4217b.m2373b(this.f4218c);
        char m2383f = this.f4217b.m2383f(this.f4218c);
        int m2360a = this.f4217b.m2360a(this.f4218c, m3008g);
        if (m2360a == -1) {
            this.f4220e.m3879a(m2373b);
            return;
        }
        String m2373b2 = this.f4217b.m2373b(m2360a);
        QuickApp.f2076s.m2282a(m2373b, m2383f, false);
        QuickApp.f2076s.m2294f(m2373b2);
        QuickApp.f2072o.m2497a(this.f4217b, m2360a < 4);
        QuickApp.f2075r.m2309a(m2373b);
        this.f4219d.mo3990a(m2373b, m2373b2, m2360a);
    }
}
