package com.alensw.p038ui.activity;

import android.content.Context;
import android.preference.SwitchPreference;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.p038ui.p039a.AlertDialogC1089x;
import com.alensw.p038ui.p039a.C1071f;
import com.alensw.p038ui.p039a.InterfaceC1051ad;
import com.alensw.p038ui.view.PasswordView;

/* renamed from: com.alensw.ui.activity.w */
/* loaded from: classes.dex */
class C1154w implements InterfaceC1051ad {

    /* renamed from: a */
    final /* synthetic */ SwitchPreference f3838a;

    /* renamed from: b */
    final /* synthetic */ MainPreference f3839b;

    C1154w(MainPreference mainPreference, SwitchPreference switchPreference) {
        this.f3839b = mainPreference;
        this.f3838a = switchPreference;
    }

    @Override // com.alensw.p038ui.p039a.InterfaceC1051ad
    /* renamed from: a */
    public boolean mo3723a(PasswordView passwordView, String str) {
        if (str.length() > 0) {
            this.f3839b.getPreferenceManager().getSharedPreferences().edit().putString("password", str).commit();
            this.f3838a.setChecked(true);
            this.f3838a.setSummary(Character.isDigit(str.charAt(0)) ? R.string.password_mode_pin : R.string.password_mode_pattern);
            QuickApp.f2082y = str;
            C1071f.m3737a((Context) this.f3839b, android.R.string.dialog_alert_title, (CharSequence) this.f3839b.getString(R.string.password_stored));
        } else {
            AlertDialogC1089x.m3752a(passwordView);
        }
        return true;
    }
}
