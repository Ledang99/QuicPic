package com.alensw.cloud;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.alensw.PicFolder.R;
import com.alensw.p023b.p030g.MenuC0693b;
import com.alensw.p023b.p035l.C0741a;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.view.AbstractC1381z;
import com.p043b.p044a.C1387b;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class UrlTaskActivity extends ActivityC1109ao {

    /* renamed from: a */
    private int f2862a;

    /* renamed from: b */
    private int f2863b;

    /* renamed from: c */
    private Drawable f2864c;

    /* renamed from: d */
    private Drawable f2865d;

    /* renamed from: e */
    private ListView f2866e;

    /* renamed from: f */
    private UrlTaskService f2867f;

    /* renamed from: g */
    private final ArrayList f2868g = new ArrayList(128);

    /* renamed from: h */
    private final ServiceConnection f2869h = new ServiceConnectionC0866ag(this);

    /* renamed from: i */
    private final InterfaceC0872am f2870i = new C0867ah(this);

    /* renamed from: j */
    private final View.OnClickListener f2871j = new ViewOnClickListenerC0868ai(this);

    /* renamed from: k */
    private final AbstractC1381z f2872k = new C0869aj(this, R.id.icon, R.id.title);

    /* renamed from: a */
    public static Intent m3101a(Context context, int i) {
        Intent intent = new Intent(context, (Class<?>) UrlTaskActivity.class);
        intent.putExtra("url_task_mode", i);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3105a(C0863ad c0863ad) {
        if (c0863ad.f3140d == 4) {
            if (this.f2867f != null) {
                this.f2867f.m3132a(this.f2862a, c0863ad);
            } else {
                startService(UrlTaskService.m3121a(this, this.f2862a, c0863ad.f3137a, c0863ad.f3138b));
                m3107b();
            }
        }
    }

    /* renamed from: b */
    private void m3107b() {
        if (this.f2867f == null) {
            bindService(new Intent(this, (Class<?>) UrlTaskService.class), this.f2869h, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3109b(C0863ad c0863ad) {
        int childCount = this.f2866e.getChildCount();
        for (int i = 0; i < childCount; i++) {
            C0870ak c0870ak = (C0870ak) this.f2866e.getChildAt(i).getTag();
            if (c0863ad.equals(c0870ak.f3147b.getTag())) {
                c0870ak.f3147b.setIndeterminate(c0863ad.f3139c == 0);
                c0870ak.f3147b.setProgress(c0863ad.f3139c);
                c0870ak.f3147b.setVisibility(0);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m3111c() {
        if (this.f2867f == null || this.f2867f.m3136b(this.f2862a)) {
            return;
        }
        C0741a.m2955a(getApplication(), UrlTaskService.m3128c(this.f2862a));
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    @TargetApi(11)
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f2862a = getIntent().getIntExtra("url_task_mode", 2);
        this.f2866e = new ListView(this);
        setContentView(this.f2866e);
        m3820g(true);
        setTitle(this.f2862a == 1 ? R.string.downloading : R.string.uploading);
        Resources resources = getResources();
        int m3794b = ActivityC1109ao.m3794b(this, R.attr.colorMenuDrawable);
        this.f2863b = resources.getColor(R.color.material_warning);
        this.f2864c = C1387b.m4498a(resources, R.raw.ic_menu_cancel, m3794b);
        this.f2865d = C1387b.m4498a(resources, R.raw.ic_menu_retry, m3794b);
        this.f2866e.setAdapter((ListAdapter) this.f2872k);
        this.f2866e.setRecyclerListener(new C0865af(this));
        m3107b();
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuC0693b.m2735a(this, R.menu.upload_file, menu);
        m3801a(menu, R.id.retry, 2);
        m3801a(menu, R.id.clear, 2);
        return true;
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        m3111c();
        if (this.f2867f != null) {
            unbindService(this.f2869h);
        }
        this.f2872k.m4488a();
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.clear /* 2131296321 */:
                if (this.f2867f != null) {
                    this.f2867f.m3131a(this.f2862a);
                    if (!this.f2867f.m3136b(this.f2862a)) {
                        finish();
                    }
                }
                return true;
            case R.id.retry /* 2131296377 */:
                Iterator it = this.f2868g.iterator();
                while (it.hasNext()) {
                    m3105a((C0863ad) it.next());
                }
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onStart() {
        super.onStart();
    }
}
