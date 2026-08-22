package com.alensw.p038ui.p041c;

import com.alensw.bean.CommonFile;
import com.alensw.bean.CommonFolder;
import com.alensw.p022a.InterfaceC0611az;

/* renamed from: com.alensw.ui.c.y */
/* loaded from: classes.dex */
class C1289y implements InterfaceC0611az {

    /* renamed from: a */
    final /* synthetic */ C1280p f4270a;

    C1289y(C1280p c1280p) {
        this.f4270a = c1280p;
    }

    @Override // com.alensw.p022a.InterfaceC0611az
    /* renamed from: a */
    public void mo2260a(CommonFolder commonFolder, boolean z) {
        CommonFolder commonFolder2;
        if (z) {
            commonFolder2 = this.f4270a.f4246q;
            if (!commonFolder2.equals(commonFolder) || this.f4270a.m4019A()) {
                return;
            }
            this.f4270a.m4163e_();
        }
    }

    @Override // com.alensw.p022a.InterfaceC0611az
    /* renamed from: b */
    public void mo2261b(CommonFolder commonFolder, boolean z) {
        CommonFolder commonFolder2;
        CommonFolder commonFolder3;
        CommonFolder commonFolder4;
        CommonFolder commonFolder5;
        this.f4270a.f4244o = null;
        if (z) {
            this.f4270a.m4029c(false);
        }
        if (commonFolder != null) {
            commonFolder2 = this.f4270a.f4246q;
            if (commonFolder2.equals(commonFolder)) {
                commonFolder3 = this.f4270a.f4246q;
                CommonFile m3027a = commonFolder3.m3027a(0);
                commonFolder4 = this.f4270a.f4246q;
                commonFolder4.m3032a(commonFolder, true);
                if (m3027a != null && m3027a != CommonFile.f2791a) {
                    commonFolder5 = this.f4270a.f4246q;
                    commonFolder5.m3029a(0, m3027a);
                }
                this.f4270a.f4235f.notifyDataSetChanged();
                this.f4270a.m4158l();
            }
        }
    }
}
