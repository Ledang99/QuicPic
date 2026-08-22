package com.alensw.PicFolder;

import android.content.Intent;
import android.os.Bundle;
import com.alensw.bean.CommonRoot;
import com.alensw.p038ui.p041c.C1212bz;
import com.alensw.p038ui.p041c.C1290z;
import com.alensw.p038ui.view.C1329bc;

/* renamed from: com.alensw.PicFolder.aj */
/* loaded from: classes.dex */
class RunnableC0536aj implements Runnable {

    /* renamed from: a */
    final /* synthetic */ int f2116a;

    /* renamed from: b */
    final /* synthetic */ CommonRoot f2117b;

    /* renamed from: c */
    final /* synthetic */ C0535ai f2118c;

    RunnableC0536aj(C0535ai c0535ai, int i, CommonRoot commonRoot) {
        this.f2118c = c0535ai;
        this.f2116a = i;
        this.f2117b = commonRoot;
    }

    @Override // java.lang.Runnable
    public void run() {
        C1329bc c1329bc;
        C1329bc c1329bc2;
        this.f2118c.f2115a.m4044e();
        c1329bc = this.f2118c.f2115a.f2002i;
        if (c1329bc.f4576c != this.f2116a) {
            QuickApp.f2079v.m2524c();
            QuickApp.f2080w.m2524c();
        }
        if ("folders".equals(this.f2117b.f2814n)) {
            this.f2118c.f2115a.m4037a(C1212bz.class, new Intent(), (Bundle) null);
        } else {
            this.f2118c.f2115a.m4037a(C1290z.class, C1290z.m4168a(this.f2117b.mo3052k(), true, this.f2117b.f2814n), (Bundle) null);
        }
        c1329bc2 = this.f2118c.f2115a.f2002i;
        c1329bc2.m4372a(this.f2116a);
    }
}
