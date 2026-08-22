package com.alensw.p038ui.p039a;

import android.content.Context;
import android.content.DialogInterface;
import com.alensw.p038ui.activity.C1094a;

/* renamed from: com.alensw.ui.a.d */
/* loaded from: classes.dex */
final class DialogInterfaceOnClickListenerC1069d implements DialogInterface.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ Context f3654a;

    /* renamed from: b */
    final /* synthetic */ String f3655b;

    DialogInterfaceOnClickListenerC1069d(Context context, String str) {
        this.f3654a = context;
        this.f3655b = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (C1094a.m3782a(this.f3654a, "android.intent.action.VIEW", "market://details?id=" + this.f3654a.getPackageName())) {
            return;
        }
        C1094a.m3782a(this.f3654a, "android.intent.action.VIEW", this.f3655b);
    }
}
