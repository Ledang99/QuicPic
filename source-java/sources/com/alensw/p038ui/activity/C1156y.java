package com.alensw.p038ui.activity;

import android.preference.ListPreference;
import android.preference.Preference;
import java.util.Arrays;

/* renamed from: com.alensw.ui.activity.y */
/* loaded from: classes.dex */
class C1156y implements Preference.OnPreferenceChangeListener {

    /* renamed from: a */
    final /* synthetic */ ListPreference f3842a;

    /* renamed from: b */
    final /* synthetic */ MainPreference f3843b;

    C1156y(MainPreference mainPreference, ListPreference listPreference) {
        this.f3843b = mainPreference;
        this.f3842a = listPreference;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        CharSequence[] entries = this.f3842a.getEntries();
        int indexOf = Arrays.asList(this.f3842a.getEntryValues()).indexOf(obj);
        if (indexOf < 0 || indexOf >= entries.length) {
            return true;
        }
        this.f3842a.setSummary(entries[indexOf]);
        return true;
    }
}
