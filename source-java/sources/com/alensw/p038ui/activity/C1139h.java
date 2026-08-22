package com.alensw.p038ui.activity;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.alensw.p023b.p029f.C0688a;
import com.alensw.p023b.p029f.EnumC0689b;

/* renamed from: com.alensw.ui.activity.h */
/* loaded from: classes.dex */
final class C1139h implements InterfaceC1146o {

    /* renamed from: a */
    final /* synthetic */ Context f3818a;

    C1139h(Context context) {
        this.f3818a = context;
    }

    @Override // com.alensw.p038ui.activity.InterfaceC1146o
    /* renamed from: a */
    public void mo2098a(Intent intent, ResolveInfo resolveInfo) {
        intent.setAction(null);
        C1094a.m3774a(this.f3818a, intent, resolveInfo);
        C0688a.m2714a(this.f3818a, EnumC0689b.Camera);
    }
}
