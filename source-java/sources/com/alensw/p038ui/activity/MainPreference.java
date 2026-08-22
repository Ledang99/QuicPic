package com.alensw.p038ui.activity;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceScreen;
import android.preference.SwitchPreference;
import android.view.MenuItem;
import android.widget.Toast;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.p022a.C0635q;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.AlertDialogC1089x;
import com.alensw.p038ui.view.ConfirmPreference;
import com.alensw.updater.UpdateView;
import com.alensw.utils.MIUIUtils;
import java.util.Locale;
import org.apache.http.message.TokenParser;
import org.apache.http.protocol.HTTP;

/* loaded from: classes.dex */
public class MainPreference extends C1122ba {

    /* renamed from: g */
    private Runnable f3681g = new RunnableC1157z(this);

    /* renamed from: a */
    public static Intent m3754a(Context context) {
        boolean equals = " ".equals(context.getResources().getConfiguration().locale.getLanguage());
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(HTTP.PLAIN_TEXT_TYPE);
        Object[] objArr = new Object[1];
        objArr[0] = equals ? "http://t.cn/zWYtuBy" : "https://github.com/WSTxda/QP-Gallery-Releases";
        intent.putExtra("android.intent.extra.TEXT", context.getString(R.string.share_message, objArr));
        return intent;
    }

    private void a__$appendPatch(PreferenceScreen preferenceScreen) {
        if (preferenceScreen.getTitle().equals(getResources().getString(R.string.update_auto_desc))) {
            Intent intent = new Intent();
            intent.setClass(getApplicationContext(), UpdateView.class);
            startActivity(intent);
        }
    }

    private void a__$appendPatch2(PreferenceScreen preferenceScreen) {
        if (preferenceScreen.getTitle().equals(getString(R.string.view))) {
            try {
                Preference findPreference = findPreference("disable_battery_opt");
                if (isBatteryOptimizationEnabled(false).booleanValue()) {
                    getPreferenceScreen().removePreference(findPreference);
                }
                findPreference.setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() { // from class: com.alensw.ui.activity.MainPreference.1
                    @Override // android.preference.Preference.OnPreferenceClickListener
                    public boolean onPreferenceClick(Preference preference) {
                        return MainPreference.this.isBatteryOptimizationEnabled(true).booleanValue();
                    }
                });
            } catch (Exception e) {
            }
        }
    }

    private void a__$appendSource(PreferenceScreen preferenceScreen) {
        super.mo3759a(preferenceScreen);
        SharedPreferences sharedPreferences = getPreferenceManager().getSharedPreferences();
        CharSequence title = preferenceScreen.getTitle();
        if (title.equals(getString(R.string.interface_res_0x7f0a003c))) {
            preferenceScreen.findPreference("main_theme").setOnPreferenceClickListener(new C1153v(this));
            return;
        }
        if (title.equals(getString(R.string.local_albums))) {
            preferenceScreen.findPreference("included_folders").setIntent(PathListActivity.m3761a((Context) this, false));
            preferenceScreen.findPreference("excluded_folders").setIntent(PathListActivity.m3761a((Context) this, true));
            SwitchPreference switchPreference = (SwitchPreference) preferenceScreen.findPreference("crop_thumbnail");
            switchPreference.setOnPreferenceClickListener(new C1095aa(this, switchPreference));
            preferenceScreen.findPreference("default_sort").setOnPreferenceClickListener(new C1096ab(this, sharedPreferences));
            return;
        }
        if (title.equals(getString(R.string.view))) {
            m3757a((ListPreference) preferenceScreen.findPreference("screen_orientation"));
            if (Build.VERSION.SDK_INT < 16) {
                m3845a(preferenceScreen, "auto_hide_navigate_bar");
                return;
            } else {
                if (Build.VERSION.SDK_INT < 19) {
                    SwitchPreference switchPreference2 = (SwitchPreference) preferenceScreen.findPreference("auto_hide_navigate_bar");
                    switchPreference2.setOnPreferenceClickListener(new C1097ac(this, switchPreference2));
                    return;
                }
                return;
            }
        }
        if (title.equals(getString(R.string.security))) {
            SwitchPreference switchPreference3 = (SwitchPreference) preferenceScreen.findPreference("password_protect");
            String string = sharedPreferences.getString("password", "");
            if (string.length() > 0) {
                switchPreference3.setChecked(true);
                switchPreference3.setSummary(Character.isDigit(string.charAt(0)) ? R.string.password_mode_pin : R.string.password_mode_pattern);
            } else {
                switchPreference3.setChecked(false);
            }
            switchPreference3.setOnPreferenceClickListener(new C1099ae(this, switchPreference3, sharedPreferences));
            C1102ah c1102ah = new C1102ah(this, sharedPreferences);
            for (int i = 1; i < preferenceScreen.getPreferenceCount(); i++) {
                Preference preference = preferenceScreen.getPreference(i);
                if ((preference instanceof SwitchPreference) && "password_protect".equals(preference.getDependency())) {
                    preference.setTitle("" + ((Object) preference.getTitle()));
                    preference.setOnPreferenceClickListener(c1102ah);
                }
            }
            return;
        }
        if (title.equals(getString(R.string.slideshow))) {
            ListPreference listPreference = (ListPreference) preferenceScreen.findPreference("slideshow_animation");
            int length = listPreference.getEntries().length;
            CharSequence[] charSequenceArr = new String[length];
            for (int i2 = 0; i2 < length; i2++) {
                charSequenceArr[i2] = Integer.toString(i2);
            }
            listPreference.setEntryValues(charSequenceArr);
            m3757a(listPreference);
            ListPreference listPreference2 = (ListPreference) preferenceScreen.findPreference("slideshow_interval");
            Integer valueOf = Integer.valueOf(C0742b.m2960a(sharedPreferences.getString("slideshow_interval", "3"), 3));
            String string2 = getString(R.string.custom);
            String m2971a = C0742b.m2971a(getResources(), "seconds", "s");
            int[] iArr = {3, 5, 10, 30, 60, 0};
            String[] strArr = new String[iArr.length];
            for (int i3 = 0; i3 < iArr.length - 1; i3++) {
                strArr[i3] = Integer.toString(iArr[i3]);
            }
            strArr[iArr.length - 1] = string2;
            listPreference2.setEntries(strArr);
            listPreference2.setEntryValues(strArr);
            listPreference2.setSummary(valueOf.toString() + TokenParser.f5042SP + m2971a);
            listPreference2.setOnPreferenceChangeListener(new C1104aj(this, string2, sharedPreferences, valueOf, listPreference2, m2971a));
            return;
        }
        if (title.equals(getString(R.string.cache))) {
            ((ConfirmPreference) preferenceScreen.findPreference("clear_preview_cache")).f4337a = new RunnableC1106al(this);
            ((ConfirmPreference) preferenceScreen.findPreference("clear_thumb_cache")).f4337a = this.f3681g;
            return;
        }
        if (title.equals(getString(R.string.android_11_warning))) {
            Locale locale = getResources().getConfiguration().locale;
            boolean equals = " ".equals(locale.getLanguage());
            String packageName = getPackageName();
            try {
                setTitle(getString(R.string.app_name) + ": " + getPackageManager().getPackageInfo(packageName, 0).versionName);
            } catch (Throwable th) {
            }
            Preference findPreference = preferenceScreen.findPreference("author");
            String str = (equals ? "快宜团队" : "wstxda@gmail.com") + "";
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("mailto:" + str));
            intent.putExtra("subject", getString(R.string.app_name));
            findPreference.setSummary(str);
            m3758a(findPreference, intent);
            Preference findPreference2 = preferenceScreen.findPreference("blog");
            String str2 = equals ? "t.me/WSTprojects" : "t.me/WSTprojects";
            findPreference2.setSummary(str2);
            findPreference2.setIntent(new Intent("android.intent.action.VIEW", Uri.parse("http://" + str2)));
            Preference findPreference3 = preferenceScreen.findPreference("translator");
            if (findPreference3 != null) {
                if (equals) {
                    m3845a(preferenceScreen, "translator");
                } else {
                    CharSequence summary = findPreference3.getSummary();
                    if (summary == null || summary.length() <= 0) {
                        m3845a(preferenceScreen, "translator");
                    } else {
                        String charSequence = summary.toString();
                        if (charSequence.indexOf(64) >= 0) {
                            m3758a(findPreference3, new Intent("android.intent.action.VIEW", Uri.parse("mailto:" + charSequence)));
                        }
                    }
                }
            }
            preferenceScreen.findPreference("details").setOnPreferenceClickListener(new C1108an(this, packageName));
            Preference findPreference4 = preferenceScreen.findPreference("donate");
            if (findPreference4 != null) {
                if (Locale.SIMPLIFIED_CHINESE.equals(locale)) {
                    preferenceScreen.removePreference(findPreference4);
                } else {
                    findPreference4.setIntent(new Intent("android.intent.action.VIEW", Uri.parse("https://github.com/WSTxda/QP-Gallery-Releases")));
                }
            }
            preferenceScreen.findPreference("share").setIntent(Intent.createChooser(m3754a((Context) this), getString(R.string.share)));
        }
    }

    private void a__$appendSource2(PreferenceScreen preferenceScreen) {
        a__$appendSource(preferenceScreen);
        a__$appendPatch(preferenceScreen);
    }

    /* renamed from: a */
    protected void m3756a(int i) {
        Toast.makeText(this, i, 1).show();
    }

    /* renamed from: a */
    protected void m3757a(ListPreference listPreference) {
        listPreference.setSummary(listPreference.getEntry());
        listPreference.setOnPreferenceChangeListener(new C1156y(this, listPreference));
    }

    /* renamed from: a */
    protected void m3758a(Preference preference, Intent intent) {
        preference.setOnPreferenceClickListener(new C1155x(this, intent));
    }

    @Override // com.alensw.p038ui.activity.C1122ba
    /* renamed from: a */
    protected void mo3759a(PreferenceScreen preferenceScreen) {
        a__$appendSource2(preferenceScreen);
        a__$appendPatch2(preferenceScreen);
    }

    /* renamed from: a */
    protected void m3760a(boolean z, SwitchPreference switchPreference) {
        AlertDialogC1089x.m3751a(this, z, new C1154w(this, switchPreference));
    }

    public Boolean isBatteryOptimizationEnabled(Boolean bool) {
        String packageName = getPackageName();
        PowerManager powerManager = (PowerManager) getSystemService("power");
        if (Build.VERSION.SDK_INT < 23) {
            return true;
        }
        boolean isIgnoringBatteryOptimizations = powerManager.isIgnoringBatteryOptimizations(packageName);
        if (!isIgnoringBatteryOptimizations && bool.booleanValue()) {
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.parse("package:" + getPackageName()));
            startActivity(intent);
            Intent intent2 = new Intent();
            intent2.setAction("android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS");
            intent2.setFlags(268435456);
            intent2.setData(Uri.parse("package:" + packageName));
            if (MIUIUtils.isMIUI()) {
                Toast.makeText(this, getString(R.string.disable_battery_optimization_miui_toast), 1).show();
            }
            startActivity(intent2);
        }
        return Boolean.valueOf(isIgnoringBatteryOptimizations);
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 1001 && i2 == -1) {
            recreate();
        } else {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // com.alensw.p038ui.activity.C1122ba, android.preference.PreferenceActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addPreferencesFromResource(R.xml.main_pref);
        String stringExtra = getIntent().getStringExtra("screen");
        if (stringExtra == null && bundle != null) {
            stringExtra = bundle.getString("screen");
        }
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen == null || stringExtra == null) {
            return;
        }
        int preferenceCount = preferenceScreen.getPreferenceCount();
        for (int i = 0; i < preferenceCount; i++) {
            Preference preference = preferenceScreen.getPreference(i);
            if ((preference instanceof PreferenceScreen) && stringExtra.equals(preference.getTitle())) {
                preference.getOnPreferenceClickListener().onPreferenceClick(preference);
                return;
            }
        }
    }

    @Override // com.alensw.p038ui.activity.C1122ba, android.preference.PreferenceActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int i = 2;
        SharedPreferences sharedPreferences = getPreferenceManager().getSharedPreferences();
        int i2 = sharedPreferences.getInt("default_sort", 0);
        switch (menuItem.getItemId()) {
            case R.id.help /* 2131296259 */:
                C1094a.m3782a(this, "android.intent.action.VIEW", "" + (" ".equals(getResources().getConfiguration().locale.getLanguage()) ? "" : "") + "");
                i = i2;
                break;
            case R.id.sort_default /* 2131296371 */:
                i = 0;
                break;
            case R.id.sort_by_name /* 2131296372 */:
                if (i2 == 2) {
                    i = 4;
                    break;
                }
                break;
            case R.id.sort_by_date /* 2131296373 */:
                if (i2 != 1) {
                    i = 1;
                    break;
                } else {
                    i = 3;
                    break;
                }
            case R.id.sort_by_exif /* 2131296374 */:
                if (i2 != 6) {
                    i = 6;
                    break;
                } else {
                    i = 5;
                    break;
                }
            case R.id.sort_by_size /* 2131296375 */:
                if (i2 != 7) {
                    i = 7;
                    break;
                } else {
                    i = 8;
                    break;
                }
            default:
                return super.onOptionsItemSelected(menuItem);
        }
        if (i == i2) {
            return true;
        }
        C0635q.m2430a(this).f2446a = i;
        QuickApp.m2042a(true);
        sharedPreferences.edit().putInt("default_sort", i).commit();
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.alensw.ui.activity.MainPreference$2] */
    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (getPreferenceScreen().getTitle().equals(getString(R.string.view))) {
            new Thread() { // from class: com.alensw.ui.activity.MainPreference.2
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    try {
                        Preference findPreference = MainPreference.this.findPreference("disable_battery_opt");
                        if (MainPreference.this.isBatteryOptimizationEnabled(false).booleanValue()) {
                            MainPreference.this.getPreferenceScreen().removePreference(findPreference);
                        }
                        Thread.sleep(1000L);
                        Preference findPreference2 = MainPreference.this.findPreference("disable_battery_opt");
                        if (MainPreference.this.isBatteryOptimizationEnabled(false).booleanValue()) {
                            MainPreference.this.getPreferenceScreen().removePreference(findPreference2);
                        }
                    } catch (Exception e) {
                    }
                }
            }.start();
        }
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen != null) {
            bundle.putString("screen", preferenceScreen.getTitle().toString());
        } else {
            bundle.remove("screen");
        }
    }

    @Override // android.app.Activity
    @TargetApi(11)
    public void recreate() {
        if (Build.VERSION.SDK_INT >= 11) {
            super.recreate();
            return;
        }
        Intent intent = new Intent(getIntent());
        intent.setClass(this, getClass());
        intent.addFlags(67108864);
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen != null) {
            intent.putExtra("screen", preferenceScreen.getTitle().toString());
        }
        startActivity(intent);
    }
}
