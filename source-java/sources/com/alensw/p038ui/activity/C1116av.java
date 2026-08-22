package com.alensw.p038ui.activity;

import android.view.Menu;
import com.alensw.p038ui.view.InterfaceC1355cb;
import com.alensw.p038ui.view.TitleBar;

/* renamed from: com.alensw.ui.activity.av */
/* loaded from: classes.dex */
class C1116av implements InterfaceC1355cb {

    /* renamed from: a */
    final /* synthetic */ ActivityC1109ao f3767a;

    C1116av(ActivityC1109ao activityC1109ao) {
        this.f3767a = activityC1109ao;
    }

    @Override // com.alensw.p038ui.view.InterfaceC1355cb
    /* renamed from: a */
    public boolean mo3839a(TitleBar titleBar, Menu menu) {
        return this.f3767a.mo3811c(menu);
    }

    @Override // com.alensw.p038ui.view.InterfaceC1355cb
    /* renamed from: b */
    public boolean mo3840b(TitleBar titleBar, Menu menu) {
        titleBar.m4321a(menu);
        return this.f3767a.mo3814d(menu);
    }
}
