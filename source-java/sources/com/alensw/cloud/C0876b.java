package com.alensw.cloud;

import com.alensw.bean.CommonFolder;
import com.alensw.p022a.InterfaceC0611az;

/* renamed from: com.alensw.cloud.b */
/* loaded from: classes.dex */
class C0876b implements InterfaceC0611az {

    /* renamed from: a */
    final /* synthetic */ CloudConfigActivity f3164a;

    C0876b(CloudConfigActivity cloudConfigActivity) {
        this.f3164a = cloudConfigActivity;
    }

    @Override // com.alensw.p022a.InterfaceC0611az
    /* renamed from: a */
    public void mo2260a(CommonFolder commonFolder, boolean z) {
        if (!z) {
            mo2261b(null, true);
        } else if (this.f3164a.isFinishing()) {
            this.f3164a.f2848a = true;
        } else {
            this.f3164a.m3100b();
        }
    }

    @Override // com.alensw.p022a.InterfaceC0611az
    /* renamed from: b */
    public void mo2261b(CommonFolder commonFolder, boolean z) {
        CommonFolder commonFolder2;
        CommonFolder commonFolder3;
        this.f3164a.f2859l = null;
        if (this.f3164a.isFinishing()) {
            return;
        }
        if (commonFolder != null) {
            commonFolder3 = this.f3164a.f2857j;
            commonFolder3.m3032a(commonFolder, true);
            this.f3164a.f2853f.notifyDataSetChanged();
        }
        if (z) {
            this.f3164a.m3824i(false);
            commonFolder2 = this.f3164a.f2857j;
            if (commonFolder2.m3046n()) {
                this.f3164a.finish();
            }
        }
    }
}
