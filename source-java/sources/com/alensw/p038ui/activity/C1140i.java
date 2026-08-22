package com.alensw.p038ui.activity;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;

/* renamed from: com.alensw.ui.activity.i */
/* loaded from: classes.dex */
final class C1140i implements InterfaceC1146o {

    /* renamed from: a */
    final /* synthetic */ String f3819a;

    /* renamed from: b */
    final /* synthetic */ String f3820b;

    /* renamed from: c */
    final /* synthetic */ String f3821c;

    /* renamed from: d */
    final /* synthetic */ Context f3822d;

    C1140i(String str, String str2, String str3, Context context) {
        this.f3819a = str;
        this.f3820b = str2;
        this.f3821c = str3;
        this.f3822d = context;
    }

    @Override // com.alensw.p038ui.activity.InterfaceC1146o
    /* renamed from: a */
    public void mo2098a(Intent intent, ResolveInfo resolveInfo) {
        String str = resolveInfo.activityInfo.packageName;
        if ("com.google.android.apps.maps".equals(str)) {
            intent.setData(Uri.parse(this.f3819a));
        } else if (str.startsWith("com.google.")) {
            intent.setData(Uri.parse(this.f3820b + "&q=" + this.f3821c));
        }
        C1094a.m3774a(this.f3822d, intent, resolveInfo);
    }
}
