package com.alensw.p038ui.activity;

import android.content.Intent;
import android.preference.Preference;

/* renamed from: com.alensw.ui.activity.v */
/* loaded from: classes.dex */
class C1153v implements Preference.OnPreferenceClickListener {

    /* renamed from: a */
    final /* synthetic */ MainPreference f3837a;

    C1153v(MainPreference mainPreference) {
        this.f3837a = mainPreference;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        this.f3837a.startActivityForResult(new Intent(this.f3837a, (Class<?>) SelectThemeActivity.class), 1001);
        return true;
    }
}
