package com.alensw.p038ui.activity;

import android.R;
import android.preference.Preference;
import android.preference.SwitchPreference;
import com.alensw.p038ui.p039a.C1071f;

/* renamed from: com.alensw.ui.activity.ac */
/* loaded from: classes.dex */
class C1097ac implements Preference.OnPreferenceClickListener {

    /* renamed from: a */
    final /* synthetic */ SwitchPreference f3702a;

    /* renamed from: b */
    final /* synthetic */ MainPreference f3703b;

    C1097ac(MainPreference mainPreference, SwitchPreference switchPreference) {
        this.f3703b = mainPreference;
        this.f3702a = switchPreference;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        if (!this.f3702a.isChecked()) {
            return true;
        }
        C1071f.m3739a(this.f3703b, R.string.dialog_alert_title, this.f3703b.getString(com.alensw.PicFolder.R.string.auto_hide_navbar_tips), (Runnable) null, new RunnableC1098ad(this));
        return true;
    }
}
