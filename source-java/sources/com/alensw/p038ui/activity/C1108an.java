package com.alensw.p038ui.activity;

import android.preference.Preference;

/* renamed from: com.alensw.ui.activity.an */
/* loaded from: classes.dex */
class C1108an implements Preference.OnPreferenceClickListener {

    /* renamed from: a */
    final /* synthetic */ String f3723a;

    /* renamed from: b */
    final /* synthetic */ MainPreference f3724b;

    C1108an(MainPreference mainPreference, String str) {
        this.f3724b = mainPreference;
        this.f3723a = str;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        if (C1094a.m3782a(this.f3724b, "android.intent.action.VIEW", "market://details?id=" + this.f3723a)) {
            return false;
        }
        C1094a.m3782a(this.f3724b, "android.intent.action.VIEW", "http://market.android.com/details?id=" + this.f3723a);
        return false;
    }
}
