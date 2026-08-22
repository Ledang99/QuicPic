package com.alensw.p038ui.activity;

import android.content.SharedPreferences;
import android.preference.Preference;
import android.preference.SwitchPreference;
import com.alensw.p038ui.p039a.AlertDialogC1089x;

/* renamed from: com.alensw.ui.activity.ah */
/* loaded from: classes.dex */
class C1102ah implements Preference.OnPreferenceClickListener {

    /* renamed from: a */
    final /* synthetic */ SharedPreferences f3710a;

    /* renamed from: b */
    final /* synthetic */ MainPreference f3711b;

    C1102ah(MainPreference mainPreference, SharedPreferences sharedPreferences) {
        this.f3711b = mainPreference;
        this.f3710a = sharedPreferences;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        SwitchPreference switchPreference = (SwitchPreference) preference;
        if (!switchPreference.isChecked() && this.f3710a.getString("password", "").length() > 0) {
            switchPreference.setChecked(true);
            AlertDialogC1089x.m3749a(this.f3711b, switchPreference.getKey(), new RunnableC1103ai(this, switchPreference), null);
        }
        return true;
    }
}
