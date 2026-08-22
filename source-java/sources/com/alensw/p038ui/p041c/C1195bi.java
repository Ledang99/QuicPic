package com.alensw.p038ui.p041c;

import com.alensw.p022a.C0622d;

/* renamed from: com.alensw.ui.c.bi */
/* loaded from: classes.dex */
class C1195bi implements InterfaceC1279o {

    /* renamed from: a */
    final /* synthetic */ C1192bf f3977a;

    C1195bi(C1192bf c1192bf) {
        this.f3977a = c1192bf;
    }

    @Override // com.alensw.p038ui.p041c.InterfaceC1279o
    /* renamed from: a */
    public void mo3990a(String str, String str2, int i) {
        this.f3977a.f3963g.f2419c = i;
        if (this.f3977a.f3962f.f4407d) {
            this.f3977a.f3967k.clear();
            C0622d m2381e = this.f3977a.f3963g.m2381e(i);
            if (m2381e != null) {
                this.f3977a.f3967k.add(m2381e);
            }
        }
        this.f3977a.f3962f.requestLayout();
        this.f3977a.f3962f.m4258b(i);
    }
}
