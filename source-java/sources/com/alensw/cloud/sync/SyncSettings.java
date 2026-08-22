package com.alensw.cloud.sync;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.alensw.PicFolder.GalleryActivity;
import com.alensw.PicFolder.R;
import com.alensw.cloud.ShareToCloudActivity;
import com.alensw.p023b.p030g.C0692a;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.activity.C1094a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Map;
import org.apache.http.HttpStatus;

/* loaded from: classes.dex */
public class SyncSettings extends ActivityC1109ao {

    /* renamed from: a */
    private int f3277a;

    /* renamed from: b */
    private int f3278b;

    /* renamed from: c */
    private int f3279c;

    /* renamed from: d */
    private int f3280d;

    /* renamed from: f */
    private LinearLayout f3282f;

    /* renamed from: g */
    private SharedPreferences f3283g;

    /* renamed from: e */
    private Uri f3281e = null;

    /* renamed from: h */
    private final Handler f3284h = new Handler(Looper.getMainLooper());

    /* renamed from: i */
    private final C0951s f3285i = new C0951s();

    /* renamed from: j */
    private final ArrayList f3286j = new ArrayList(8);

    /* renamed from: k */
    private final BaseAdapter f3287k = new C0947o(this);

    /* renamed from: l */
    private final ContentObserver f3288l = new C0949q(this, this.f3284h);

    /* renamed from: m */
    private final Comparator f3289m = new C0950r(this);

    /* renamed from: a */
    private void m3407a(int i, String str, boolean z) {
        View inflate = View.inflate(this, R.layout.menu_item, null);
        ((TextView) inflate.findViewById(R.id.title)).setText(i);
        CheckBox checkBox = (CheckBox) inflate.findViewById(R.id.check);
        checkBox.setVisibility(0);
        checkBox.setChecked(this.f3283g.getBoolean(str, z));
        if (Build.VERSION.SDK_INT < 21) {
            checkBox.setButtonDrawable(C0692a.m2731a(getResources(), this.f3278b, this.f3277a, false));
        }
        inflate.setBackgroundResource(C0742b.m3001d(this));
        inflate.setOnClickListener(new ViewOnClickListenerC0945m(this, checkBox, str, i));
        this.f3282f.addView(inflate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3409b() {
        Intent intent = new Intent("android.intent.action.PICK");
        intent.setType("vnd.android.document/directory");
        intent.putExtra("activity_title", getString(R.string.select_a_folder));
        intent.setComponent(new ComponentName(getPackageName(), GalleryActivity.class.getName()));
        C1094a.m3780a((Activity) this, intent, 100);
    }

    /* renamed from: c */
    private void m3410c() {
        Map m3424a = C0937e.m3424a(getContentResolver());
        this.f3286j.clear();
        Iterator it = m3424a.values().iterator();
        while (it.hasNext()) {
            this.f3286j.add(new C0951s((C0954v) it.next()));
        }
        Collections.sort(this.f3286j, this.f3289m);
        this.f3286j.add(this.f3285i);
        this.f3287k.notifyDataSetChanged();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i2 != -1 || intent == null) {
            this.f3281e = null;
            return;
        }
        Uri data = intent.getData();
        if (i == 100) {
            if (this.f3281e != null || data == null) {
                return;
            }
            Intent intent2 = new Intent(this, (Class<?>) ShareToCloudActivity.class);
            this.f3281e = data;
            startActivityForResult(intent2, HttpStatus.SC_SWITCHING_PROTOCOLS);
            return;
        }
        if (i == 101) {
            if (this.f3281e != null && C0725a.m2920c(data)) {
                C0951s c0951s = new C0951s();
                c0951s.f3345d = this.f3281e.getPath();
                c0951s.f3346e = data.toString();
                c0951s.f3344c = C0954v.m3456a();
                this.f3286j.remove(this.f3285i);
                int m2962a = C0742b.m2962a(this.f3286j, c0951s, this.f3289m);
                if (m2962a >= 0) {
                    this.f3286j.set(m2962a, c0951s);
                } else {
                    this.f3286j.add((-m2962a) - 1, c0951s);
                }
                this.f3286j.add(this.f3285i);
                this.f3287k.notifyDataSetChanged();
                C0937e.m3426a(getContentResolver(), c0951s.f3344c, c0951s);
                C0956x.m3466a(this, C0933a.m3416a(this));
                C0956x.m3465a((Context) this, true);
                C0956x.m3464a(this, c0951s.f3344c);
            }
            this.f3281e = null;
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.cloud_backup);
        m3820g(true);
        m3806a(getString(R.string.cloud_backup_summary));
        Resources resources = getResources();
        this.f3278b = resources.getDimensionPixelSize(R.dimen.check_box_size);
        this.f3277a = ActivityC1109ao.m3794b(this, R.attr.colorMenuDrawable);
        this.f3279c = resources.getColor(R.color.material_warning);
        this.f3280d = m3794b(this, android.R.attr.textColorSecondary);
        if (bundle != null) {
            this.f3281e = (Uri) bundle.getParcelable("source_uri");
        }
        this.f3285i.f3331b = C0742b.m2966a(resources, R.raw.add_2, this.f3280d);
        this.f3282f = (LinearLayout) findViewById(R.id.options);
        this.f3283g = C0956x.m3471e(this);
        m3407a(R.string.include_video, "include_videos", true);
        m3407a(R.string.cloud_backup_only_wifi, "only_wifi", true);
        m3407a(R.string.cloud_backup_only_charging, "only_charging", false);
        ListView listView = (ListView) findViewById(R.id.list);
        listView.setAdapter((ListAdapter) this.f3287k);
        listView.setOnItemClickListener(new C0942j(this));
        listView.setOnItemLongClickListener(new C0943k(this));
        m3410c();
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    protected void onPause() {
        super.onPause();
        getContentResolver().unregisterContentObserver(this.f3288l);
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    protected void onResume() {
        super.onResume();
        getContentResolver().registerContentObserver(C0936d.f3295a, true, this.f3288l);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        if (this.f3281e != null) {
            bundle.putParcelable("source_uri", this.f3281e);
        }
    }
}
