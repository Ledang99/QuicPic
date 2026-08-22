package com.alensw.p038ui.p041c;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.alensw.p038ui.activity.C1094a;
import com.alensw.p038ui.activity.InterfaceC1146o;

/* renamed from: com.alensw.ui.c.ab */
/* loaded from: classes.dex */
class C1161ab implements InterfaceC1146o {

    /* renamed from: a */
    final /* synthetic */ C1290z f3856a;

    C1161ab(C1290z c1290z) {
        this.f3856a = c1290z;
    }

    @Override // com.alensw.p038ui.activity.InterfaceC1146o
    /* renamed from: a */
    public void mo2098a(Intent intent, ResolveInfo resolveInfo) {
        if ("android.intent.action.SEND_MULTIPLE".equals(intent.getAction())) {
            this.f3856a.f4082C.mo1980a(intent);
        } else {
            intent.setType(null);
            intent.setFlags(0);
            intent.removeExtra("android.intent.extra.STREAM");
        }
        C1094a.m3774a(this.f3856a.f4082C, intent, resolveInfo);
    }
}
