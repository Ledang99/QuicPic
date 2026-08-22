package com.alensw.p038ui.p041c;

import android.annotation.TargetApi;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.p022a.C0615bc;
import com.alensw.p022a.C0622d;
import com.alensw.p022a.C0623e;
import com.alensw.p022a.C0635q;
import com.alensw.p022a.InterfaceC0595aj;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p030g.MenuC0693b;
import com.alensw.p023b.p030g.MenuItemC0703l;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.activity.ActivityC1147p;
import com.alensw.p038ui.activity.C1094a;
import com.alensw.p038ui.p039a.C1071f;
import com.alensw.p038ui.view.ImageGridView;
import com.alensw.p038ui.view.InterfaceC1309aj;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import org.apache.commons.logging.impl.SimpleLog;

/* renamed from: com.alensw.ui.c.bf */
/* loaded from: classes.dex */
public class C1192bf extends C1159a {

    /* renamed from: l */
    protected static final HashMap f3960l = new HashMap(16);

    /* renamed from: m */
    public static final String[] f3961m = {"%Y", "%M", "%D", "%h", "%m", "%s"};

    /* renamed from: f */
    protected ImageGridView f3962f;

    /* renamed from: g */
    protected C0623e f3963g;

    /* renamed from: h */
    protected int f3964h;

    /* renamed from: i */
    protected int f3965i;

    /* renamed from: j */
    protected int f3966j;

    /* renamed from: n */
    private int f3968n;

    /* renamed from: k */
    protected final LinkedHashSet f3967k = new LinkedHashSet(256);

    /* renamed from: o */
    private final Rect f3969o = new Rect();

    /* renamed from: p */
    private final InterfaceC0595aj f3970p = new C1202bp(this);

    /* renamed from: q */
    private final InterfaceC1309aj f3971q = new C1203bq(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3963a(C0622d c0622d) {
        QuickApp.f2077t.m2165a(c0622d, false, this.f3970p);
    }

    @Override // com.alensw.p038ui.p041c.C1159a, com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public long mo3860a(boolean z, RectF rectF) {
        return this.f3962f.m4242a(z, this.f4082C.m4039b(z), rectF);
    }

    @Override // com.alensw.p038ui.p041c.C1159a, com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3861a() {
        super.mo3861a();
        if (this.f3968n != 0) {
            this.f4083D.setPadding(this.f4083D.getPaddingLeft(), this.f4083D.getPaddingTop() - this.f3968n, this.f4083D.getPaddingRight(), this.f4083D.getPaddingBottom());
            this.f3968n = 0;
        }
        this.f3962f.setHorizontal(PreferenceManager.getDefaultSharedPreferences(this.f4082C).getBoolean("horizontal_scroll", this.f3962f.f4406c));
        if (m3877a(this.f3964h)) {
            this.f3963g.m2391k();
        }
        m3984o();
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3939a(int i, int i2, int i3, int i4) {
        super.mo3939a(i, i2, i3, i4);
        this.f4082C.mo1991a(this.f3969o);
        this.f3962f.setPadding(this.f3969o.left, this.f3969o.top, this.f3969o.right, this.f3969o.bottom);
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3940a(int i, int i2, Intent intent) {
        if (this.f3964h != 0 && i == 2 && i2 == -1) {
            this.f4082C.setResult(i2, intent);
            this.f4082C.finish();
        }
    }

    /* renamed from: a */
    protected void m3965a(int i, C0622d c0622d) {
        Uri m2372b = this.f3963g.m2372b(c0622d.f2404b);
        String m2722a = C0690c.m2722a(c0622d.f2404b, c0622d.f2405c);
        if (this.f3963g.m2381e(this.f3963g.f2419c) != c0622d) {
            this.f3963g.f2419c = this.f3963g.m2361a(c0622d);
        }
        View c = this.f4082C.m3809c(i);
        switch (i) {
            case R.id.details /* 2131296324 */:
                new C1246df(this.f4082C, m2372b, c0622d.f2405c, m2722a, null).m4078a(Integer.toString(this.f3963g.f2419c + 1) + "/" + this.f3963g.m2390j(), new C1211by(this, c0622d));
                break;
            case R.id.rename /* 2131296354 */:
                if (!f3849a || !m3885d()) {
                    m3972c(this.f3963g.m2361a(c0622d));
                    break;
                }
                break;
            case R.id.edit /* 2131296361 */:
                new C1246df(this.f4082C, m2372b, c0622d.f2405c, m2722a, null).m4077a(c, (Bundle) null);
                break;
            case R.id.set_as /* 2131296362 */:
                new C1246df(this.f4082C, m2372b, c0622d.f2405c, m2722a, null).m4080b(c, null);
                break;
            case R.id.show_in_map /* 2131296364 */:
                new C1246df(this.f4082C, m2372b, c0622d.f2405c, m2722a, null).m4079b(c);
                break;
        }
    }

    /* renamed from: a */
    public void m3966a(Uri uri, String str, boolean z) {
        if (this.f4082C.m3834s()) {
            this.f3968n = 0;
        } else {
            int[] iArr = new int[2];
            View view = this.f4083D;
            view.getLocationOnScreen(iArr);
            view.setPadding(view.getPaddingLeft(), view.getPaddingTop() + iArr[1], view.getPaddingRight(), view.getPaddingBottom());
            this.f3968n = iArr[1];
        }
        Intent intent = new Intent();
        intent.setDataAndType(uri, str);
        if (z) {
            intent.putExtra("QuickPic.slide_show", true);
        }
        this.f4082C.m4037a(C1256dp.class, intent, (Bundle) null);
    }

    @Override // com.alensw.p038ui.p041c.C1159a, com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3865a(Bundle bundle) {
        super.mo3865a(bundle);
        super.m4033h(R.layout.browser);
        Uri data = this.f4084E.getData();
        if (data == null && bundle != null) {
            data = (Uri) bundle.getParcelable("current_uri");
        }
        this.f3963g = QuickApp.f2072o.m2495a(this.f4082C, data);
        if (this.f3963g == null) {
            Toast.makeText(this.f4082C, R.string.load_failed, 1).show();
            m4023E();
            return;
        }
        this.f3964h = ActivityC1147p.m3849b(this.f4084E);
        this.f3852c = (ViewGroup) m4031f(R.id.bottom_bar);
        this.f3962f = (ImageGridView) m4031f(R.id.grid);
        this.f3962f.setFastScrollEnabled(true);
        this.f3962f.setSpaceWidth((QuickApp.f2065h / 320) * 2);
        if (this.f3964h == 5) {
            this.f3962f.setMultiSelect(true);
        }
        this.f3965i = this.f3963g.m2358a();
        this.f3966j = this.f3963g.m2378d();
        m3970b(this.f3965i);
    }

    /* renamed from: a */
    public void m3967a(View view) {
        Intent m3987r = m3987r();
        if (m3987r == null) {
            return;
        }
        if (!"android.intent.action.SEND".equals(m3987r.getAction())) {
            C1094a.m3769a(this.f4082C, m3987r, R.string.share, view, new C1201bo(this));
            return;
        }
        Uri uri = (Uri) m3987r.getParcelableExtra("android.intent.extra.STREAM");
        if (uri != null) {
            new C1246df(this.f4082C, uri, (char) 0, m3987r.getType(), null).m4076a(view);
        }
    }

    /* renamed from: a */
    public void m3968a(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            QuickApp.f2080w.m2523c(it.next());
        }
        this.f3967k.removeAll(collection);
        this.f3963g.m2367a(collection);
        this.f3962f.requestLayout();
    }

    /* renamed from: a */
    public void m3969a(boolean z) {
        f3960l.put(this.f3963g.getPath(), Float.valueOf(this.f3962f.getScrollPos()));
        this.f3962f.m4262c();
        QuickApp.f2077t.m2168a(true);
        if (z) {
            QuickApp.f2080w.m2524c();
        } else {
            m3989t();
        }
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    @TargetApi(11)
    /* renamed from: a */
    public boolean mo3945a(Menu menu) {
        if (this.f3964h == 5) {
            MenuItem add = menu.add(0, R.id.done, 0, android.R.string.ok);
            MenuItemC0703l.m2754a(this.f4082C, add);
            m3868a(add, 2);
            menu.add(0, R.id.browse_mode, 0, R.string.browse_mode);
            menu.add(0, R.id.sort, 0, R.string.sort);
            menu.add(0, android.R.id.selectAll, 0, android.R.string.selectAll);
            return true;
        }
        if (this.f3962f.f4407d) {
            return false;
        }
        MenuC0693b.m2735a(this.f4082C, R.menu.folder, menu);
        if (this.f3964h == 0) {
            m3866a(menu, R.id.slideshow, 2);
            m3866a(menu, R.id.select, 2);
        } else {
            m3867a(menu, R.id.slideshow, false);
            m3867a(menu, R.id.select, false);
        }
        menu.removeItem(R.id.cover);
        menu.removeItem(R.id.delete);
        menu.removeItem(R.id.top);
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01ea, code lost:
    
        if (m3885d() != false) goto L7;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x003c  */
    @Override // com.alensw.p038ui.p041c.C1234cu
    @TargetApi(11)
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean mo3946a(MenuItem menuItem) {
        int i;
        int m2354a;
        int itemId = menuItem.getItemId();
        View c = this.f4082C.m3809c(itemId);
        int size = this.f3967k.size();
        int i2 = this.f3963g.f2420d;
        switch (itemId) {
            case android.R.id.title:
                if (f3849a || !m3885d()) {
                    C1071f.m3740a(this.f4082C, R.string.rename, this.f3963g.getName(), (CharSequence) null, new C1210bx(this));
                }
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                    return true;
                }
                int m2358a = this.f3963g.m2358a();
                int m2378d = this.f3963g.m2378d();
                this.f3963g.f2420d = m2354a;
                C0635q.m2430a(this.f4082C).m2434b(this.f3963g);
                if (this.f3965i != m2358a) {
                    this.f3965i = this.f3963g.m2358a();
                    m3970b(this.f3965i);
                    int width = this.f3962f.getWidth();
                    int height = this.f3962f.getHeight();
                    if (width > 0 && height > 0) {
                        this.f3962f.m4242a(true, this.f4082C.m4039b(true), new RectF(width / 4, height / 4, (width * 3) / 4, (height * 3) / 4));
                    }
                }
                if (this.f3966j == m2378d) {
                    return true;
                }
                this.f3966j = this.f3963g.m2378d();
                m3969a(true);
                this.f3963g.f2421e = -1;
                m3984o();
                return true;
            case android.R.id.selectAll:
                if (this.f3962f.f4407d) {
                    if (this.f3967k.size() < this.f3963g.m2390j()) {
                        this.f3967k.addAll(this.f3963g.f2425i);
                    } else {
                        this.f3967k.clear();
                    }
                    this.f3962f.m4257b();
                    if (this.f4082C.m3832q()) {
                        this.f4082C.m3807a((CharSequence) (Integer.toString(this.f3967k.size()) + "/" + this.f3963g.m2390j()), false);
                    }
                }
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.done /* 2131296265 */:
                Intent m3987r = m3987r();
                if (m3987r == null) {
                    return true;
                }
                super.m3862a(m3987r);
                return true;
            case R.id.share /* 2131296266 */:
                m3967a(this.f4082C.m3809c(itemId));
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.details /* 2131296324 */:
            case R.id.edit /* 2131296361 */:
            case R.id.set_as /* 2131296362 */:
            case R.id.show_in_map /* 2131296364 */:
                if (this.f3967k.size() > 0) {
                    m3965a(itemId, (C0622d) this.f3967k.iterator().next());
                }
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.browse_mode /* 2131296328 */:
                MenuC0693b.m2736a(this.f4082C, c, new C1193bg(this));
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.browse_grid /* 2131296331 */:
                this.f3965i = 0;
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.browse_list /* 2131296332 */:
                this.f3965i = 2;
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.delete /* 2131296334 */:
                C1094a.m3773a(this.f4082C, size, this.f4082C.m3809c(itemId), new RunnableC1207bu(this));
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.move_to /* 2131296336 */:
                if (f3849a) {
                    break;
                }
                m3876a(m3988s(), itemId == R.id.copy_to, new C1208bv(this));
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.slideshow /* 2131296338 */:
                m3966a(Uri.fromFile(this.f3963g), "image/*", true);
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.sort /* 2131296340 */:
                switch (this.f3966j) {
                    case 1:
                        i = R.id.sort_by_date;
                        break;
                    case 2:
                        r0 = true;
                        i = R.id.sort_by_name;
                        break;
                    case 3:
                        r0 = true;
                        i = R.id.sort_by_date;
                        break;
                    case 4:
                        i = R.id.sort_by_name;
                        break;
                    case 5:
                        r0 = true;
                        i = R.id.sort_by_exif;
                        break;
                    case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                        i = R.id.sort_by_exif;
                        break;
                    case SimpleLog.LOG_LEVEL_OFF /* 7 */:
                        r0 = true;
                        i = R.id.sort_by_size;
                        break;
                    case 8:
                        i = R.id.sort_by_size;
                        break;
                    default:
                        i = 0;
                        break;
                }
                C1094a.m3778a(this.f4082C, c, new int[]{R.id.sort_by_name, R.id.sort_by_date, R.id.sort_by_exif, R.id.sort_by_size}, i, r0);
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.desktop_link /* 2131296341 */:
                m3869a(this.f3963g);
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.rotate /* 2131296346 */:
                C1094a.m3785c(this.f4082C, this.f4082C.m3809c(itemId));
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.select /* 2131296350 */:
                if (!this.f4082C.m3832q()) {
                    this.f4082C.m3813d(true);
                    m3982m();
                }
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.hide /* 2131296351 */:
                if (this.f3963g.m2369a(true)) {
                    m3878a(this.f3963g, false, (Runnable) null);
                } else if (!m3885d()) {
                    C1071f.m3739a(this.f4082C, R.string.hide, m4032g(R.string.hide_confirm), new RunnableC1204br(this), (Runnable) null);
                }
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.exclude /* 2131296353 */:
                m3871a(this.f3963g, new C1205bs(this));
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.rename /* 2131296354 */:
                if (!f3849a || !m3885d()) {
                    if (this.f3962f.f4407d) {
                        int size2 = this.f3967k.size();
                        if (size2 > 1) {
                            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f4082C);
                            C1071f.m3740a(this.f4082C, R.string.rename, defaultSharedPreferences.getString("name_format", "IMG_%Y-%M-%D_%h.%m.%s"), m4032g(R.string.rename_format), new C1209bw(this, defaultSharedPreferences));
                        } else if (size2 == 1) {
                            m3965a(itemId, (C0622d) this.f3967k.iterator().next());
                        }
                    }
                    if (f3849a) {
                        break;
                    }
                    C1071f.m3740a(this.f4082C, R.string.rename, this.f3963g.getName(), (CharSequence) null, new C1210bx(this));
                }
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.fix_date /* 2131296358 */:
                C1071f.m3739a(this.f4082C, R.string.fix_date, m4032g(R.string.fix_date_confirm), new RunnableC1206bt(this), (Runnable) null);
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.copy_to /* 2131296363 */:
                m3876a(m3988s(), itemId == R.id.copy_to, new C1208bv(this));
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.rotate_left /* 2131296368 */:
                m3974d(-90);
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.rotate_right /* 2131296369 */:
                m3974d(90);
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.rotate_180 /* 2131296370 */:
                m3974d(180);
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.sort_by_name /* 2131296372 */:
                this.f3966j = this.f3966j == 2 ? 4 : 2;
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.sort_by_date /* 2131296373 */:
                this.f3966j = this.f3966j == 1 ? 3 : 1;
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.sort_by_exif /* 2131296374 */:
                this.f3966j = this.f3966j == 6 ? 5 : 6;
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            case R.id.sort_by_size /* 2131296375 */:
                this.f3966j = this.f3966j == 7 ? 8 : 7;
                m2354a = C0623e.m2354a(this.f3963g.m2370b(), this.f3965i, this.f3966j);
                if (m2354a != i2) {
                }
                break;
            default:
                return super.mo3946a(menuItem);
        }
    }

    @Override // com.alensw.p038ui.p041c.C1159a, com.alensw.p038ui.p041c.C1234cu
    /* renamed from: b */
    public void mo3881b() {
        super.mo3881b();
        if (this.f3963g != null) {
            Uri fromFile = Uri.fromFile(this.f3963g);
            this.f4084E.setData(fromFile);
            if (this.f3964h == 2) {
                ActivityC1147p.f3828E = fromFile;
            } else {
                ActivityC1147p.f3827D = fromFile;
            }
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f4082C);
            if (defaultSharedPreferences.getBoolean("open_last_folder", false)) {
                defaultSharedPreferences.edit().putString("last_folder", this.f3963g.getPath()).commit();
            }
        }
        m3969a(false);
    }

    /* renamed from: b */
    protected void m3970b(int i) {
        int i2;
        int i3;
        int i4;
        switch (i) {
            case 0:
                i2 = 1;
                break;
            case 1:
            default:
                i2 = 0;
                break;
            case 2:
                i2 = 2;
                break;
        }
        if (i2 == 2) {
            int[] e = m3886e();
            i3 = e[0];
            i4 = e[1];
        } else {
            i3 = QuickApp.f2075r.f2373d;
            i4 = QuickApp.f2075r.f2374e;
        }
        this.f3962f.m4252a(this.f3971q, i3, i4);
        this.f3962f.m4245a(i2, i2 == 2);
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: b */
    public void mo3971b(Intent intent) {
        Uri data;
        if (intent == null || this.f3963g == null || (data = intent.getData()) == null) {
            return;
        }
        String path = data.getPath();
        if (path != null && !path.equals(this.f3963g.m2373b(this.f3963g.f2419c))) {
            this.f3963g.f2419c = this.f3963g.m2364a(path, C0690c.m2721a(path));
        }
        this.f3962f.m4264c(this.f3963g.f2419c);
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: b */
    public void mo3949b(Bundle bundle) {
        bundle.putParcelable("current_uri", Uri.fromFile(this.f3963g));
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: b */
    public boolean mo3950b(Menu menu) {
        MenuItem findItem;
        if (!this.f3962f.f4407d && (findItem = menu.findItem(R.id.hide)) != null) {
            findItem.setTitle(this.f3963g.m2369a(true) ? R.string.unhide : R.string.hide);
        }
        return true;
    }

    @Override // com.alensw.p038ui.p041c.C1159a
    /* renamed from: c */
    protected String mo3882c() {
        return "Folder";
    }

    /* renamed from: c */
    protected void m3972c(int i) {
        super.m3870a(this.f3963g, i, new C1195bi(this));
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    @TargetApi(11)
    /* renamed from: c */
    protected boolean mo3973c(Menu menu) {
        MenuC0693b.m2735a(this.f4082C, R.menu.picture, menu);
        menu.add(0, android.R.id.selectAll, 0, android.R.string.selectAll);
        menu.removeItem(R.id.slideshow);
        menu.removeItem(R.id.settings);
        if (ActivityC1109ao.f3725F) {
            for (int size = menu.size() - 1; size >= 0; size--) {
                menu.getItem(size).setShowAsAction(0);
            }
        }
        m3866a(menu, R.id.share, 2);
        m3866a(menu, R.id.delete, 2);
        m3866a(menu, R.id.rotate, 2);
        this.f3967k.clear();
        this.f3962f.setMultiSelect(true);
        if (this.f3963g != null) {
            m3884d(this.f3963g.getPath());
        }
        return true;
    }

    /* renamed from: d */
    public void m3974d(int i) {
        HashSet m3988s = m3988s();
        int size = m3988s.size();
        if (size == 0) {
            return;
        }
        m3969a(false);
        new ProgressDialogC1200bn(this, this.f4082C, m4032g(R.string.rotate) + ": " + i, size, m3988s, i).m3731c();
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: d */
    protected boolean mo3975d(Menu menu) {
        int size = this.f3967k.size();
        boolean z = size == 1 ? ((C0622d) this.f3967k.iterator().next()).f2405c == 'I' : false;
        m3867a(menu, R.id.details, size == 1);
        m3867a(menu, R.id.edit, z);
        m3867a(menu, R.id.set_as, z);
        m3867a(menu, R.id.show_in_map, z);
        menu.findItem(android.R.id.selectAll).setTitle(size == this.f3962f.getCount() ? R.string.deselect_all : android.R.string.selectAll);
        return true;
    }

    /* renamed from: f */
    public void m3976f(String str) {
        C0623e c0623e = this.f3963g;
        m3969a(false);
        int m2493a = QuickApp.f2072o.m2493a(QuickApp.f2072o.m2494a(c0623e), str);
        if (m2493a < 0) {
            m3879a(c0623e.getPath());
        } else {
            this.f3963g = QuickApp.f2072o.m2500b(m2493a);
            new ProgressDialogC1197bk(this, this.f4082C, m4032g(R.string.running_wait), 0, c0623e).m3731c();
        }
    }

    /* renamed from: g */
    public void m3977g(String str) {
        HashSet m3988s = m3988s();
        int size = m3988s.size();
        if (size == 0) {
            return;
        }
        m3969a(false);
        new ProgressDialogC1199bm(this, this.f4082C, m4032g(R.string.rename), size, str, m3988s, QuickApp.f2075r, new ArrayList(size)).m3731c();
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: h */
    public RectF mo3978h() {
        RectF rectF = new RectF();
        this.f3962f.m4264c(this.f3963g.f2419c);
        this.f3962f.m4243a(this.f3963g.f2419c);
        if (this.f3963g.f2419c < 0 || !this.f3962f.m4261b(this.f3963g.f2419c, rectF)) {
            return super.mo3978h();
        }
        rectF.offset(0.0f, this.f3968n);
        return rectF;
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: i */
    public void mo3979i() {
        this.f3962f.m4243a(-1);
        super.mo3979i();
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: j */
    protected Uri[] mo3953j() {
        return m3986q();
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: k */
    protected void mo3980k() {
        this.f3967k.clear();
        this.f3962f.setMultiSelect(false);
        m3982m();
    }

    /* renamed from: l */
    protected boolean m3981l() {
        if (this.f4082C.m3832q() && this.f3967k.isEmpty()) {
            this.f4082C.m3813d(false);
        }
        return m3982m() > 0;
    }

    /* renamed from: m */
    protected int m3982m() {
        int m2390j = this.f3963g.m2390j();
        if (this.f3962f.f4407d) {
            CharSequence charSequence = Integer.toString(this.f3967k.size()) + "/" + m2390j;
            if (this.f4082C.m3832q()) {
                this.f4082C.m3807a(charSequence, true);
            } else {
                m4027b(charSequence);
            }
        } else {
            String name = this.f3963g.getName();
            if (this.f3963g.f2423g == 2) {
                name = m4032g(R.string.camera);
            }
            if (m2390j > 0) {
                name = name + " (" + m2390j + ")";
            }
            m4027b((CharSequence) name);
        }
        return m2390j;
    }

    /* renamed from: n */
    protected void m3983n() {
        ArrayList arrayList = new ArrayList(this.f3963g.f2425i);
        int size = arrayList.size();
        m3969a(false);
        new ProgressDialogC1194bh(this, this.f4082C, m4032g(R.string.fix_date), size, arrayList, QuickApp.f2076s, new String[]{"datetaken"}).m3731c();
    }

    /* renamed from: o */
    public void m3984o() {
        RunnableC1196bj runnableC1196bj = new RunnableC1196bj(this, (Float) f3960l.remove(this.f3963g.getPath()));
        if (!(this.f3963g.m2390j() == 0 || this.f3963g.m2393m())) {
            runnableC1196bj.run();
            return;
        }
        this.f3967k.clear();
        QuickApp.f2072o.m2497a(this.f3963g, true);
        QuickApp.f2080w.m2524c();
        this.f3962f.setEmptyText(m4032g(R.string.loading));
        m3872a(this.f3963g, runnableC1196bj);
    }

    /* renamed from: p */
    public void m3985p() {
        HashSet m3988s = m3988s();
        int size = m3988s.size();
        if (size == 0) {
            return;
        }
        m3969a(false);
        C0615bc c0615bc = QuickApp.f2075r;
        new ProgressDialogC1198bl(this, this.f4082C, m4032g(R.string.delete), size, m3988s, QuickApp.f2076s, c0615bc, new ArrayList(size)).m3731c();
    }

    /* renamed from: q */
    public Uri[] m3986q() {
        int size = this.f3967k.size();
        if (size == 0) {
            return null;
        }
        Uri[] uriArr = new Uri[size];
        Iterator it = this.f3967k.iterator();
        int i = 0;
        while (it.hasNext()) {
            uriArr[i] = this.f3963g.m2372b(((C0622d) it.next()).f2404b);
            i++;
        }
        return uriArr;
    }

    /* renamed from: r */
    public Intent m3987r() {
        Intent intent;
        int size = this.f3967k.size();
        if (size == 0) {
            return null;
        }
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(size);
        ArrayList<String> arrayList2 = new ArrayList<>(size);
        ArrayList<Integer> arrayList3 = new ArrayList<>(size);
        Iterator it = this.f3967k.iterator();
        int i = 0;
        while (it.hasNext()) {
            C0622d c0622d = (C0622d) it.next();
            File file = new File(this.f3963g, c0622d.f2404b);
            if (c0622d.f2405c == 'I') {
                i |= 1;
            } else if (c0622d.f2405c == 'V') {
                i |= 2;
            }
            arrayList.add(Uri.fromFile(file));
            arrayList2.add(file.getPath());
            arrayList3.add(Integer.valueOf(c0622d.f2405c));
        }
        String str = i == 1 ? "image/jpeg" : i == 2 ? "video/mp4" : "*/*";
        if (size > 1) {
            intent = new Intent("android.intent.action.SEND_MULTIPLE");
            intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
            intent.putStringArrayListExtra("multiple_files", arrayList2);
            intent.putIntegerArrayListExtra("multiple_types", arrayList3);
        } else {
            Intent intent2 = new Intent("android.intent.action.SEND");
            intent2.putExtra("android.intent.extra.STREAM", arrayList.get(0));
            intent = intent2;
        }
        intent.setType(str);
        intent.addFlags(1);
        return intent;
    }

    /* renamed from: s */
    public HashSet m3988s() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(this.f3967k.size());
        linkedHashSet.addAll(this.f3967k);
        return linkedHashSet;
    }

    /* renamed from: t */
    public void m3989t() {
        int firstVisible = this.f3962f.getFirstVisible();
        int lastVisible = this.f3962f.getLastVisible();
        for (int i = firstVisible; i < lastVisible; i++) {
            QuickApp.f2080w.m2521b(this.f3963g.m2381e(i));
        }
        if (lastVisible > firstVisible) {
            QuickApp.f2080w.m2522b(lastVisible - firstVisible);
        }
    }
}
