package com.alensw.p038ui.p041c;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.alensw.p038ui.activity.C1094a;
import com.alensw.p038ui.activity.InterfaceC1146o;

/* renamed from: com.alensw.ui.c.bo */
/* loaded from: classes.dex */
class C1201bo implements InterfaceC1146o {

    /* renamed from: a */
    final /* synthetic */ C1192bf f3997a;

    C1201bo(C1192bf c1192bf) {
        this.f3997a = c1192bf;
    }

    @Override // com.alensw.p038ui.activity.InterfaceC1146o
    /* renamed from: a */
    public void mo2098a(Intent intent, ResolveInfo resolveInfo) {
        if ("android.intent.action.SEND_MULTIPLE".equals(intent.getAction())) {
            this.f3997a.f4082C.mo1980a(intent);
            intent.removeExtra("multiple_files");
        } else {
            intent.setType(null);
            intent.setFlags(0);
            intent.removeExtra("android.intent.extra.STREAM");
        }
        C1094a.m3774a(this.f3997a.f4082C, intent, resolveInfo);
    }
}
