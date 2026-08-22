package com.alensw.transfer;

import android.graphics.Canvas;
import android.graphics.RectF;
import com.alensw.PicFolder.QuickApp;
import com.alensw.bean.CommonFile;
import com.alensw.p022a.InterfaceC0595aj;
import com.alensw.p023b.p031h.C0712h;
import com.alensw.p038ui.view.C1310ak;
import com.alensw.p038ui.view.InterfaceC1309aj;
import java.util.ArrayList;

/* renamed from: com.alensw.transfer.ay */
/* loaded from: classes.dex */
class C1009ay implements InterfaceC1309aj {

    /* renamed from: a */
    final /* synthetic */ C0987ac f3529a;

    /* renamed from: b */
    private int f3530b;

    /* renamed from: c */
    private final InterfaceC0595aj f3531c;

    private C1009ay(C0987ac c0987ac) {
        this.f3529a = c0987ac;
        this.f3531c = new C1010az(this);
    }

    /* synthetic */ C1009ay(C0987ac c0987ac, ViewOnClickListenerC0988ad viewOnClickListenerC0988ad) {
        this(c0987ac);
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public int mo3656a() {
        ArrayList arrayList;
        arrayList = this.f3529a.f3486p;
        return arrayList.size();
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public String mo3657a(int i) {
        return null;
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public void mo3658a(int i, int i2, int i3) {
        ArrayList arrayList;
        boolean z = i3 != 0 ? i3 >= 0 : this.f3530b >= 0;
        if (this.f3530b != i3) {
            this.f3530b = i3;
            QuickApp.f2077t.m2168a(false);
        }
        int i4 = i2 - i;
        for (int i5 = 0; i5 < i4; i5++) {
            int i6 = z ? i + i5 : (i2 - 1) - i5;
            arrayList = this.f3529a.f3486p;
            CommonFile commonFile = (CommonFile) arrayList.get(i6);
            if (commonFile != null && !QuickApp.f2080w.m2519a(commonFile)) {
                QuickApp.f2077t.m2166a(commonFile, false, this.f3531c);
            }
        }
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public void mo3659a(int i, int i2, boolean z) {
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public void mo3660a(int i, Canvas canvas, RectF rectF) {
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public void mo3661a(int i, C1310ak c1310ak) {
        ArrayList arrayList;
        arrayList = this.f3529a.f3486p;
        CommonFile commonFile = (CommonFile) arrayList.get(i);
        if (commonFile != null) {
            c1310ak.f4518a = (C0712h) QuickApp.f2080w.m2521b(commonFile);
            if (c1310ak.f4518a != null) {
                c1310ak.f4518a.mo2865l();
            }
            if (commonFile.m3020h() != 'I') {
                c1310ak.f4520c = commonFile.m3012a();
            }
        }
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: b */
    public void mo3662b(int i) {
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: c */
    public void mo3663c(int i) {
    }
}
