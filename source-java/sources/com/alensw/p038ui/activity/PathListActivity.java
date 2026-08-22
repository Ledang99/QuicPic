package com.alensw.p038ui.activity;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.p022a.C0613ba;
import com.alensw.p022a.C0633o;
import com.alensw.p023b.p025b.C0655b;
import com.alensw.p023b.p030g.MenuItemC0703l;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.AlertDialogC1052ae;
import com.p043b.p044a.C1387b;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes.dex */
public class PathListActivity extends ActivityC1109ao {

    /* renamed from: a */
    protected ArrayList f3682a;

    /* renamed from: b */
    protected BaseAdapter f3683b;

    /* renamed from: c */
    protected ListView f3684c;

    /* renamed from: d */
    protected boolean f3685d;

    /* renamed from: e */
    protected boolean f3686e;

    /* renamed from: f */
    protected final View.OnClickListener f3687f = new ViewOnClickListenerC1127bf(this);

    /* renamed from: a */
    public static Intent m3761a(Context context, boolean z) {
        Intent intent = new Intent(context, (Class<?>) PathListActivity.class);
        intent.putExtra("exclude_mode", z);
        return intent;
    }

    /* renamed from: b */
    protected void m3762b() {
        AlertDialogC1052ae.m3724a(this, this.f3686e ? 0 : 1, null, new C1129bh(this));
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    @TargetApi(14)
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f3684c = new ListView(this);
        setContentView(this.f3684c);
        m3820g(true);
        this.f3686e = getIntent().getBooleanExtra("exclude_mode", true);
        setTitle(this.f3686e ? R.string.excluded_folders : R.string.included_folders);
        this.f3682a = C0633o.m2410a(this).m2413a(this.f3686e);
        C0742b.m2988a((List) this.f3682a, (Comparator) C0655b.f2525a);
        this.f3683b = new C1128bg(this, getLayoutInflater(), C1387b.m4498a(getResources(), R.raw.ic_menu_cancel, ActivityC1109ao.m3794b(this, R.attr.colorMenuDrawable)));
        this.f3684c.setAdapter((ListAdapter) this.f3683b);
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    @TargetApi(11)
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuItem add = menu.add(0, R.id.add, 0, R.string.add);
        MenuItemC0703l.m2754a(this, add);
        mo1992a(add, 2);
        return true;
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.add /* 2131296320 */:
                m3762b();
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onStop() {
        super.onStop();
        if (this.f3685d) {
            C0633o.m2410a(this).m2415a(this.f3682a, this.f3686e);
            getContentResolver().notifyChange(C0613ba.m2269a('I'), null);
            QuickApp.m2042a(true);
            QuickApp.f2074q.m2451a(4, null, null);
            this.f3685d = false;
        }
    }
}
