package com.alensw.transfer;

import android.annotation.TargetApi;
import android.app.ActionBar;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.p011a.AbstractC0181j;
import android.support.v4.p011a.C0187p;
import android.support.v4.p011a.InterfaceC0195x;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.activity.C1094a;
import com.alensw.p038ui.activity.MainPreference;
import com.alensw.p038ui.p042d.C1294d;

/* loaded from: classes.dex */
public class TransferActivity extends ActivityC1109ao {

    /* renamed from: a */
    private TransferService f3371a;

    /* renamed from: b */
    private C0187p f3372b;

    /* renamed from: c */
    private TextView f3373c;

    /* renamed from: d */
    private TextView f3374d;

    /* renamed from: e */
    private C0964a f3375e;

    /* renamed from: f */
    private C0964a f3376f;

    /* renamed from: g */
    private final Runnable f3377g = new RunnableC1030j(this);

    /* renamed from: h */
    private final ServiceConnection f3378h = new ServiceConnectionC1031k(this);

    /* renamed from: i */
    private final AbstractC0181j f3379i = new C1032l(this);

    /* renamed from: j */
    private final InterfaceC0195x f3380j = new C1033m(this);

    /* renamed from: a */
    public static void m3475a(ViewGroup viewGroup, int i) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt.getClass().getName().endsWith("$TabView")) {
                childAt.setBackgroundDrawable(C1294d.m4206a(i));
            } else if (childAt instanceof ViewGroup) {
                m3475a((ViewGroup) childAt, i);
            }
        }
    }

    /* renamed from: b */
    private void m3477b() {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(getPackageName(), TransferActivity.class.getName()));
        intent.addFlags(69730304);
        Intent intent2 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
        intent2.putExtra("android.intent.extra.shortcut.NAME", getString(R.string.transfer));
        intent2.putExtra("android.intent.extra.shortcut.INTENT", intent);
        intent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(this, R.drawable.ic_about));
        intent2.putExtra("duplicate", false);
        sendBroadcast(intent2);
    }

    /* renamed from: c */
    private void m3479c() {
        if (this.f3371a == null) {
            bindService(new Intent(this, (Class<?>) TransferService.class), this.f3378h, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m3481d() {
        if (this.f3371a != null) {
            this.f3375e.mo3526b(this.f3371a);
            this.f3376f.mo3526b(this.f3371a);
            this.f3371a.m3515d();
            this.f3371a = null;
            unbindService(this.f3378h);
        }
    }

    /* renamed from: a */
    public void m3487a(int i) {
        String string = getString(R.string.transfer_list);
        if (i > 0) {
            string = string + " (" + i + ")";
        }
        if (this.f3731J != null) {
            this.f3731J.getTabAt(1).setText(string);
        } else if (this.f3374d != null) {
            this.f3374d.setText(string);
        }
    }

    /* renamed from: b */
    public void m3488b(int i) {
        this.f3372b.setCurrentItem(i);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        this.f3375e.mo3519a(i, i2, intent);
        this.f3376f.mo3519a(i, i2, intent);
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f3375e.mo3523a(configuration);
        this.f3376f.mo3523a(configuration);
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    @TargetApi(11)
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f3372b = new C0187p(this);
        setContentView(this.f3372b);
        m3820g(true);
        this.f3375e = new C0987ac();
        this.f3375e.m3521a(this, this.f3372b);
        this.f3375e.mo3520a(this);
        this.f3376f = new C1039s();
        this.f3376f.m3521a(this, this.f3372b);
        this.f3376f.mo3520a(this);
        this.f3372b.setOnPageChangeListener(this.f3380j);
        this.f3372b.setAdapter(this.f3379i);
        if (this.f3731J != null) {
            ActionBar.Tab text = this.f3731J.newTab().setText(R.string.send);
            ActionBar.Tab text2 = this.f3731J.newTab().setText(R.string.transfer_list);
            C1027g c1027g = new C1027g(this, text);
            text.setTabListener(c1027g);
            text2.setTabListener(c1027g);
            this.f3731J.setNavigationMode(2);
            this.f3731J.addTab(text);
            this.f3731J.addTab(text2);
            if (Build.VERSION.SDK_INT < 21) {
                View o = m3830o();
                if (o instanceof ViewGroup) {
                    m3475a((ViewGroup) o, this.f3745X);
                }
            }
        } else if (this.f3732K != null) {
            View inflate = View.inflate(this, R.layout.tab_two_items, null);
            int titleColor = this.f3732K.getTitleColor();
            this.f3373c = (TextView) inflate.findViewById(R.id.first_item);
            this.f3374d = (TextView) inflate.findViewById(R.id.second_item);
            this.f3373c.setText(R.string.send);
            this.f3374d.setText(R.string.transfer_list);
            this.f3373c.setTextColor(titleColor);
            this.f3374d.setTextColor(titleColor);
            this.f3373c.setBackgroundDrawable(C1294d.m4206a(titleColor));
            this.f3374d.setBackgroundDrawable(C1294d.m4206a(titleColor));
            ViewOnClickListenerC1028h viewOnClickListenerC1028h = new ViewOnClickListenerC1028h(this);
            this.f3373c.setOnClickListener(viewOnClickListenerC1028h);
            this.f3374d.setOnClickListener(viewOnClickListenerC1028h);
            this.f3373c.setSelected(true);
            this.f3374d.setSelected(false);
            this.f3732K.m4324a(inflate, new LinearLayout.LayoutParams(-2, -1));
        }
        ((QuickApp) getApplication()).m2051a(this.f3377g);
        startService(new Intent(this, (Class<?>) TransferService.class));
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        String str = getString(R.string.share) + ": " + getString(R.string.app_name);
        menu.add(0, R.id.rename, 0, R.string.rename);
        menu.add(0, R.id.share, 0, str);
        return true;
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onDestroy() {
        ((QuickApp) getApplication()).m2054b(this.f3377g);
        m3481d();
        this.f3375e.mo3529e();
        this.f3376f.mo3529e();
        super.onDestroy();
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (this.f3375e.mo3524a(menuItem) || this.f3376f.mo3524a(menuItem)) {
            return true;
        }
        int itemId = menuItem.getItemId();
        switch (itemId) {
            case R.id.share /* 2131296266 */:
                C1094a.m3769a(this, MainPreference.m3754a(this), R.string.share, m3809c(itemId), new C1029i(this));
                break;
            case R.id.desktop_link /* 2131296341 */:
                m3477b();
                break;
        }
        return true;
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.f3375e.m3528d();
        this.f3376f.m3528d();
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f3375e.m3527c();
        this.f3376f.m3527c();
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onStart() {
        super.onStart();
        this.f3375e.mo3518a();
        this.f3376f.mo3518a();
        m3479c();
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onStop() {
        super.onStop();
        this.f3375e.mo3525b();
        this.f3376f.mo3525b();
    }
}
