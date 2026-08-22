package com.alensw.p038ui.p041c;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.ContentObserver;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.alensw.PicFolder.GalleryActivity;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.bean.CommonFile;
import com.alensw.bean.CommonFolder;
import com.alensw.cloud.C0860aa;
import com.alensw.cloud.UrlTaskService;
import com.alensw.p022a.C0607av;
import com.alensw.p022a.C0615bc;
import com.alensw.p022a.C0634p;
import com.alensw.p022a.C0635q;
import com.alensw.p022a.InterfaceC0595aj;
import com.alensw.p022a.InterfaceC0611az;
import com.alensw.p023b.p024a.C0645a;
import com.alensw.p023b.p030g.MenuC0693b;
import com.alensw.p023b.p031h.C0712h;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p023b.p034k.C0730a;
import com.alensw.p023b.p034k.C0733d;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.activity.ActivityC1147p;
import com.alensw.p038ui.activity.C1094a;
import com.alensw.p038ui.p039a.C1071f;
import com.alensw.p038ui.view.ImageGridView;
import com.alensw.p038ui.view.InterfaceC1309aj;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import org.apache.commons.logging.impl.SimpleLog;

/* renamed from: com.alensw.ui.c.z */
/* loaded from: classes.dex */
public class C1290z extends C1159a {

    /* renamed from: B */
    private String f4273B;

    /* renamed from: L */
    private C0712h f4274L;

    /* renamed from: M */
    private C0733d f4275M;

    /* renamed from: N */
    private Set f4276N;

    /* renamed from: O */
    private C0645a f4277O;

    /* renamed from: P */
    private int f4278P;

    /* renamed from: f */
    protected ImageGridView f4285f;

    /* renamed from: g */
    protected ViewGroup f4286g;

    /* renamed from: h */
    protected TextView f4287h;

    /* renamed from: i */
    protected int f4288i;

    /* renamed from: j */
    protected int f4289j;

    /* renamed from: k */
    protected int f4290k;

    /* renamed from: l */
    protected boolean f4291l;

    /* renamed from: m */
    protected boolean f4292m;

    /* renamed from: n */
    protected boolean f4293n;

    /* renamed from: o */
    protected boolean f4294o;

    /* renamed from: p */
    protected boolean f4295p;

    /* renamed from: r */
    protected boolean f4297r;

    /* renamed from: v */
    protected int f4301v;

    /* renamed from: w */
    protected int f4302w;

    /* renamed from: x */
    protected int f4303x;

    /* renamed from: y */
    protected CommonFolder f4304y;

    /* renamed from: z */
    public static final HashMap f4272z = new HashMap(16);

    /* renamed from: A */
    public static final C0730a f4271A = new C0730a(2, 3, 8, 5);

    /* renamed from: q */
    protected boolean f4296q = true;

    /* renamed from: s */
    protected final LinkedHashSet f4298s = new LinkedHashSet(256);

    /* renamed from: t */
    protected final Paint f4299t = new Paint(1);

    /* renamed from: u */
    protected final Paint f4300u = new Paint(1);

    /* renamed from: Q */
    private final Rect f4279Q = new Rect();

    /* renamed from: R */
    private final InterfaceC0595aj f4280R = new C1163ad(this);

    /* renamed from: S */
    private final InterfaceC1309aj f4281S = new C1164ae(this);

    /* renamed from: T */
    private final Runnable f4282T = new RunnableC1167ah(this);

    /* renamed from: U */
    private final ContentObserver f4283U = new C1168ai(this, this.f3851b);

    /* renamed from: V */
    private final InterfaceC0611az f4284V = new C1169aj(this);

    /* renamed from: a */
    public static Intent m4168a(CommonFolder commonFolder, boolean z, String str) {
        Intent intent = new Intent();
        intent.setData(commonFolder.mo3021i());
        intent.putExtra("QuickPic.folder", commonFolder);
        intent.putExtra("QuickPic.is_root", z);
        if (str != null) {
            intent.putExtra("QuickPic.root_id", str);
        }
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m4175f(String str) {
        new ProgressDialogC1166ag(this, this.f4082C, m4032g(R.string.add), 0, this.f4082C.getContentResolver(), this.f4304y.mo3021i(), str).m3731c();
    }

    /* renamed from: w */
    private void m4176w() {
        C1071f.m3740a(this.f4082C, R.string.new_folder, "", (CharSequence) null, new C1165af(this));
    }

    /* renamed from: x */
    private void m4177x() {
        Intent intent = new Intent("com.alensw.PicFolder.action.PICK_MULTIPLE");
        intent.setComponent(new ComponentName(this.f4082C.getPackageName(), GalleryActivity.class.getName()));
        C1094a.m3780a((Activity) this.f4082C, intent, 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y */
    public void m4178y() {
        if (this.f4304y == null || (this.f4304y.m3015c() & 1) == 0) {
            return;
        }
        if (this.f4087H == 2) {
            this.f4277O.m2523c(this.f4304y);
        }
        QuickApp.f2075r.m2309a(this.f4304y.mo3021i().toString());
    }

    @Override // com.alensw.p038ui.p041c.C1159a, com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public long mo3860a(boolean z, RectF rectF) {
        return this.f4285f.m4242a(z, this.f4082C.m4039b(z), rectF);
    }

    @Override // com.alensw.p038ui.p041c.C1159a, com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3861a() {
        super.mo3861a();
        if (this.f4278P != 0) {
            this.f4083D.setPadding(this.f4083D.getPaddingLeft(), this.f4083D.getPaddingTop() - this.f4278P, this.f4083D.getPaddingRight(), this.f4083D.getPaddingBottom());
            this.f4278P = 0;
        }
        this.f4285f.setHorizontal(PreferenceManager.getDefaultSharedPreferences(this.f4082C).getBoolean("horizontal_scroll", this.f4285f.f4406c));
        if (m3877a(this.f4288i)) {
            if (this.f4294o) {
                this.f4304y.m3051s();
            }
            this.f4277O.m2524c();
        }
        this.f4297r = false;
        if (this.f4296q) {
            this.f4296q = false;
            mo4058n();
        } else {
            this.f4285f.requestLayout();
        }
        m4189l();
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3939a(int i, int i2, int i3, int i4) {
        super.mo3939a(i, i2, i3, i4);
        this.f4082C.mo1991a(this.f4279Q);
        this.f4285f.setPadding(this.f4279Q.left, this.f4279Q.top, this.f4279Q.right, this.f4279Q.bottom);
        if (this.f4286g != null) {
            this.f4286g.setPadding(this.f4279Q.left, this.f4279Q.top, this.f4279Q.right, 0);
        }
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3940a(int i, int i2, Intent intent) {
        if (i != 1 || intent == null) {
            return;
        }
        Uri i3 = this.f4304y.mo3021i();
        String action = intent.getAction();
        if ("android.intent.action.SEND".equals(action)) {
            this.f4082C.startService(UrlTaskService.m3121a(this.f4082C, 2, (Uri) intent.getParcelableExtra("android.intent.extra.STREAM"), i3));
        } else if ("android.intent.action.SEND_MULTIPLE".equals(action)) {
            Iterator it = intent.getParcelableArrayListExtra("android.intent.extra.STREAM").iterator();
            while (it.hasNext()) {
                this.f4082C.startService(UrlTaskService.m3121a(this.f4082C, 2, (Uri) it.next(), i3));
            }
        }
    }

    /* renamed from: a */
    protected void m4179a(int i, CommonFile commonFile) {
        if (this.f4304y.m3027a(this.f4304y.f2807k) != commonFile) {
            this.f4304y.f2807k = this.f4304y.m3025a(commonFile);
        }
        if (commonFile.m3020h() == 'D') {
        }
        View c = this.f4082C.m3809c(i);
        switch (i) {
            case R.id.details /* 2131296324 */:
                new C1246df(this.f4082C, commonFile, null).m4078a(Integer.toString(this.f4304y.f2807k + 1) + "/" + this.f4304y.m3047o(), new C1172am(this, commonFile));
                break;
            case R.id.edit /* 2131296361 */:
                new C1246df(this.f4082C, commonFile, null).m4077a(c, (Bundle) null);
                break;
            case R.id.set_as /* 2131296362 */:
                new C1246df(this.f4082C, commonFile, null).m4080b(c, null);
                break;
            case R.id.show_in_map /* 2131296364 */:
                new C1246df(this.f4082C, commonFile, null).m4079b(c);
                break;
        }
    }

    @Override // com.alensw.p038ui.p041c.C1159a, com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3865a(Bundle bundle) {
        super.mo3865a(bundle);
        super.m4033h(R.layout.browser);
        this.f4304y = (CommonFolder) this.f4084E.getParcelableExtra("QuickPic.folder");
        if (this.f4304y == null) {
            m4023E();
            return;
        }
        this.f4277O = QuickApp.f2080w;
        this.f4292m = !C0725a.m2920c(this.f4304y.mo3021i());
        this.f4293n = this.f4084E.getBooleanExtra("QuickPic.is_root", false);
        this.f4273B = this.f4084E.getStringExtra("QuickPic.root_id");
        if (this.f4273B == null) {
            this.f4273B = C0725a.m2922d(this.f4082C.getContentResolver(), this.f4304y.mo3021i());
        }
        int c = this.f4304y.m3015c();
        this.f4291l = (Integer.MIN_VALUE & c) != 0;
        this.f4294o = (268435456 & c) == 0;
        this.f4295p = (134217728 & c) != 0;
        if (this.f4292m && this.f4293n && !this.f4291l) {
            this.f4293n = false;
        }
        if (this.f4295p) {
            Typeface create = Typeface.create("sans-serif-light", 0);
            if (create != null) {
                this.f4300u.setTypeface(create);
            }
            Typeface create2 = Typeface.create("sans-serif-thin", 0);
            if (create2 != null) {
                this.f4299t.setTypeface(create2);
            } else if (create != null) {
                this.f4299t.setTypeface(create);
            }
        }
        this.f4299t.setTextAlign(Paint.Align.CENTER);
        this.f4300u.setTextAlign(Paint.Align.CENTER);
        if (this.f4293n && !this.f4292m) {
            this.f4276N = C0860aa.m3276a(this.f4082C, this.f4273B);
        }
        m4027b(this.f4304y.m3012a());
        String g = this.f4304y.m3019g();
        if (g == null || g.length() <= 0) {
            g = null;
        }
        m4028c((CharSequence) g);
        this.f4288i = ActivityC1147p.m3849b(this.f4084E);
        this.f3852c = (ViewGroup) m4031f(R.id.bottom_bar);
        this.f4285f = (ImageGridView) m4031f(R.id.grid);
        this.f4285f.setFastScrollEnabled(true);
        this.f4285f.setSpaceWidth((QuickApp.f2065h / 320) * 2);
        this.f4304y.f2808l = C0635q.m2430a(this.f4082C).m2433a(this.f4304y);
        this.f4289j = this.f4304y.m3043k();
        this.f4290k = this.f4304y.m3044l();
        m4186b(this.f4289j);
        this.f4304y.mo3030a(this.f4082C.getContentResolver(), this.f4283U);
        C1159a.m3858a(this.f4082C, this.f4292m ? "local" : "cloud");
    }

    /* renamed from: a */
    public void m4180a(View view) {
        Intent m4195s = m4195s();
        if (m4195s == null) {
            return;
        }
        if (!"android.intent.action.SEND".equals(m4195s.getAction())) {
            C1094a.m3769a(this.f4082C, m4195s, R.string.share, view, new C1161ab(this));
            return;
        }
        Uri uri = (Uri) m4195s.getParcelableExtra("android.intent.extra.STREAM");
        if (uri != null) {
            new C1246df(this.f4082C, uri, (char) 0, m4195s.getType(), null).m4076a(view);
        }
    }

    /* renamed from: a */
    public void m4181a(CommonFile commonFile) {
        QuickApp.f2077t.m2166a(commonFile, this.f4291l, this.f4280R);
    }

    /* renamed from: a */
    public void mo4057a(CommonFolder commonFolder) {
        this.f4082C.m4037a(C1290z.class, m4168a(commonFolder, false, this.f4273B), (Bundle) null);
    }

    /* renamed from: a */
    public void m4182a(CharSequence charSequence) {
        if (this.f4286g == null) {
            this.f4286g = (ViewGroup) View.inflate(this.f4082C, R.layout.message_bar, null);
            ((ViewGroup) this.f4083D).addView(this.f4286g, -1, -2);
            this.f4287h = (TextView) this.f4286g.findViewById(R.id.message);
            ImageView imageView = (ImageView) this.f4286g.findViewById(R.id.message_close);
            imageView.setImageDrawable(C0742b.m2966a(m4024F(), R.raw.ic_menu_cancel, this.f4287h.getTextColors().getDefaultColor()));
            imageView.setOnClickListener(new ViewOnClickListenerC1162ac(this));
        }
        this.f4287h.setText(charSequence);
        if (this.f4286g.getVisibility() != 0) {
            this.f4286g.setPadding(this.f4279Q.left, this.f4279Q.top, this.f4279Q.right, 0);
            this.f4286g.setVisibility(0);
            this.f4286g.startAnimation(this.f4082C.m3810c(true));
        }
    }

    /* renamed from: a */
    public void m4183a(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            QuickApp.f2080w.m2523c(it.next());
        }
        this.f4298s.removeAll(collection);
        this.f4304y.m3033a(collection);
        this.f4285f.requestLayout();
    }

    /* renamed from: a */
    public void m4184a(HashSet hashSet, Uri uri) {
        int size = hashSet.size();
        if (size == 0) {
            return;
        }
        Uri i = this.f4304y.mo3021i();
        if (i.equals(uri)) {
            return;
        }
        m4185a(false);
        C0615bc c0615bc = QuickApp.f2075r;
        new ProgressDialogC1176aq(this, this.f4082C, m4032g(R.string.move_to), size, hashSet, this.f4082C.getContentResolver(), i, uri, c0615bc, new ArrayList(size)).m3731c();
    }

    /* renamed from: a */
    public void m4185a(boolean z) {
        f4272z.put(this.f4304y.mo3021i(), Float.valueOf(this.f4285f.getScrollPos()));
        this.f4285f.m4262c();
        QuickApp.f2077t.m2168a(true);
        if (z) {
            this.f4277O.m2524c();
        } else {
            m4198v();
        }
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    @TargetApi(11)
    /* renamed from: a */
    public boolean mo3945a(Menu menu) {
        boolean z = false;
        if (this.f4285f.f4407d) {
            return false;
        }
        MenuC0693b.m2735a(this.f4082C, R.menu.common_folder, menu);
        if (this.f4288i == 0) {
            m3866a(menu, R.id.search, 2);
            m3866a(menu, R.id.slideshow, 2);
        }
        Uri i = this.f4304y.mo3021i();
        int c = this.f4304y.m3015c();
        if ((c & 8) != 0) {
            m3866a(menu, R.id.add, 1);
        } else {
            menu.removeItem(R.id.add);
        }
        if ((c & 2) == 0 || !C0725a.m2920c(i)) {
            menu.removeItem(R.id.upload);
        } else {
            m3866a(menu, R.id.upload, 2);
        }
        m3867a(menu, R.id.search, this.f4293n && this.f4292m);
        m3867a(menu, R.id.sort, this.f4294o);
        if (this.f4293n && this.f4292m) {
            z = true;
        }
        m3867a(menu, R.id.transfer, z);
        m3867a(menu, R.id.settings, this.f4293n);
        if (!C0725a.m2924d(i)) {
            menu.removeItem(R.id.desktop_link);
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0194, code lost:
    
        if (m3885d() != false) goto L7;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x019f  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002e  */
    @Override // com.alensw.p038ui.p041c.C1234cu
    @TargetApi(11)
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean mo3946a(MenuItem menuItem) {
        boolean z;
        int i;
        int m3023a;
        int itemId = menuItem.getItemId();
        View c = this.f4082C.m3809c(itemId);
        int size = this.f4298s.size();
        int i2 = this.f4304y.f2808l;
        switch (itemId) {
            case android.R.id.selectAll:
                if (this.f4285f.f4407d) {
                    if (this.f4298s.size() < this.f4304y.m3047o()) {
                        this.f4298s.addAll(this.f4304y.m3048p());
                    } else {
                        this.f4298s.clear();
                    }
                    this.f4285f.m4257b();
                    if (this.f4082C.m3832q()) {
                        this.f4082C.m3807a((CharSequence) (Integer.toString(this.f4298s.size()) + "/" + this.f4304y.m3047o()), false);
                    }
                }
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                    return true;
                }
                int m3043k = this.f4304y.m3043k();
                int m3044l = this.f4304y.m3044l();
                this.f4304y.f2808l = m3023a;
                C0635q.m2430a(this.f4082C).m2435b(this.f4304y);
                if (this.f4289j != m3043k) {
                    this.f4289j = this.f4304y.m3043k();
                    m4186b(this.f4289j);
                    int width = this.f4285f.getWidth();
                    int height = this.f4285f.getHeight();
                    if (width > 0 && height > 0) {
                        this.f4285f.m4242a(true, this.f4082C.m4039b(true), new RectF(width / 4, height / 4, (width * 3) / 4, (height * 3) / 4));
                    }
                }
                if (this.f4290k == m3044l) {
                    return true;
                }
                this.f4290k = this.f4304y.m3044l();
                m4185a(false);
                this.f4304y.m3051s();
                mo4058n();
                return true;
            case R.id.share /* 2131296266 */:
                m4180a(c);
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.add /* 2131296320 */:
                m4176w();
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.details /* 2131296324 */:
            case R.id.edit /* 2131296361 */:
            case R.id.set_as /* 2131296362 */:
            case R.id.show_in_map /* 2131296364 */:
                if (this.f4298s.size() > 0) {
                    m4179a(itemId, (CommonFile) this.f4298s.iterator().next());
                }
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.browse_mode /* 2131296328 */:
                MenuC0693b.m2736a(this.f4082C, c, new C1160aa(this));
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.browse_grid /* 2131296331 */:
                this.f4289j = 0;
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.browse_list /* 2131296332 */:
                this.f4289j = 2;
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.delete /* 2131296334 */:
                C1094a.m3773a(this.f4082C, size, c, new RunnableC1170ak(this));
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.download /* 2131296335 */:
                m4192p();
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.move_to /* 2131296336 */:
                if (this.f4292m) {
                    if (f3849a) {
                        break;
                    }
                    m3876a(m4197u(), itemId != R.id.copy_to, new C1171al(this));
                } else {
                    m4193q();
                }
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.search /* 2131296337 */:
                if (this.f4292m && this.f4273B != null) {
                    m3883c(this.f4273B);
                }
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.slideshow /* 2131296338 */:
                m4187b(true);
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.upload /* 2131296339 */:
                m4177x();
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.sort /* 2131296340 */:
                switch (this.f4290k) {
                    case 1:
                        z = false;
                        i = R.id.sort_by_date;
                        break;
                    case 2:
                        z = true;
                        i = R.id.sort_by_name;
                        break;
                    case 3:
                        z = true;
                        i = R.id.sort_by_date;
                        break;
                    case 4:
                        z = false;
                        i = R.id.sort_by_name;
                        break;
                    case 5:
                    case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                    default:
                        z = false;
                        i = 0;
                        break;
                    case SimpleLog.LOG_LEVEL_OFF /* 7 */:
                        z = true;
                        i = R.id.sort_by_size;
                        break;
                    case 8:
                        z = false;
                        i = R.id.sort_by_size;
                        break;
                }
                C1094a.m3778a(this.f4082C, c, new int[]{R.id.sort_by_name, R.id.sort_by_date, R.id.sort_by_size}, i, z);
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.desktop_link /* 2131296341 */:
                int m3047o = this.f4304y.m3047o();
                int i3 = 0;
                while (true) {
                    if (i3 < m3047o) {
                        CommonFile m3027a = this.f4304y.m3027a(i3);
                        if (m3027a == null || (m3027a.m3015c() & 1) == 0) {
                            i3++;
                        } else {
                            m3875a(this.f4304y.m3012a(), this.f4304y.mo3021i(), this.f4304y.m3036b(i3));
                        }
                    }
                }
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.rotate /* 2131296346 */:
                C1094a.m3785c(this.f4082C, c);
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.select /* 2131296350 */:
                if ((this.f4304y.m3015c() & 2) != 0 && !this.f4082C.m3832q()) {
                    this.f4082C.m3813d(true);
                    m4190m();
                }
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.copy_to /* 2131296363 */:
                m3876a(m4197u(), itemId != R.id.copy_to, new C1171al(this));
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.rotate_left /* 2131296368 */:
                m4188c(-90);
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.rotate_right /* 2131296369 */:
                m4188c(90);
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.rotate_180 /* 2131296370 */:
                m4188c(180);
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.sort_by_name /* 2131296372 */:
                this.f4290k = this.f4290k == 2 ? 4 : 2;
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.sort_by_date /* 2131296373 */:
                this.f4290k = this.f4290k == 1 ? 3 : 1;
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
                }
                break;
            case R.id.sort_by_size /* 2131296375 */:
                this.f4290k = this.f4290k == 7 ? 8 : 7;
                m3023a = CommonFolder.m3023a(this.f4289j, this.f4290k);
                if (m3023a != i2) {
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
        m4185a(false);
    }

    /* renamed from: b */
    protected void m4186b(int i) {
        int i2;
        switch (i) {
            case 2:
                int[] e = m3886e();
                this.f4302w = e[0];
                this.f4303x = e[1];
                this.f4301v = 0;
                i2 = 2;
                break;
            default:
                this.f4302w = this.f4291l ? QuickApp.f2075r.f2375f : QuickApp.f2075r.f2373d;
                this.f4303x = this.f4291l ? QuickApp.f2075r.f2376g : QuickApp.f2075r.f2374e;
                this.f4301v = 0;
                i2 = 1;
                break;
        }
        if (this.f4274L != null) {
            this.f4274L.m2866m();
            this.f4274L = null;
        }
        this.f4285f.m4252a(this.f4281S, this.f4302w, this.f4303x);
        this.f4285f.m4245a(i2, this.f4291l);
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: b */
    public void mo3971b(Intent intent) {
        Uri data;
        if (intent != null && this.f4304y != null && (data = intent.getData()) != null) {
            if (!data.equals(this.f4304y.m3036b(this.f4304y.f2807k))) {
                this.f4304y.f2807k = this.f4304y.mo3024a(data);
            }
            this.f4285f.m4264c(this.f4304y.f2807k);
        }
        CommonFile m3027a = this.f4304y.m3027a(this.f4304y.f2807k);
        if (this.f4292m && (m3027a instanceof CommonFolder) && ((CommonFolder) m3027a).m3046n()) {
            this.f4304y.m3041c(this.f4304y.f2807k);
            this.f4285f.requestLayout();
        }
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: b */
    public void mo3949b(Bundle bundle) {
    }

    /* renamed from: b */
    public void m4187b(boolean z) {
        if (z) {
            this.f4304y.f2807k = -1;
        }
        CommonFolder mo3028a = this.f4304y.mo3028a(false);
        mo3028a.m3032a(this.f4304y, false);
        if (mo3028a.m3047o() == this.f4304y.m3047o()) {
            mo3028a = this.f4304y;
        }
        if (mo3028a.m3046n() && z && this.f4292m) {
            int i = 0;
            CommonFolder commonFolder = mo3028a;
            while (true) {
                if (i >= this.f4304y.m3047o()) {
                    mo3028a = commonFolder;
                    break;
                }
                CommonFile m3027a = this.f4304y.m3027a(i);
                if (m3027a instanceof CommonFolder) {
                    mo3028a = (CommonFolder) m3027a;
                    if (!mo3028a.m3046n()) {
                        break;
                    } else {
                        commonFolder = mo3028a;
                    }
                }
                i++;
            }
        }
        if (mo3028a.m3046n()) {
            return;
        }
        if (this.f4082C.m3834s()) {
            this.f4278P = 0;
        } else {
            int[] iArr = new int[2];
            View view = this.f4083D;
            view.getLocationOnScreen(iArr);
            view.setPadding(view.getPaddingLeft(), view.getPaddingTop() + iArr[1], view.getPaddingRight(), view.getPaddingBottom());
            this.f4278P = iArr[1];
        }
        this.f4297r = true;
        this.f4082C.m4037a(C1178as.class, C1178as.m3894a(mo3028a, z), (Bundle) null);
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: b */
    public boolean mo3950b(Menu menu) {
        return !this.f4285f.f4407d;
    }

    @Override // com.alensw.p038ui.p041c.C1159a
    /* renamed from: c */
    protected String mo3882c() {
        int lastIndexOf;
        return this.f4292m ? "local" : (this.f4273B == null || (lastIndexOf = this.f4273B.lastIndexOf(64)) >= this.f4273B.length() + (-1)) ? super.mo3882c() : this.f4273B.substring(lastIndexOf + 1);
    }

    /* renamed from: c */
    public void m4188c(int i) {
        HashSet m4197u = m4197u();
        int size = m4197u.size();
        if (size == 0) {
            return;
        }
        m4185a(false);
        new ProgressDialogC1177ar(this, this.f4082C, m4032g(R.string.rotate) + ": " + i, size, m4197u, i).m3731c();
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    @TargetApi(11)
    /* renamed from: c */
    protected boolean mo3973c(Menu menu) {
        MenuC0693b.m2735a(this.f4082C, this.f4292m ? R.menu.picture : R.menu.cloud_picture, menu);
        menu.add(0, android.R.id.selectAll, 0, android.R.string.selectAll);
        if (ActivityC1109ao.f3725F) {
            for (int size = menu.size() - 1; size >= 0; size--) {
                menu.getItem(size).setShowAsAction(0);
            }
        }
        if (this.f4292m) {
            m3866a(menu, R.id.share, 2);
            m3866a(menu, R.id.delete, 2);
            m3866a(menu, R.id.rotate, 2);
            menu.removeItem(R.id.rename);
            menu.removeItem(R.id.slideshow);
            menu.removeItem(R.id.settings);
        } else {
            m3866a(menu, R.id.download, 2);
            m3866a(menu, R.id.delete, 2);
            int c = this.f4304y.m3015c();
            if ((c & 8) == 0 || (c & 2) == 0) {
                menu.removeItem(R.id.move_to);
            }
        }
        this.f4298s.clear();
        this.f4285f.setMultiSelect(true);
        return true;
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: d */
    protected boolean mo3975d(Menu menu) {
        int size = this.f4298s.size();
        if (this.f4292m) {
            char m3020h = size == 1 ? ((CommonFile) this.f4298s.iterator().next()).m3020h() : (char) 0;
            boolean z = m3020h == 'I';
            m3867a(menu, R.id.rotate, m3020h != 'D');
            m3867a(menu, R.id.details, m3020h == 'I' || m3020h == 'V');
            m3867a(menu, R.id.edit, z);
            m3867a(menu, R.id.set_as, z);
            m3867a(menu, R.id.show_in_map, z);
        }
        menu.findItem(android.R.id.selectAll).setTitle(size == this.f4285f.getCount() ? R.string.deselect_all : android.R.string.selectAll);
        return true;
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: g */
    public void mo3952g() {
        super.mo3952g();
        ContentResolver contentResolver = this.f4082C.getContentResolver();
        this.f4304y.mo3038b(contentResolver, this.f4283U);
        this.f4304y.mo3037b(contentResolver);
        this.f3851b.removeCallbacks(this.f4282T);
        if (this.f4275M != null) {
            this.f4275M.cancel(false);
            this.f4275M = null;
        }
        if (this.f4274L != null) {
            this.f4274L.m2866m();
            this.f4274L = null;
        }
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: h */
    public RectF mo3978h() {
        RectF rectF = new RectF();
        this.f4285f.m4264c(this.f4304y.f2807k);
        if (this.f4304y.m3027a(this.f4304y.f2807k).m3020h() == 'I') {
            this.f4285f.m4243a(this.f4304y.f2807k);
        }
        if (this.f4304y.f2807k < 0 || !this.f4285f.m4261b(this.f4304y.f2807k, rectF)) {
            return super.mo3978h();
        }
        rectF.offset(0.0f, this.f4278P);
        return rectF;
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: i */
    public void mo3979i() {
        this.f4285f.m4243a(-1);
        super.mo3979i();
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: j */
    protected Uri[] mo3953j() {
        return m4194r();
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: k */
    protected void mo3980k() {
        this.f4298s.clear();
        this.f4285f.setMultiSelect(false);
        m4190m();
    }

    /* renamed from: l */
    protected boolean m4189l() {
        if (this.f4082C.m3832q() && this.f4298s.isEmpty()) {
            this.f4082C.m3813d(false);
        }
        return m4190m() > 0;
    }

    /* renamed from: m */
    protected int m4190m() {
        int m3047o = this.f4304y.m3047o();
        if (this.f4285f.f4407d) {
            CharSequence charSequence = Integer.toString(this.f4298s.size()) + "/" + m3047o;
            if (this.f4082C.m3832q()) {
                this.f4082C.m3807a(charSequence, true);
            } else {
                m4027b(charSequence);
            }
        } else {
            String a2 = this.f4304y.m3012a();
            if (m3047o > 0 && ((!this.f4292m || !this.f4293n) && !this.f4295p)) {
                a2 = a2 + " (" + m3047o + ")";
            }
            m4027b((CharSequence) a2);
        }
        return m3047o;
    }

    /* renamed from: n */
    public void mo4058n() {
        Float f;
        if (!this.f4304y.m3046n() && (f = (Float) f4272z.remove(this.f4304y.mo3021i())) != null) {
            this.f4285f.setScrollPos(f.floatValue());
        }
        if (this.f4275M == null) {
            m4029c(true);
            this.f4285f.setEmptyText(m4032g(R.string.loading));
            this.f4275M = f4271A.m2936a(new C0607av(this.f4082C.getContentResolver(), this.f4304y, false, this.f4276N, this.f3851b, this.f4284V));
        }
    }

    /* renamed from: o */
    public void m4191o() {
        HashSet m4197u = m4197u();
        int size = m4197u.size();
        if (size == 0) {
            return;
        }
        m4185a(false);
        C0615bc c0615bc = QuickApp.f2075r;
        new ProgressDialogC1173an(this, this.f4082C, m4032g(R.string.delete), size, m4197u, this.f4082C.getContentResolver(), c0615bc, new ArrayList(size)).m3731c();
    }

    /* renamed from: p */
    public void m4192p() {
        HashSet m4197u = m4197u();
        if (m4197u.size() == 0) {
            return;
        }
        if (this.f4082C.m3832q()) {
            this.f4082C.m3813d(false);
        }
        Intent intent = new Intent("android.intent.action.PICK");
        intent.setType("vnd.android.document/directory");
        intent.putExtra("activity_title", m4032g(R.string.download) + ":");
        ((C1159a) this.f4082C.m4037a(C1212bz.class, intent, (Bundle) null)).m3873a(new C1174ao(this, m4197u));
    }

    /* renamed from: q */
    public void m4193q() {
        HashSet m4197u = m4197u();
        if (m4197u.size() == 0) {
            return;
        }
        if (this.f4082C.m3832q()) {
            this.f4082C.m3813d(false);
        }
        if (this.f4273B != null) {
            Intent intent = new Intent();
            intent.putExtra("QuickPic.catalogs", new int[]{2});
            intent.putExtra("QuickPic.title", m4032g(R.string.move_to) + ":");
            intent.putExtra("QuickPic.root_id", this.f4273B);
            ((C1159a) this.f4082C.m4037a(C1280p.class, intent, (Bundle) null)).m3873a(new C1175ap(this, m4197u));
        }
    }

    /* renamed from: r */
    public Uri[] m4194r() {
        int size = this.f4298s.size();
        if (size == 0) {
            return null;
        }
        Uri[] uriArr = new Uri[size];
        Iterator it = this.f4298s.iterator();
        int i = 0;
        while (it.hasNext()) {
            uriArr[i] = ((CommonFile) it.next()).mo3021i();
            i++;
        }
        return uriArr;
    }

    /* renamed from: s */
    public Intent m4195s() {
        Intent intent;
        int size = this.f4298s.size();
        if (size == 0) {
            return null;
        }
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(size);
        Iterator it = this.f4298s.iterator();
        int i = 0;
        while (it.hasNext()) {
            CommonFile commonFile = (CommonFile) it.next();
            if (commonFile.m3020h() == 'I') {
                i |= 1;
            } else if (commonFile.m3020h() == 'V') {
                i |= 2;
            }
            arrayList.add(commonFile.mo3021i());
        }
        String str = i == 1 ? "image/jpeg" : i == 2 ? "video/mp4" : "*/*";
        if (size > 1) {
            intent = new Intent("android.intent.action.SEND_MULTIPLE");
            intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
        } else {
            Intent intent2 = new Intent("android.intent.action.SEND");
            intent2.putExtra("android.intent.extra.STREAM", arrayList.get(0));
            intent = intent2;
        }
        intent.setType(str);
        intent.addFlags(1);
        return intent;
    }

    /* renamed from: t */
    protected C0712h m4196t() {
        if (this.f4274L == null) {
            this.f4274L = C0634p.m2416a(m4024F(), this.f4301v, this.f4302w, this.f4303x, this.f4082C.f3742U);
        }
        return this.f4274L;
    }

    /* renamed from: u */
    public HashSet m4197u() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(this.f4298s.size());
        linkedHashSet.addAll(this.f4298s);
        return linkedHashSet;
    }

    /* renamed from: v */
    public void m4198v() {
        int firstVisible = this.f4285f.getFirstVisible();
        int lastVisible = this.f4285f.getLastVisible();
        for (int i = firstVisible; i < lastVisible; i++) {
            this.f4277O.m2521b(this.f4304y.m3027a(i));
        }
        if (lastVisible > firstVisible) {
            this.f4277O.m2522b(lastVisible - firstVisible);
        }
    }
}
