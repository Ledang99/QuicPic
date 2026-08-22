package com.alensw.p038ui.activity;

import android.content.SharedPreferences;
import android.preference.ListPreference;
import android.preference.Preference;
import com.alensw.PicFolder.R;
import com.alensw.p038ui.p039a.C1071f;
import org.apache.http.message.TokenParser;

/* renamed from: com.alensw.ui.activity.aj */
/* loaded from: classes.dex */
class C1104aj implements Preference.OnPreferenceChangeListener {

    /* renamed from: a */
    final /* synthetic */ String f3714a;

    /* renamed from: b */
    final /* synthetic */ SharedPreferences f3715b;

    /* renamed from: c */
    final /* synthetic */ Integer f3716c;

    /* renamed from: d */
    final /* synthetic */ ListPreference f3717d;

    /* renamed from: e */
    final /* synthetic */ String f3718e;

    /* renamed from: f */
    final /* synthetic */ MainPreference f3719f;

    C1104aj(MainPreference mainPreference, String str, SharedPreferences sharedPreferences, Integer num, ListPreference listPreference, String str2) {
        this.f3719f = mainPreference;
        this.f3714a = str;
        this.f3715b = sharedPreferences;
        this.f3716c = num;
        this.f3717d = listPreference;
        this.f3718e = str2;
    }

    @Override // android.preference.Preference.OnPreferenceChangeListener
    public boolean onPreferenceChange(Preference preference, Object obj) {
        if (!this.f3714a.equals(obj)) {
            this.f3717d.setSummary(obj.toString() + TokenParser.f5042SP + this.f3718e);
            return true;
        }
        this.f3715b.edit().putString("slideshow_interval", this.f3716c.toString()).commit();
        C1071f.m3740a(this.f3719f, R.string.slideshow_interval, this.f3716c, (CharSequence) null, new C1105ak(this));
        return true;
    }
}
