package com.alensw.transfer;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import com.alensw.p038ui.activity.C1094a;
import com.alensw.p038ui.activity.InterfaceC1146o;

/* renamed from: com.alensw.transfer.i */
/* loaded from: classes.dex */
class C1029i implements InterfaceC1146o {

    /* renamed from: a */
    final /* synthetic */ TransferActivity f3575a;

    C1029i(TransferActivity transferActivity) {
        this.f3575a = transferActivity;
    }

    @Override // com.alensw.p038ui.activity.InterfaceC1146o
    /* renamed from: a */
    public void mo2098a(Intent intent, ResolveInfo resolveInfo) {
        C1094a.m3774a(this.f3575a, intent, resolveInfo);
    }
}
