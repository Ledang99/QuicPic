package com.alensw.p038ui.p041c;

import android.app.Activity;
import com.alensw.PicFolder.QuickApp;
import com.alensw.bean.CommonFile;
import com.alensw.p023b.p024a.C0645a;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: com.alensw.ui.c.ar */
/* loaded from: classes.dex */
class ProgressDialogC1177ar extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ HashSet f3893a;

    /* renamed from: b */
    final /* synthetic */ int f3894b;

    /* renamed from: c */
    final /* synthetic */ C1290z f3895c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1177ar(C1290z c1290z, Activity activity, String str, int i, HashSet hashSet, int i2) {
        super(activity, str, i);
        this.f3895c = c1290z;
        this.f3893a = hashSet;
        this.f3894b = i2;
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    protected void mo3653a() {
        int m2961a;
        Iterator it = this.f3893a.iterator();
        while (it.hasNext()) {
            CommonFile commonFile = (CommonFile) it.next();
            String mo3022j = commonFile.mo3022j();
            if (mo3022j != null && commonFile.m3020h() == 'I' && (m2961a = C0742b.m2961a(mo3022j, this.f3894b, false)) != -1) {
                QuickApp.f2076s.m2283a(mo3022j, m2961a);
                QuickApp.f2075r.m2309a(mo3022j);
            }
            if (!m3732d()) {
                return;
            }
        }
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: b */
    protected void mo3654b() {
        C0645a c0645a;
        Iterator it = this.f3893a.iterator();
        while (it.hasNext()) {
            CommonFile commonFile = (CommonFile) it.next();
            c0645a = this.f3895c.f4277O;
            c0645a.m2523c(commonFile);
        }
        this.f3895c.f4285f.requestLayout();
        this.f3895c.mo4058n();
    }
}
