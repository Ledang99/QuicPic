package com.alensw.p038ui.p041c;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import com.alensw.PicFolder.CropActivity;
import com.alensw.p038ui.activity.C1094a;
import com.alensw.p038ui.activity.InterfaceC1146o;

/* renamed from: com.alensw.ui.c.dl */
/* loaded from: classes.dex */
class C1252dl implements InterfaceC1146o {

    /* renamed from: a */
    final /* synthetic */ Bundle f4150a;

    /* renamed from: b */
    final /* synthetic */ C1246df f4151b;

    C1252dl(C1246df c1246df, Bundle bundle) {
        this.f4151b = c1246df;
        this.f4150a = bundle;
    }

    @Override // com.alensw.p038ui.activity.InterfaceC1146o
    /* renamed from: a */
    public void mo2098a(Intent intent, ResolveInfo resolveInfo) {
        Context context;
        Context context2;
        Context context3;
        if (!CropActivity.class.getName().equals(resolveInfo.activityInfo.name)) {
            context = this.f4151b.f4131d;
            C1094a.m3774a(context, intent, resolveInfo);
            return;
        }
        context2 = this.f4151b.f4131d;
        intent.setClass(context2, CropActivity.class);
        if (this.f4150a != null) {
            intent.putExtras(this.f4150a);
        }
        context3 = this.f4151b.f4131d;
        C1094a.m3780a((Activity) context3, intent, 2);
    }
}
