package com.alensw.p038ui.activity;

import android.preference.Preference;
import android.preference.SwitchPreference;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.p038ui.p039a.C1071f;

/* renamed from: com.alensw.ui.activity.aa */
/* loaded from: classes.dex */
class C1095aa implements Preference.OnPreferenceClickListener {

    /* renamed from: a */
    final /* synthetic */ SwitchPreference f3698a;

    /* renamed from: b */
    final /* synthetic */ MainPreference f3699b;

    C1095aa(MainPreference mainPreference, SwitchPreference switchPreference) {
        this.f3699b = mainPreference;
        this.f3698a = switchPreference;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        Runnable runnable;
        QuickApp.f2075r.f2371b = this.f3698a.isChecked();
        MainPreference mainPreference = this.f3699b;
        String string = this.f3699b.getString(R.string.clear_thumbnails_confirm);
        runnable = this.f3699b.f3681g;
        C1071f.m3739a(mainPreference, R.string.clear_thumbnails, string, runnable, (Runnable) null);
        return true;
    }
}
