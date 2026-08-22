package com.alensw.p038ui.activity;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ViewTreeObserver;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ListAdapter;
import com.alensw.PicFolder.R;
import com.p043b.p044a.C1387b;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes.dex */
public class SelectThemeActivity extends ActivityC1109ao {

    /* renamed from: a */
    public static final int[] f3688a = {0, 1, 2, 3};

    /* renamed from: b */
    public static final int[] f3689b = {-28928, -37632, -49920, -2818048, -3862174, -1035142, -2804484, -5635841, -8630785, -10354454, -14064897, -12285185, -16736539, -16734786, -16738393, -16738680, -16731493, -16729737, -16731061};

    /* renamed from: c */
    private GridView f3690c;

    /* renamed from: d */
    private Drawable f3691d;

    /* renamed from: e */
    private int f3692e;

    /* renamed from: f */
    private int f3693f = 144;

    /* renamed from: g */
    private final ArrayList f3694g = new ArrayList(64);

    /* renamed from: h */
    private final HashMap f3695h = new HashMap(4);

    /* renamed from: i */
    private final ViewTreeObserver.OnGlobalLayoutListener f3696i = new ViewTreeObserverOnGlobalLayoutListenerC1130bi(this);

    /* renamed from: j */
    private final BaseAdapter f3697j = new C1132bk(this);

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f3690c = new GridView(this);
        this.f3690c.setNumColumns(2);
        this.f3690c.getViewTreeObserver().addOnGlobalLayoutListener(this.f3696i);
        setContentView(this.f3690c);
        m3820g(true);
        Resources resources = getResources();
        float f = resources.getDisplayMetrics().density;
        this.f3692e = (int) (24.0f * f);
        this.f3693f = (int) (144.0f * f);
        this.f3691d = C1387b.m4498a(resources, R.raw.ic_menu_done, this.f3746Y);
        int i = (int) (f * 4.0f);
        this.f3690c.setHorizontalSpacing(i);
        this.f3690c.setVerticalSpacing(i);
        this.f3690c.setPadding(i, i, i, i);
        this.f3690c.setBackgroundColor(-2236963);
        this.f3690c.setDrawSelectorOnTop(Build.VERSION.SDK_INT >= 11);
        Resources.Theme newTheme = resources.newTheme();
        TypedValue typedValue = new TypedValue();
        for (int i2 : f3688a) {
            int h = m3799h(i2);
            newTheme.applyStyle(h, true);
            newTheme.resolveAttribute(R.attr.colorActionBar, typedValue, true);
            int color = resources.getColor(typedValue.resourceId);
            newTheme.resolveAttribute(R.attr.colorBackground, typedValue, true);
            int color2 = resources.getColor(typedValue.resourceId);
            newTheme.resolveAttribute(R.attr.colorActionIcon, typedValue, true);
            this.f3694g.add(new C1133bl(i2, h, color, color2, resources.getColor(typedValue.resourceId)));
        }
        newTheme.applyStyle(R.style.Theme_DarkColor, true);
        newTheme.resolveAttribute(R.attr.colorBackground, typedValue, true);
        int color3 = resources.getColor(typedValue.resourceId);
        newTheme.resolveAttribute(R.attr.colorActionIcon, typedValue, true);
        int color4 = resources.getColor(typedValue.resourceId);
        newTheme.applyStyle(R.style.Theme_LightColor, true);
        newTheme.resolveAttribute(R.attr.colorBackground, typedValue, true);
        int color5 = resources.getColor(typedValue.resourceId);
        newTheme.resolveAttribute(R.attr.colorActionIcon, typedValue, true);
        int color6 = resources.getColor(typedValue.resourceId);
        for (int i3 : f3689b) {
            if ((i3 >>> 24) == 255) {
                this.f3694g.add(new C1133bl(-3, R.style.Theme_DarkColor, i3, color3, color4));
            }
            this.f3694g.add(new C1133bl(-2, R.style.Theme_LightColor, i3, color5, color6));
        }
        this.f3690c.setAdapter((ListAdapter) this.f3697j);
        this.f3690c.setOnItemClickListener(new C1131bj(this));
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onDestroy() {
        this.f3690c.getViewTreeObserver().removeGlobalOnLayoutListener(this.f3696i);
        super.onDestroy();
    }
}
