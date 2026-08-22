package com.alensw.p038ui.p041c;

import com.alensw.PicFolder.R;
import com.alensw.p022a.C0623e;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.InterfaceC1084s;

/* renamed from: com.alensw.ui.c.cm */
/* loaded from: classes.dex */
class C1226cm implements InterfaceC1084s {

    /* renamed from: a */
    final /* synthetic */ C0623e f4067a;

    /* renamed from: b */
    final /* synthetic */ C1212bz f4068b;

    C1226cm(C1212bz c1212bz, C0623e c0623e) {
        this.f4068b = c1212bz;
        this.f4067a = c0623e;
    }

    @Override // com.alensw.p038ui.p039a.InterfaceC1084s
    /* renamed from: a */
    public void mo3652a(String str) {
        String m3008g = C0742b.m3008g(C0742b.m2973a(str.trim(), '.'));
        if (m3008g.length() == 0 || this.f4067a.getName().equals(m3008g)) {
            return;
        }
        int m2493a = this.f4068b.f4023l.m2493a(this.f4068b.f4023l.m2494a(this.f4067a), m3008g);
        if (m2493a == -1) {
            this.f4068b.m3879a(this.f4067a.getPath());
            return;
        }
        C0623e m2500b = this.f4068b.f4023l.m2500b(m2493a);
        if (this.f4068b.f4082C.m3832q()) {
            this.f4068b.f4017A.clear();
            this.f4068b.f4017A.add(m2500b);
        }
        this.f4068b.f4021j.requestLayout();
        this.f4068b.m4002d(m2500b);
        new ProgressDialogC1227cn(this, this.f4068b.f4082C, this.f4068b.m4032g(R.string.running_wait), 0).m3731c();
    }
}
