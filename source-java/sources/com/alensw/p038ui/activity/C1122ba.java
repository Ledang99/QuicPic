package com.alensw.p038ui.activity;

import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceGroup;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.p023b.p030g.C0692a;
import com.alensw.p023b.p030g.MenuItemC0703l;
import com.alensw.p038ui.view.TitleBar;
import java.util.Stack;

/* renamed from: com.alensw.ui.activity.ba */
/* loaded from: classes.dex */
public class C1122ba extends PreferenceActivity {

    /* renamed from: a */
    public int f3777a;

    /* renamed from: b */
    public int f3778b;

    /* renamed from: c */
    protected int f3779c;

    /* renamed from: d */
    protected int f3780d;

    /* renamed from: e */
    protected TitleBar f3781e;

    /* renamed from: h */
    private int f3784h;

    /* renamed from: i */
    private int f3785i;

    /* renamed from: j */
    private Animation f3786j;

    /* renamed from: g */
    private final Stack f3783g = new Stack();

    /* renamed from: f */
    protected final View.OnClickListener f3782f = new ViewOnClickListenerC1123bb(this);

    /* renamed from: a */
    protected void mo3759a(PreferenceScreen preferenceScreen) {
        setPreferenceScreen(preferenceScreen);
        if (this.f3784h != 0) {
            try {
                if (this.f3786j == null) {
                    this.f3786j = AnimationUtils.loadAnimation(this, this.f3784h);
                }
                getListView().startAnimation(this.f3786j);
            } catch (Throwable th) {
            }
        }
    }

    @TargetApi(11)
    /* renamed from: a */
    public void m3843a(MenuItem menuItem, int i) {
        if (menuItem != null) {
            if (ActivityC1109ao.f3725F) {
                menuItem.setShowAsAction(i);
            }
            if (this.f3781e == null || !(menuItem instanceof MenuItemC0703l)) {
                return;
            }
            this.f3781e.m4322a(menuItem, i);
        }
    }

    /* renamed from: a */
    public void m3844a(ViewGroup viewGroup) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt instanceof ViewGroup) {
                m3844a((ViewGroup) childAt);
            } else if (childAt.getId() == 16908310 && Build.VERSION.SDK_INT < 11 && (childAt instanceof TextView)) {
                ((TextView) childAt).setTextSize(2, 18.0f);
            } else if (childAt instanceof CheckBox) {
                ((CheckBox) childAt).setButtonDrawable(C0692a.m2731a(childAt.getResources(), this.f3780d, this.f3779c, false));
            } else if (childAt.getClass() == ImageView.class) {
                childAt.setBackgroundDrawable(null);
                ((ImageView) childAt).setImageDrawable(null);
            }
        }
    }

    /* renamed from: a */
    protected boolean m3845a(PreferenceGroup preferenceGroup, String str) {
        int preferenceCount = preferenceGroup.getPreferenceCount();
        for (int i = 0; i < preferenceCount; i++) {
            Preference preference = preferenceGroup.getPreference(i);
            String key = preference.getKey();
            if (key != null && key.equals(str)) {
                preferenceGroup.removePreference(preference);
                return true;
            }
            if ((preference instanceof PreferenceGroup) && m3845a((PreferenceGroup) preference, str)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.preference.PreferenceActivity
    public void addPreferencesFromResource(int i) {
        super.addPreferencesFromResource(i);
        PreferenceScreen preferenceScreen = getPreferenceScreen();
        if (preferenceScreen != null) {
            preferenceScreen.setTitle(getTitle());
            m3846b(preferenceScreen);
        }
    }

    /* renamed from: b */
    protected void m3846b(PreferenceScreen preferenceScreen) {
        PreferenceManager preferenceManager = getPreferenceManager();
        int preferenceCount = preferenceScreen.getPreferenceCount();
        for (int i = 0; i < preferenceCount; i++) {
            Preference preference = preferenceScreen.getPreference(i);
            if (preference instanceof PreferenceScreen) {
                PreferenceScreen preferenceScreen2 = (PreferenceScreen) preference;
                PreferenceScreen createPreferenceScreen = preferenceManager.createPreferenceScreen(this);
                int preferenceCount2 = preferenceScreen2.getPreferenceCount();
                for (int i2 = 0; i2 < preferenceCount2; i2++) {
                    createPreferenceScreen.addPreference(preferenceScreen2.getPreference(i2));
                }
                createPreferenceScreen.setKey(preferenceScreen2.getKey());
                createPreferenceScreen.setTitle(preferenceScreen2.getTitle());
                preference.setOnPreferenceClickListener(new C1126be(this, createPreferenceScreen));
                m3846b(preferenceScreen2);
                preferenceScreen2.removeAll();
            }
        }
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f3783g.isEmpty()) {
            super.onBackPressed();
        } else {
            mo3759a((PreferenceScreen) this.f3783g.pop());
        }
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    @TargetApi(11)
    public void onCreate(Bundle bundle) {
        if (Settings.System.getFloat(getContentResolver(), "transition_animation_scale", 1.0f) > 0.0f) {
            this.f3784h = getResources().getIdentifier("dialog_enter", "anim", "android");
            this.f3785i = getResources().getIdentifier("dialog_exit", "anim", "android");
            super.overridePendingTransition(this.f3784h, this.f3785i);
        }
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.f3777a = defaultSharedPreferences.getInt("main_theme", 0);
        setTheme(ActivityC1109ao.m3799h(this.f3777a));
        if (this.f3777a == -3 || this.f3777a == -2) {
            this.f3778b = defaultSharedPreferences.getInt("actionbar_color", this.f3778b);
        } else {
            this.f3778b = ActivityC1109ao.m3794b(this, R.attr.colorActionBar);
        }
        this.f3780d = getResources().getDimensionPixelSize(R.dimen.check_box_size);
        this.f3779c = ActivityC1109ao.m3794b(this, R.attr.colorMenuDrawable);
        if (Build.VERSION.SDK_INT < 11) {
            requestWindowFeature(7);
        }
        super.onCreate(bundle);
        ((QuickApp) getApplication()).m2050a((Activity) this);
        Window window = getWindow();
        ListView listView = getListView();
        if (ActivityC1109ao.f3725F) {
            ActionBar actionBar = getActionBar();
            actionBar.setDisplayHomeAsUpEnabled(true);
            if (this.f3777a == -3 || this.f3777a == -2) {
                actionBar.setBackgroundDrawable(new ColorDrawable(this.f3778b));
                if (Build.VERSION.SDK_INT >= 14) {
                    actionBar.setSplitBackgroundDrawable(new ColorDrawable(this.f3778b));
                }
                if (Build.VERSION.SDK_INT >= 21) {
                    window.setStatusBarColor(this.f3778b);
                }
            }
            ActivityC1109ao.m3789a(this, ActivityC1109ao.m3794b(this, R.attr.colorActionIcon));
        } else {
            window.setFeatureInt(7, R.layout.title_bar);
            TitleBar titleBar = (TitleBar) findViewById(R.id.title_bar);
            titleBar.setBackgroundColor(this.f3778b);
            titleBar.setTitle(super.getTitle());
            titleBar.setOnHomeClickListener(this.f3782f);
            titleBar.m4325a(true);
            this.f3781e = titleBar;
        }
        if (Build.VERSION.SDK_INT < 21) {
            listView.setOnHierarchyChangeListener(new ViewGroupOnHierarchyChangeListenerC1124bc(this));
        }
    }

    @Override // android.preference.PreferenceActivity, android.app.ListActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ((QuickApp) getApplication()).m2053b(this);
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case android.R.id.home:
            case R.id.home /* 2131296307 */:
                onBackPressed();
                return true;
            default:
                return false;
        }
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        if (this.f3781e != null) {
            this.f3781e.m4330d();
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        if (this.f3781e == null) {
            return true;
        }
        this.f3781e.m4321a(menu);
        return true;
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        ((QuickApp) getApplication()).m2056c(this);
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        ((QuickApp) getApplication()).m2058d(this);
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i) {
        if (this.f3781e != null) {
            this.f3781e.setTitle(charSequence);
        }
        super.onTitleChanged(charSequence, i);
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        setContentView(getLayoutInflater().inflate(i, (ViewGroup) null));
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        boolean z = Build.VERSION.SDK_INT == 19;
        if (z) {
            C1125bd c1125bd = new C1125bd(this, this);
            c1125bd.addView(view);
            view = c1125bd;
        }
        super.setContentView(view);
        if (z) {
            Window window = getWindow();
            window.addFlags(67108864);
            window.getDecorView().setSystemUiVisibility(1280);
        }
    }
}
