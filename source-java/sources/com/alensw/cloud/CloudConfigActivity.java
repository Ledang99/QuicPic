package com.alensw.cloud;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.alensw.PicFolder.R;
import com.alensw.bean.CommonFile;
import com.alensw.bean.CommonFolder;
import com.alensw.bean.DocumentFolder;
import com.alensw.p022a.C0607av;
import com.alensw.p022a.InterfaceC0611az;
import com.alensw.p023b.p034k.C0733d;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.p041c.C1290z;

/* loaded from: classes.dex */
public class CloudConfigActivity extends ActivityC1109ao {

    /* renamed from: b */
    protected int f2849b;

    /* renamed from: c */
    protected int f2850c;

    /* renamed from: d */
    protected int f2851d;

    /* renamed from: e */
    protected Drawable f2852e;

    /* renamed from: g */
    private ListView f2854g;

    /* renamed from: h */
    private TextView f2855h;

    /* renamed from: j */
    private CommonFolder f2857j;

    /* renamed from: k */
    private Messenger f2858k;

    /* renamed from: l */
    private C0733d f2859l;

    /* renamed from: m */
    private C0860aa f2860m;

    /* renamed from: i */
    private Handler f2856i = new Handler(Looper.getMainLooper());

    /* renamed from: a */
    protected boolean f2848a = true;

    /* renamed from: n */
    private final InterfaceC0611az f2861n = new C0876b(this);

    /* renamed from: f */
    protected final BaseAdapter f2853f = new C0877c(this);

    /* renamed from: a */
    public static Intent m3094a(Context context, CommonFolder commonFolder, String str, Messenger messenger) {
        Intent intent = new Intent(context, (Class<?>) CloudConfigActivity.class);
        intent.setData(commonFolder.mo3021i());
        intent.putExtra("QuickPic.folder", commonFolder);
        intent.putExtra("QuickPic.callback", messenger);
        if (str != null) {
            intent.putExtra("QuickPic.root_id", str);
        }
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public String m3097a(int i) {
        CommonFile m3027a = this.f2857j.m3027a(i);
        return m3027a instanceof DocumentFolder ? ((DocumentFolder) m3027a).m3055t() : "";
    }

    /* renamed from: b */
    public void m3100b() {
        if (this.f2859l == null) {
            m3824i(true);
            this.f2859l = C1290z.f4271A.m2936a(new C0607av(getContentResolver(), this.f2857j, true, null, this.f2856i, this.f2861n));
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.list_view);
        m3820g(true);
        Resources resources = getResources();
        this.f2849b = resources.getDimensionPixelSize(R.dimen.menu_material_icon_size);
        this.f2851d = resources.getDimensionPixelSize(R.dimen.check_box_size);
        this.f2850c = ActivityC1109ao.m3794b(this, R.attr.colorMenuDrawable);
        this.f2860m = new C0860aa(this, getIntent().getStringExtra("QuickPic.root_id"));
        this.f2857j = (CommonFolder) getIntent().getParcelableExtra("QuickPic.folder");
        this.f2858k = (Messenger) getIntent().getParcelableExtra("QuickPic.callback");
        if (this.f2857j == null) {
            finish();
            return;
        }
        this.f2855h = (TextView) findViewById(R.id.empty);
        this.f2855h.setText(R.string.loading);
        this.f2854g = (ListView) findViewById(R.id.list);
        this.f2854g.setAdapter((ListAdapter) this.f2853f);
        this.f2854g.setEmptyView(this.f2855h);
        this.f2854g.setOnItemClickListener(new C0758a(this));
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        super.onCreateOptionsMenu(menu);
        menu.add(0, android.R.id.selectAll, 0, android.R.string.selectAll);
        return true;
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f2860m.m2617e()) {
            this.f2860m.m2620h();
            try {
                Message message = new Message();
                message.obj = getIntent().getStringExtra("QuickPic.root_id");
                this.f2858k.send(message);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case android.R.id.selectAll:
                if (this.f2860m.m2612b()) {
                    for (int m3047o = this.f2857j.m3047o() - 1; m3047o >= 0; m3047o--) {
                        CommonFile m3027a = this.f2857j.m3027a(m3047o);
                        if (m3027a instanceof DocumentFolder) {
                            this.f2860m.m2606a(((DocumentFolder) m3027a).m3055t(), (Object) true);
                        }
                    }
                } else {
                    this.f2860m.m2615d();
                }
                this.f2853f.notifyDataSetChanged();
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        menu.findItem(android.R.id.selectAll).setTitle(this.f2860m.m2612b() ? R.string.deselect_all : android.R.string.selectAll);
        return true;
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onStart() {
        super.onStart();
        if (this.f2848a) {
            this.f2848a = false;
            m3100b();
        }
    }
}
