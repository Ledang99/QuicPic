package com.alensw.p038ui.p041c;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.alensw.p038ui.activity.C1094a;
import com.alensw.p038ui.activity.InterfaceC1146o;

/* renamed from: com.alensw.ui.c.dn */
/* loaded from: classes.dex */
class C1254dn implements InterfaceC1146o {

    /* renamed from: a */
    final /* synthetic */ C1246df f4154a;

    C1254dn(C1246df c1246df) {
        this.f4154a = c1246df;
    }

    @Override // com.alensw.p038ui.activity.InterfaceC1146o
    /* renamed from: a */
    public void mo2098a(Intent intent, ResolveInfo resolveInfo) {
        Context context;
        context = this.f4154a.f4131d;
        C1094a.m3774a(context, intent, resolveInfo);
    }
}
