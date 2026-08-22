package com.alensw.p038ui.activity;

import android.content.SharedPreferences;
import android.preference.Preference;
import android.preference.SwitchPreference;
import com.alensw.PicFolder.R;
import com.alensw.p023b.p030g.MenuC0693b;
import com.alensw.p038ui.p039a.AlertDialogC1089x;

/* renamed from: com.alensw.ui.activity.ae */
/* loaded from: classes.dex */
class C1099ae implements Preference.OnPreferenceClickListener {

    /* renamed from: a */
    final /* synthetic */ SwitchPreference f3705a;

    /* renamed from: b */
    final /* synthetic */ SharedPreferences f3706b;

    /* renamed from: c */
    final /* synthetic */ MainPreference f3707c;

    C1099ae(MainPreference mainPreference, SwitchPreference switchPreference, SharedPreferences sharedPreferences) {
        this.f3707c = mainPreference;
        this.f3705a = switchPreference;
        this.f3706b = sharedPreferences;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        if (this.f3705a.isChecked()) {
            this.f3706b.edit().remove("password").commit();
            this.f3705a.setChecked(false);
            this.f3705a.setSummary((CharSequence) null);
            MenuItemOnMenuItemClickListenerC1100af menuItemOnMenuItemClickListenerC1100af = new MenuItemOnMenuItemClickListenerC1100af(this);
            MenuC0693b menuC0693b = new MenuC0693b(this.f3707c);
            menuC0693b.add(0, 1, 0, R.string.password_mode_pattern).setOnMenuItemClickListener(menuItemOnMenuItemClickListenerC1100af);
            menuC0693b.add(0, 2, 0, R.string.password_mode_pin).setOnMenuItemClickListener(menuItemOnMenuItemClickListenerC1100af);
            menuC0693b.m2748a(this.f3707c.getString(R.string.password_mode));
        } else if (this.f3706b.getString("password", "").length() > 0) {
            this.f3705a.setChecked(true);
            AlertDialogC1089x.m3749a(this.f3707c, "password_protect", new RunnableC1101ag(this), null);
        }
        return true;
    }
}
