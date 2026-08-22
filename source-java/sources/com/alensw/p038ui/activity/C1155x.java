package com.alensw.p038ui.activity;

import android.content.Intent;
import android.preference.Preference;

/* renamed from: com.alensw.ui.activity.x */
/* loaded from: classes.dex */
class C1155x implements Preference.OnPreferenceClickListener {

    /* renamed from: a */
    final /* synthetic */ Intent f3840a;

    /* renamed from: b */
    final /* synthetic */ MainPreference f3841b;

    C1155x(MainPreference mainPreference, Intent intent) {
        this.f3841b = mainPreference;
        this.f3840a = intent;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        C1094a.m3781a(this.f3841b, this.f3840a);
        return true;
    }
}
