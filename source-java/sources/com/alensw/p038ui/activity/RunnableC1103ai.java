package com.alensw.p038ui.activity;

import android.preference.SwitchPreference;

/* renamed from: com.alensw.ui.activity.ai */
/* loaded from: classes.dex */
class RunnableC1103ai implements Runnable {

    /* renamed from: a */
    final /* synthetic */ SwitchPreference f3712a;

    /* renamed from: b */
    final /* synthetic */ C1102ah f3713b;

    RunnableC1103ai(C1102ah c1102ah, SwitchPreference switchPreference) {
        this.f3713b = c1102ah;
        this.f3712a = switchPreference;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3712a.setChecked(false);
    }
}
