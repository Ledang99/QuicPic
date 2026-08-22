package com.alensw.PicFolder;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.alensw.p038ui.activity.C1094a;
import com.alensw.p038ui.activity.InterfaceC1146o;

/* renamed from: com.alensw.PicFolder.l */
/* loaded from: classes.dex */
class C0570l implements InterfaceC1146o {

    /* renamed from: a */
    final /* synthetic */ CropActivity f2200a;

    C0570l(CropActivity cropActivity) {
        this.f2200a = cropActivity;
    }

    @Override // com.alensw.p038ui.activity.InterfaceC1146o
    /* renamed from: a */
    public void mo2098a(Intent intent, ResolveInfo resolveInfo) {
        this.f2200a.mo1980a(C1094a.m3770a(intent, resolveInfo));
    }
}
