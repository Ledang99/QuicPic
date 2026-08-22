package com.alensw.p038ui.activity;

import android.content.Context;
import com.alensw.p038ui.p039a.AlertDialogC1089x;

/* renamed from: com.alensw.ui.activity.j */
/* loaded from: classes.dex */
final class RunnableC1141j implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f3823a;

    /* renamed from: b */
    final /* synthetic */ Runnable f3824b;

    RunnableC1141j(Context context, Runnable runnable) {
        this.f3823a = context;
        this.f3824b = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        AlertDialogC1089x.m3749a(this.f3823a, "protect_delete", this.f3824b, null);
    }
}
