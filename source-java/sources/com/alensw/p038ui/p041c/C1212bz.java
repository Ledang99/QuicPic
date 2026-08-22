package com.alensw.p038ui.p041c;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.preference.PreferenceManager;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.alensw.PicFolder.GalleryActivity;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.bean.UriFile;
import com.alensw.p022a.C0622d;
import com.alensw.p022a.C0623e;
import com.alensw.p022a.C0632n;
import com.alensw.p022a.C0633o;
import com.alensw.p022a.C0634p;
import com.alensw.p022a.C0635q;
import com.alensw.p022a.C0642x;
import com.alensw.p022a.InterfaceC0595aj;
import com.alensw.p023b.p024a.C0652h;
import com.alensw.p023b.p030g.MenuC0693b;
import com.alensw.p023b.p031h.C0706b;
import com.alensw.p023b.p031h.C0712h;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.activity.ActivityC1147p;
import com.alensw.p038ui.activity.C1094a;
import com.alensw.p038ui.p039a.AlertDialogC1052ae;
import com.alensw.p038ui.p039a.AlertDialogC1089x;
import com.alensw.p038ui.p039a.C1071f;
import com.alensw.p038ui.view.ImageGridView;
import com.alensw.p038ui.view.InterfaceC1309aj;
import com.alensw.p038ui.view.PathBar;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.apache.commons.logging.impl.SimpleLog;

/* renamed from: com.alensw.ui.c.bz */
/* loaded from: classes.dex */
public class C1212bz extends C1159a {

    /* renamed from: B */
    protected static final String[] f4011B = {"Pictures", "Photos", "Picture", "Photo"};

    /* renamed from: N */
    private static final C0652h f4012N = new C0652h(256);

    /* renamed from: f */
    protected static String f4013f;

    /* renamed from: g */
    protected static int f4014g;

    /* renamed from: h */
    protected static float f4015h;

    /* renamed from: i */
    protected static int f4016i;

    /* renamed from: M */
    private C0623e f4019M;

    /* renamed from: j */
    protected ImageGridView f4021j;

    /* renamed from: k */
    protected PathBar f4022k;

    /* renamed from: l */
    protected C0642x f4023l;

    /* renamed from: m */
    protected C0712h f4024m;

    /* renamed from: n */
    protected boolean f4025n;

    /* renamed from: o */
    protected boolean f4026o;

    /* renamed from: p */
    protected boolean f4027p;

    /* renamed from: q */
    protected int f4028q;

    /* renamed from: r */
    protected int f4029r;

    /* renamed from: s */
    protected int f4030s;

    /* renamed from: t */
    protected int f4031t;

    /* renamed from: u */
    protected int f4032u;

    /* renamed from: w */
    protected int f4034w;

    /* renamed from: x */
    protected int f4035x;

    /* renamed from: y */
    protected float f4036y;

    /* renamed from: v */
    protected int f4033v = -1;

    /* renamed from: z */
    protected C0623e f4037z = new C0623e(C0623e.f2410b, 0);

    /* renamed from: A */
    protected final LinkedHashSet f4017A = new LinkedHashSet(64);

    /* renamed from: L */
    private final Rect f4018L = new Rect();

    /* renamed from: O */
    private final InterfaceC1309aj f4020O = new C1222ci(this);

    /* renamed from: c */
    public static String m3992c(int i) {
        String str = (String) f4012N.m2555a(Integer.valueOf(i));
        if (str != null) {
            return str;
        }
        String m2043b = QuickApp.m2043b(1000 * i);
        f4012N.m2556a(Integer.valueOf(i), m2043b);
        return m2043b;
    }

    /* renamed from: t */
    protected static File m3993t() {
        for (String str : f4011B) {
            File file = new File(C0623e.f2410b + File.separatorChar + str + File.separatorChar);
            if (file.exists()) {
                return file;
            }
        }
        return new File(C0623e.f2410b);
    }

    @Override // com.alensw.p038ui.p041c.C1159a, com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3861a() {
        String string;
        boolean z = false;
        super.mo3861a();
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f4082C);
        this.f4021j.setHorizontal(defaultSharedPreferences.getBoolean("horizontal_scroll", this.f4021j.f4406c));
        int m2487a = C0642x.m2487a(this.f4026o, this.f4030s, this.f4031t);
        int m2507e = this.f4023l.m2507e();
        boolean z2 = m2487a != m2507e;
        if (z2) {
            m3998b(m2507e);
        }
        boolean z3 = m3877a(this.f4032u) || z2;
        if (z3 || !this.f4026o) {
            z = z3;
        } else if (this.f4037z == null || this.f4037z.f2421e != f4014g || !this.f4037z.getPath().equals(f4013f)) {
            z = true;
        }
        if (z) {
            m3997a(true);
        } else {
            m4012u();
        }
        if (this.f4032u != 3 || (string = defaultSharedPreferences.getString("dest_folder", null)) == null) {
            return;
        }
        C0623e c0623e = new C0623e(string, -1);
        c0623e.f2420d = C0635q.m2430a(this.f4082C).m2432a(c0623e);
        int m2494a = this.f4023l.m2494a(c0623e);
        if (m2494a >= 0) {
            this.f4021j.post(new RunnableC1214ca(this, m2494a));
        }
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3939a(int i, int i2, int i3, int i4) {
        super.mo3939a(i, i2, i3, i4);
        m4008p();
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3940a(int i, int i2, Intent intent) {
        Uri data;
        String mo3022j;
        if (i == 1 && i2 == -1 && (data = intent.getData()) != null && this.f4019M != null && (mo3022j = UriFile.m3072a('I', data, intent.getType()).mo3022j()) != null) {
            C0632n.m2405a(this.f4082C).m2409a(this.f4019M.getPath(), mo3022j);
            m4001c(this.f4019M);
        }
        this.f4019M = null;
    }

    @Override // com.alensw.p038ui.p041c.C1159a, com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3865a(Bundle bundle) {
        String str;
        super.mo3865a(bundle);
        super.m4033h(R.layout.browser);
        if (f4016i != this.f4082C.f3742U) {
            f4016i = this.f4082C.f3742U;
            QuickApp.f2079v.m2524c();
        }
        this.f4023l = QuickApp.f2072o;
        this.f4032u = ActivityC1147p.m3849b(this.f4084E);
        if (this.f4032u == 0) {
            this.f4025n = this.f4082C.getPackageManager().hasSystemFeature("android.hardware.camera");
        }
        this.f4036y = m4024F().getDisplayMetrics().density;
        if (bundle != null) {
            Uri uri = (Uri) bundle.getParcelable("current_uri");
            if (uri != null && uri.getPath() != null) {
                this.f4037z = new C0623e(uri.getPath(), 0);
            }
            f4015h = bundle.getFloat("scroll_pos");
        }
        this.f3852c = (ViewGroup) m4031f(R.id.bottom_bar);
        this.f4021j = (ImageGridView) m4031f(R.id.grid);
        this.f4021j.setFastScrollEnabled(true);
        this.f4021j.setSpaceWidth((QuickApp.f2065h / 320) * 2);
        String g = m4032g(R.string.local_albums);
        if (this.f4032u != 0) {
            str = this.f4084E.getStringExtra("activity_title");
            if (str == null) {
                str = g + " - " + m4032g(R.string.pick);
            }
        } else {
            str = g;
        }
        m4027b((CharSequence) str);
        m3998b(PreferenceManager.getDefaultSharedPreferences(this.f4082C).getInt("gallery_mode", this.f4023l.m2507e()));
    }

    /* renamed from: a */
    protected void m3994a(C0623e c0623e, int i) {
        Uri fromFile = Uri.fromFile(c0623e);
        Intent intent = new Intent();
        if (this.f4032u != 0) {
            Intent intent2 = this.f4082C.getIntent();
            intent.setAction(intent2.getAction());
            intent.setDataAndType(fromFile, intent2.getType());
            intent.putExtras(intent2);
        } else {
            intent.setData(fromFile);
        }
        this.f4082C.m4037a(C1192bf.class, intent, (Bundle) null);
    }

    /* renamed from: a */
    public void m3995a(C0623e c0623e, C0622d c0622d) {
        QuickApp.f2077t.m2165a(c0622d, true, (InterfaceC0595aj) new C1217cd(this, c0623e));
    }

    /* renamed from: a */
    protected void m3996a(C0623e c0623e, boolean z) {
        if (!z) {
            this.f4019M = null;
            C0632n.m2405a(this.f4082C).m2409a(c0623e.getPath(), null);
            m4001c(c0623e);
        } else {
            this.f4019M = c0623e;
            Intent intent = new Intent();
            intent.setAction("android.intent.action.GET_CONTENT");
            intent.setClass(this.f4082C, GalleryActivity.class);
            intent.setType("image/*");
            C1094a.m3780a((Activity) this.f4082C, intent, 1);
        }
    }

    /* renamed from: a */
    public void m3997a(boolean z) {
        m4013v();
        this.f4033v = -1;
        if (z) {
            QuickApp.f2079v.m2524c();
            QuickApp.f2080w.m2524c();
            this.f4023l.m2511g();
            this.f4017A.clear();
        }
        QuickApp.f2081x = false;
        m4012u();
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    @TargetApi(11)
    /* renamed from: a */
    public boolean mo3945a(Menu menu) {
        if (this.f4021j.f4407d) {
            return false;
        }
        MenuC0693b.m2735a(this.f4082C, R.menu.gallery, menu);
        if (this.f4032u == 0) {
            m3866a(menu, R.id.search, 2);
        } else {
            menu.removeItem(R.id.search);
            menu.removeItem(R.id.transfer);
            menu.removeItem(R.id.settings);
            if (this.f4032u == 3) {
                m3868a(menu.findItem(R.id.add).setVisible(true), 2);
                if (this.f4026o) {
                    m3868a(menu.findItem(R.id.done).setVisible(true), 2);
                }
            }
        }
        if (this.f4025n) {
            m3866a(menu, R.id.camera, 2);
            return true;
        }
        menu.removeItem(R.id.camera);
        return true;
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    @TargetApi(11)
    /* renamed from: a */
    public boolean mo3946a(MenuItem menuItem) {
        boolean z;
        int i;
        int itemId = menuItem.getItemId();
        View c = this.f4082C.m3809c(itemId);
        int m2487a = C0642x.m2487a(this.f4026o, this.f4030s, this.f4031t);
        C0623e m2500b = this.f4017A.size() > 0 ? (C0623e) this.f4017A.iterator().next() : this.f4023l.m2500b(this.f4033v);
        switch (itemId) {
            case android.R.id.selectAll:
                if (this.f4021j.f4407d) {
                    if (this.f4017A.size() < this.f4023l.m2509f()) {
                        this.f4017A.addAll(this.f4023l.m2512h());
                    } else {
                        this.f4017A.clear();
                    }
                    this.f4021j.m4257b();
                    if (this.f4082C.m3832q()) {
                        this.f4082C.m3807a((CharSequence) (Integer.toString(this.f4017A.size()) + "/" + this.f4023l.m2509f()), false);
                        break;
                    }
                }
                break;
            case R.id.done /* 2131296265 */:
                if (this.f4032u == 3) {
                    C0623e c0623e = (m2500b == null && this.f4026o) ? this.f4037z : m2500b;
                    if (c0623e == null) {
                        Toast.makeText(this.f4082C, R.string.select_a_folder, 0).show();
                        break;
                    } else {
                        m3874a((File) c0623e);
                        break;
                    }
                }
                break;
            case R.id.add /* 2131296320 */:
                if (this.f4026o && this.f4037z != null) {
                    C1071f.m3740a(this.f4082C, R.string.new_folder, "", (CharSequence) null, new C1228co(this));
                    break;
                } else {
                    AlertDialogC1052ae.m3724a(this.f4082C, 2, m3993t(), new C1229cp(this));
                    break;
                }
            case R.id.browse_mode /* 2131296328 */:
                MenuC0693b.m2736a(this.f4082C, c, new C1230cq(this));
                break;
            case R.id.browse_default /* 2131296329 */:
                this.f4030s = 0;
                break;
            case R.id.browse_stack /* 2131296330 */:
                this.f4030s = 1;
                break;
            case R.id.browse_grid /* 2131296331 */:
                this.f4030s = 3;
                break;
            case R.id.browse_list /* 2131296332 */:
                this.f4030s = 2;
                break;
            case R.id.browse_explorer /* 2131296333 */:
                this.f4026o = !this.f4026o;
                break;
            case R.id.delete /* 2131296334 */:
                Iterator it = this.f4017A.iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    i2 = ((C0623e) it.next()).m2390j() + i2;
                }
                C1094a.m3773a(this.f4082C, i2, c, new RunnableC1225cl(this));
                break;
            case R.id.search /* 2131296337 */:
                m3883c("folders");
                break;
            case R.id.sort /* 2131296340 */:
                switch (this.f4031t) {
                    case 1:
                        z = true;
                        i = R.id.sort_by_name;
                        break;
                    case 2:
                        z = false;
                        i = R.id.sort_by_name;
                        break;
                    case 3:
                        z = true;
                        i = R.id.sort_by_date;
                        break;
                    case 4:
                        z = false;
                        i = R.id.sort_by_date;
                        break;
                    case 5:
                        z = true;
                        i = R.id.sort_by_path;
                        break;
                    case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                        z = false;
                        i = R.id.sort_by_path;
                        break;
                    default:
                        z = false;
                        i = 0;
                        break;
                }
                C1094a.m3778a(this.f4082C, c, new int[]{R.id.sort_by_name, R.id.sort_by_date, R.id.sort_by_path}, i, z);
                break;
            case R.id.desktop_link /* 2131296341 */:
                if (m2500b != null) {
                    m3869a(m2500b);
                    break;
                }
                break;
            case R.id.hide /* 2131296351 */:
                if (m2500b != null) {
                    if (!m2500b.m2369a(true)) {
                        if (!m3885d()) {
                            C1071f.m3739a(this.f4082C, R.string.hide, m4032g(R.string.hide_confirm), new RunnableC1223cj(this, m2500b), (Runnable) null);
                            break;
                        }
                    } else if (m3878a(m2500b, false, (Runnable) null)) {
                        this.f4021j.invalidate();
                        break;
                    }
                }
                break;
            case R.id.top /* 2131296352 */:
                if (m2500b != null) {
                    m2500b.f2420d = C0623e.m2354a(m2500b.m2377c() ? 2 : 1, m2500b.m2358a(), m2500b.m2378d());
                    this.f4023l.m2513i();
                    this.f4021j.requestLayout();
                    C0635q.m2430a(this.f4082C).m2434b(m2500b);
                    break;
                }
                break;
            case R.id.exclude /* 2131296353 */:
                m4017z();
                break;
            case R.id.rename /* 2131296354 */:
                if (m2500b != null && !m3885d()) {
                    C1071f.m3740a(this.f4082C, R.string.rename, m2500b.getName(), (CharSequence) null, new C1226cm(this, m2500b));
                    break;
                }
                break;
            case R.id.cover_select /* 2131296356 */:
            case R.id.cover_default /* 2131296357 */:
                if (m2500b != null) {
                    m3996a(m2500b, itemId == R.id.cover_select);
                    break;
                }
                break;
            case R.id.camera /* 2131296359 */:
                C1094a.m3777a(this.f4082C, c);
                break;
            case R.id.show_hidden /* 2131296360 */:
                m4007o();
                break;
            case R.id.sort_by_name /* 2131296372 */:
                this.f4031t = this.f4031t != 1 ? 1 : 2;
                break;
            case R.id.sort_by_date /* 2131296373 */:
                this.f4031t = this.f4031t == 4 ? 3 : 4;
                break;
            case R.id.sort_by_path /* 2131296376 */:
                this.f4031t = this.f4031t == 5 ? 6 : 5;
                break;
            default:
                return super.mo3946a(menuItem);
        }
        int m2487a2 = C0642x.m2487a(this.f4026o, this.f4030s, this.f4031t);
        if (m2487a2 == m2487a) {
            return true;
        }
        boolean z2 = this.f4023l.m2501b() != this.f4026o;
        boolean z3 = this.f4023l.m2492a() != this.f4030s;
        if (z2) {
            m4013v();
        }
        PreferenceManager.getDefaultSharedPreferences(this.f4082C).edit().putInt("gallery_mode", m2487a2).commit();
        m3998b(m2487a2);
        m4006n();
        if (z2) {
            m3997a(true);
        } else if (z3) {
            QuickApp.f2079v.m2524c();
        }
        if (!z2) {
            return true;
        }
        this.f3852c.startAnimation(this.f4082C.m3810c(this.f4026o));
        return true;
    }

    @Override // com.alensw.p038ui.p041c.C1159a, com.alensw.p038ui.p041c.C1234cu
    /* renamed from: b */
    public void mo3881b() {
        super.mo3881b();
        m4013v();
    }

    /* renamed from: b */
    protected void m3998b(int i) {
        String m2412a;
        int i2 = 2;
        boolean m2501b = this.f4023l.m2501b();
        this.f4023l.m2496a(i);
        this.f4026o = this.f4023l.m2501b();
        this.f4030s = this.f4023l.m2492a();
        this.f4031t = this.f4023l.m2502c();
        int i3 = this.f4021j.f4408e;
        switch (this.f4030s) {
            case 0:
                this.f4034w = QuickApp.f2075r.f2375f;
                this.f4035x = QuickApp.f2075r.f2376g;
                this.f4028q = 0;
                i2 = 1;
                break;
            case 1:
                this.f4034w = QuickApp.f2075r.f2375f;
                this.f4035x = Math.min(QuickApp.f2075r.f2376g, QuickApp.f2075r.f2374e);
                this.f4028q = 2;
                i2 = 3;
                break;
            case 2:
                int[] e = m3886e();
                this.f4034w = e[0];
                this.f4035x = e[1];
                this.f4028q = 0;
                break;
            case 3:
                this.f4034w = QuickApp.f2075r.f2375f;
                this.f4035x = QuickApp.f2075r.f2376g;
                this.f4028q = 1;
                i2 = 3;
                break;
            default:
                i2 = i3;
                break;
        }
        QuickApp.f2079v.m2518a(((C0706b.f2669b * 1024000) / 5) / ((this.f4034w * this.f4035x) * 2));
        this.f4029r = C0634p.m2418b(this.f4028q);
        if (this.f4024m != null) {
            this.f4024m.m2866m();
            this.f4024m = null;
        }
        if (m2501b != this.f4026o && this.f4032u == 3) {
            this.f4082C.invalidateOptionsMenu();
        }
        if (this.f4026o) {
            if (PathBar.f4451a.getPath().equals(f4013f)) {
                f4013f = null;
            }
            if (f4013f != null) {
                this.f4037z = new C0623e(f4013f, f4014g);
            }
            if (C0623e.f2410b.equals(this.f4037z.getPath()) && (m2412a = C0633o.m2410a(this.f4082C).m2412a()) != null) {
                this.f4037z = new C0623e(m2412a, 0);
            }
            m4009q();
            this.f4022k.setPath(this.f4037z);
        }
        this.f4021j.f4405b = ImageGridView.f4352a && this.f4029r == 1;
        this.f4021j.m4252a(this.f4020O, this.f4034w, this.f4035x);
        this.f4021j.m4245a(i2, true);
        if (this.f4021j.getHeight() > 0) {
            m4008p();
        }
        this.f3852c.setVisibility(this.f4026o ? 0 : 8);
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: b */
    public void mo3971b(Intent intent) {
        Uri data;
        if (intent == null || (data = intent.getData()) == null) {
            return;
        }
        String path = data.getPath();
        int i = this.f4033v;
        C0623e m2500b = this.f4023l.m2500b(i);
        if (path != null && m2500b != null && !path.equals(m2500b.getPath())) {
            C0623e c0623e = new C0623e(path, -1);
            c0623e.f2420d = C0635q.m2430a(this.f4082C).m2432a(c0623e);
            i = this.f4023l.m2499b(c0623e);
        }
        if (i < 0) {
            i = -1;
        }
        this.f4033v = i;
        this.f4021j.m4264c(this.f4033v);
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: b */
    public void mo3949b(Bundle bundle) {
        if (this.f4037z != null) {
            bundle.putParcelable("current_uri", Uri.fromFile(this.f4037z));
        } else {
            bundle.remove("current_uri");
        }
        f4015h = this.f4021j.getScrollPos();
        bundle.putFloat("scroll_pos", f4015h);
    }

    /* renamed from: b */
    protected void m3999b(C0623e c0623e) {
        if (c0623e == null) {
            c0623e = new C0623e(C0623e.f2410b, 0);
        }
        this.f4037z = c0623e;
        this.f4033v = -1;
        m4009q();
        this.f4022k.setPath(this.f4037z);
        m3997a(true);
    }

    /* renamed from: b */
    protected void m4000b(File file) {
        if (!file.exists() && !C0742b.m2982a(file)) {
            if (m3879a(file.getParent())) {
                return;
            }
            Toast.makeText(this.f4082C, "Create folder '" + file.getName() + "' failed!", 1).show();
            return;
        }
        QuickApp.f2074q.m2451a(4, file.getPath(), null);
        C0623e c0623e = new C0623e(file, -1);
        c0623e.f2420d = C0635q.m2430a(this.f4082C).m2432a(c0623e);
        if (this.f4032u == 3) {
            m3874a((File) c0623e);
            return;
        }
        RunnableC1215cb runnableC1215cb = new RunnableC1215cb(this, c0623e);
        if (QuickApp.f2074q.f2452b || !c0623e.m2369a(true)) {
            runnableC1215cb.run();
        } else {
            AlertDialogC1089x.m3749a(this.f4082C, "protect_hidden", runnableC1215cb, null);
        }
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: b */
    public boolean mo3950b(Menu menu) {
        if (this.f4021j.f4407d) {
            return false;
        }
        MenuItem findItem = menu.findItem(R.id.show_hidden);
        if (findItem != null) {
            findItem.setTitle(QuickApp.f2074q.f2452b ? R.string.hide_hidden : R.string.show_hidden);
        }
        return true;
    }

    /* renamed from: c */
    public void m4001c(C0623e c0623e) {
        QuickApp.f2079v.m2523c(c0623e);
        this.f4021j.m4268d(this.f4023l.m2494a(c0623e));
        m4002d(c0623e);
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    @TargetApi(11)
    /* renamed from: c */
    protected boolean mo3973c(Menu menu) {
        MenuC0693b.m2735a(this.f4082C, R.menu.folder, menu);
        menu.findItem(R.id.hide).setIcon((Drawable) null);
        menu.findItem(R.id.exclude).setIcon((Drawable) null);
        menu.add(0, android.R.id.selectAll, 0, android.R.string.selectAll);
        menu.removeItem(R.id.slideshow);
        menu.removeItem(R.id.browse_mode);
        menu.removeItem(R.id.sort);
        menu.removeItem(R.id.fix_date);
        m3867a(menu, R.id.select, false);
        if (ActivityC1109ao.f3725F) {
            for (int size = menu.size() - 1; size >= 0; size--) {
                menu.getItem(size).setShowAsAction(0);
            }
        }
        m3866a(menu, R.id.delete, 2);
        this.f4017A.clear();
        this.f4021j.setMultiSelect(true);
        return true;
    }

    /* renamed from: d */
    public void m4002d(C0623e c0623e) {
        C0634p c0634p;
        int i;
        int min = Math.min(this.f4029r, c0623e.m2390j());
        String m2408a = C0632n.m2405a(this.f4082C).m2408a(c0623e.getPath());
        if (m2408a != null) {
            if (QuickApp.f2079v.m2519a(c0623e)) {
                return;
            }
            m3995a(c0623e, new C0622d(new File(m2408a), 'I', -1));
            return;
        }
        if (min == 1) {
            if (QuickApp.f2079v.m2519a(c0623e)) {
                return;
            }
            m3995a(c0623e, c0623e.m2381e(0));
            return;
        }
        if (min > 0) {
            C0712h c0712h = (C0712h) QuickApp.f2079v.m2521b(c0623e);
            if (c0712h instanceof C0634p) {
                C0634p c0634p2 = (C0634p) c0712h;
                if (c0634p2.m2427b()) {
                    return;
                }
                i = 0;
                while (i < min && c0634p2.m2425a(i)) {
                    i++;
                }
                c0634p = c0634p2;
            } else {
                C0634p c0634p3 = new C0634p(this.f4028q, this.f4034w, this.f4035x, this.f4036y, min, this.f4082C.f3742U, QuickApp.f2075r.f2371b);
                QuickApp.f2079v.m2517a(c0623e, c0634p3);
                c0634p = c0634p3;
                i = 0;
            }
            QuickApp.f2077t.m2165a(c0623e.m2381e(i), false, (InterfaceC0595aj) new RunnableC1233ct(this, c0623e, c0634p, min, i));
        }
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: d */
    protected boolean mo3975d(Menu menu) {
        int size = this.f4017A.size();
        m3867a(menu, R.id.hide, size == 1);
        m3867a(menu, R.id.rename, size == 1);
        m3867a(menu, R.id.cover, size == 1);
        m3867a(menu, R.id.desktop_link, size == 1);
        m3867a(menu, R.id.top, size == 1);
        if (size == 1) {
            C0623e c0623e = (C0623e) this.f4017A.iterator().next();
            menu.findItem(R.id.hide).setTitle(c0623e.m2369a(true) ? R.string.unhide : R.string.hide);
            menu.findItem(R.id.top).setTitle(c0623e.m2377c() ? R.string.top_cancel : R.string.top_on);
            m3867a(menu, R.id.cover, c0623e.m2390j() > 0);
            m3867a(menu, R.id.desktop_link, c0623e.m2390j() > 0);
        }
        menu.findItem(android.R.id.selectAll).setTitle(size == this.f4023l.m2509f() ? R.string.deselect_all : android.R.string.selectAll);
        return true;
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: f */
    public boolean mo4003f() {
        File parentFile;
        boolean z = false;
        if (this.f4082C.m3832q() && this.f4023l.m2509f() != 0) {
            this.f4082C.m3813d(false);
        } else if (!m4011s() || (parentFile = this.f4037z.getParentFile()) == null) {
            z = true;
        } else {
            m3999b(new C0623e(parentFile, 0));
        }
        m4006n();
        return z;
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: g */
    public void mo3952g() {
        super.mo3952g();
        if (this.f4024m != null) {
            this.f4024m.m2866m();
            this.f4024m = null;
        }
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: h */
    public RectF mo3978h() {
        RectF rectF = new RectF();
        this.f4021j.m4264c(this.f4033v);
        if (this.f4033v < 0 || !this.f4021j.m4261b(this.f4033v, rectF)) {
            return super.mo3978h();
        }
        if (this.f4030s != 0) {
            return rectF;
        }
        rectF.right = rectF.left + rectF.height();
        return rectF;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000c, code lost:
    
        return true;
     */
    @Override // com.alensw.p038ui.p041c.C1159a, android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 10:
                boolean z = message.arg1 == 1;
                this.f4021j.setEmptyText(z ? null : m4032g(R.string.loading));
                if (!z) {
                    QuickApp.f2081x = false;
                    this.f4027p = true;
                    this.f4023l.m2513i();
                    m4029c(true);
                    break;
                }
                break;
            case 11:
                if (!(message.arg1 == 1)) {
                    boolean z2 = this.f4023l.m2509f() == 0;
                    QuickApp.f2081x = message.arg2 == 1;
                    this.f4027p = false;
                    if (QuickApp.f2081x && z2) {
                        this.f4021j.setEmptyText(m4032g(R.string.no_picture_in_album));
                    } else {
                        this.f4021j.setEmptyText(z2 ? m4032g(R.string.no_picture_in_album) : null);
                        this.f4021j.requestLayout();
                    }
                    m4029c(false);
                    break;
                } else if (!QuickApp.f2081x || this.f4023l.m2509f() == 0) {
                    m4014w();
                    break;
                }
                break;
            case 12:
                this.f4023l.m2505d((C0623e) message.obj);
                if (this.f4087H == 2) {
                    this.f4021j.requestLayout();
                    this.f4021j.m4253a();
                }
                if (this.f4023l.m2509f() >= this.f4021j.getVisibleCount() + 1) {
                    this.f4027p = false;
                    break;
                }
                break;
            case 13:
                C0623e c0623e = (C0623e) message.obj;
                if (this.f4082C.m3832q() && this.f4017A.remove(c0623e)) {
                    this.f4082C.m3807a((CharSequence) (Integer.toString(this.f4017A.size()) + "/" + this.f4023l.m2509f()), false);
                }
                this.f4023l.m2510f(c0623e);
                this.f4021j.requestLayout();
                break;
            case 14:
                this.f4027p = false;
                m4029c(false);
                if (this.f4087H == 2) {
                    this.f4021j.requestLayout();
                    break;
                }
                break;
        }
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: i */
    public void mo3979i() {
        super.mo3979i();
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: j */
    protected Uri[] mo3953j() {
        return m4004l();
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: k */
    protected void mo3980k() {
        this.f4017A.clear();
        this.f4021j.setMultiSelect(false);
    }

    /* renamed from: l */
    public Uri[] m4004l() {
        if (this.f4017A.size() == 0) {
            return null;
        }
        Iterator it = this.f4017A.iterator();
        int i = 0;
        while (it.hasNext()) {
            i = ((C0623e) it.next()).m2390j() + i;
        }
        if (i == 0) {
            return null;
        }
        Uri[] uriArr = new Uri[i];
        Iterator it2 = this.f4017A.iterator();
        int i2 = 0;
        while (it2.hasNext()) {
            C0623e c0623e = (C0623e) it2.next();
            int m2390j = c0623e.m2390j();
            int i3 = 0;
            while (i3 < m2390j) {
                uriArr[i2] = c0623e.m2379d(i3);
                i3++;
                i2++;
            }
        }
        return uriArr;
    }

    /* renamed from: m */
    protected C0712h m4005m() {
        if (this.f4024m == null) {
            this.f4024m = C0634p.m2416a(m4024F(), this.f4028q, this.f4034w, this.f4035x, this.f4082C.f3742U);
        }
        return this.f4024m;
    }

    /* renamed from: n */
    protected void m4006n() {
    }

    /* renamed from: o */
    public void m4007o() {
        boolean z = !QuickApp.f2074q.f2452b;
        if (z) {
            AlertDialogC1089x.m3749a(this.f4082C, "protect_hidden", new RunnableC1231cr(this, z), null);
            return;
        }
        QuickApp.f2074q.f2452b = z;
        m4013v();
        if (this.f4023l.m2498a(true)) {
            this.f4021j.requestLayout();
        }
        m4012u();
    }

    /* renamed from: p */
    protected void m4008p() {
        int m4010r = this.f4026o ? m4010r() : 0;
        this.f4082C.mo1991a(this.f4018L);
        this.f4021j.setPadding(this.f4018L.left, this.f4018L.top, this.f4018L.right, m4010r + this.f4018L.bottom);
        this.f3852c.setPadding(this.f4018L.left, 0, this.f4018L.right, this.f4018L.bottom);
    }

    /* renamed from: q */
    protected void m4009q() {
        if (this.f4022k == null) {
            int i = (int) (this.f4036y * 4.0f);
            this.f4022k = new PathBar(this.f4082C);
            this.f4022k.setBackgroundColor(ActivityC1109ao.m3794b(this.f4082C, R.attr.colorPathBar));
            this.f4022k.setPadding(i, i, i, i);
            this.f4022k.setOnClickListener(new ViewOnClickListenerC1232cs(this));
            this.f3852c.addView(this.f4022k, -1, m4024F().getDimensionPixelSize(R.dimen.button_height));
        }
    }

    /* renamed from: r */
    protected int m4010r() {
        m4009q();
        int height = this.f4022k.getHeight();
        return height == 0 ? m4024F().getDimensionPixelSize(R.dimen.button_height) : height;
    }

    /* renamed from: s */
    protected boolean m4011s() {
        return (!this.f4026o || this.f4037z == null || C0623e.f2410b.equals(this.f4037z.getPath()) || PathBar.f4451a.equals(this.f4037z)) ? false : true;
    }

    /* renamed from: u */
    public void m4012u() {
        this.f4021j.setScrollPos(f4015h);
        this.f4021j.requestLayout();
        this.f4021j.post(new RunnableC1218ce(this));
        QuickApp.f2074q.m2451a(1, this.f4023l.m2512h(), this.f3851b);
        m4006n();
        if (this.f4082C.m3832q()) {
            this.f4082C.m3807a((CharSequence) (Integer.toString(this.f4017A.size()) + "/" + this.f4023l.m2509f()), false);
        }
    }

    /* renamed from: v */
    public void m4013v() {
        f4015h = this.f4021j.getScrollPos();
        this.f4021j.m4262c();
        QuickApp.f2074q.m2454c();
        QuickApp.f2077t.m2168a(true);
        m4015x();
    }

    /* renamed from: w */
    public void m4014w() {
        if (this.f4023l.m2506d()) {
            this.f4023l.m2513i();
        }
        if (!this.f4026o) {
            QuickApp.f2074q.m2451a(3, null, this.f3851b);
            return;
        }
        this.f4037z.m2394n();
        f4013f = this.f4037z.getPath();
        f4014g = this.f4037z.f2421e;
        QuickApp.f2074q.m2451a(2, this.f4037z.getPath(), this.f3851b);
    }

    /* renamed from: x */
    protected void m4015x() {
        int firstVisible = this.f4021j.getFirstVisible();
        int lastVisible = this.f4021j.getLastVisible();
        for (int i = firstVisible; i < lastVisible; i++) {
            QuickApp.f2079v.m2521b(this.f4023l.m2500b(i));
        }
        if (lastVisible > firstVisible) {
            QuickApp.f2079v.m2522b(lastVisible - firstVisible);
        }
    }

    /* renamed from: y */
    protected void m4016y() {
        ArrayList arrayList = new ArrayList(this.f4017A.size());
        Iterator it = this.f4017A.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            C0623e c0623e = (C0623e) it.next();
            arrayList.add(c0623e);
            i2 += c0623e.m2390j();
            i++;
        }
        if (i2 == 0 && i == 0) {
            return;
        }
        new ProgressDialogC1219cf(this, this.f4082C, m4032g(R.string.delete), i2, arrayList, QuickApp.f2076s, QuickApp.f2075r).m3731c();
    }

    /* renamed from: z */
    protected void m4017z() {
        RunnableC1220cg runnableC1220cg = new RunnableC1220cg(this);
        C0633o m2410a = C0633o.m2410a(this.f4082C);
        if (this.f4017A.size() == 1) {
            m3871a((C0623e) this.f4017A.iterator().next(), new C1221ch(this, m2410a, runnableC1220cg));
            return;
        }
        Iterator it = this.f4017A.iterator();
        while (it.hasNext()) {
            C0623e c0623e = (C0623e) it.next();
            m2410a.m2414a(c0623e);
            this.f4023l.m2510f(c0623e);
            this.f4023l.m2508e(c0623e);
        }
        runnableC1220cg.run();
    }
}
