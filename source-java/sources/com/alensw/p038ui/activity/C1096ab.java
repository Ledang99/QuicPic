package com.alensw.p038ui.activity;

import android.content.SharedPreferences;
import android.preference.Preference;
import android.view.View;
import com.alensw.PicFolder.R;
import org.apache.commons.logging.impl.SimpleLog;

/* renamed from: com.alensw.ui.activity.ab */
/* loaded from: classes.dex */
class C1096ab implements Preference.OnPreferenceClickListener {

    /* renamed from: a */
    final /* synthetic */ SharedPreferences f3700a;

    /* renamed from: b */
    final /* synthetic */ MainPreference f3701b;

    C1096ab(MainPreference mainPreference, SharedPreferences sharedPreferences) {
        this.f3701b = mainPreference;
        this.f3700a = sharedPreferences;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        int i;
        boolean z = false;
        switch (this.f3700a.getInt("default_sort", 0)) {
            case 1:
                i = R.id.sort_by_date;
                break;
            case 2:
                z = true;
                i = R.id.sort_by_name;
                break;
            case 3:
                z = true;
                i = R.id.sort_by_date;
                break;
            case 4:
                i = R.id.sort_by_name;
                break;
            case 5:
                z = true;
                i = R.id.sort_by_exif;
                break;
            case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                i = R.id.sort_by_exif;
                break;
            case SimpleLog.LOG_LEVEL_OFF /* 7 */:
                z = true;
                i = R.id.sort_by_size;
                break;
            case 8:
                i = R.id.sort_by_size;
                break;
            default:
                i = R.id.sort_default;
                break;
        }
        C1094a.m3778a(this.f3701b, (View) null, new int[]{R.id.sort_default, R.id.sort_by_name, R.id.sort_by_date, R.id.sort_by_exif, R.id.sort_by_size}, i, z);
        return true;
    }
}
