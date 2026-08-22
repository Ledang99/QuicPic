package com.alensw.PicFolder;

import android.annotation.TargetApi;
import android.app.ActionBar;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.preference.PreferenceManager;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;
import com.alensw.p022a.C0600ao;
import com.alensw.p022a.C0604as;
import com.alensw.p022a.C0623e;
import com.alensw.p023b.p030g.MenuC0693b;
import com.alensw.p023b.p031h.C0714j;
import com.alensw.p023b.p031h.C0718n;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.activity.ActivityC1147p;
import com.alensw.p038ui.activity.C1094a;
import com.p043b.p044a.C1387b;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class CropActivity extends ActivityC1147p {

    /* renamed from: a */
    protected static int[][] f1979a = {new int[]{2560, 1600}, new int[]{1920, 1200}, new int[]{1280, 800}, new int[]{1024, 768}, new int[]{800, 600}, new int[]{640, 480}, new int[]{320, 240}};

    /* renamed from: b */
    protected static int[][] f1980b = {new int[]{1, 1}, new int[]{2, 3}, new int[]{3, 4}, new int[]{3, 5}, new int[]{9, 16}};

    /* renamed from: c */
    protected final Rect f1981c = new Rect();

    /* renamed from: d */
    private C0575q f1982d;

    /* renamed from: e */
    private LinearLayout f1983e;

    /* renamed from: f */
    private Intent f1984f;

    /* renamed from: g */
    private boolean f1985g;

    /* renamed from: h */
    private boolean f1986h;

    /* renamed from: i */
    private boolean f1987i;

    /* renamed from: j */
    private int f1988j;

    /* renamed from: k */
    private int f1989k;

    /* renamed from: l */
    private int f1990l;

    /* renamed from: m */
    private int f1991m;

    /* renamed from: n */
    private int f1992n;

    /* renamed from: o */
    private C0604as f1993o;

    /* renamed from: p */
    private C0604as f1994p;

    /* renamed from: q */
    private boolean f1995q;

    /* renamed from: a */
    private void m1971a(SharedPreferences.Editor editor, String str, int i) {
        if (i > 0) {
            editor.putInt(str, i);
        } else {
            editor.remove(str);
        }
    }

    /* renamed from: a */
    private void m1972a(C0714j c0714j) {
        if (c0714j.m2855k()) {
            Toast.makeText(this, R.string.load_failed, 1).show();
            finish();
            return;
        }
        if (c0714j.f2705d != 1) {
            if (c0714j.f2705d > 0) {
                this.f1982d.m2127a(0);
                this.f1982d.m2136b(c0714j);
                return;
            }
            return;
        }
        this.f1992n = c0714j.f2698b.f2702d;
        this.f1982d.m2136b(c0714j);
        if (this.f1994p != null) {
            this.f1994p.cancel(false);
        }
        this.f1994p = QuickApp.f2078u.m2223a(c0714j.f2707i, 'I', 4, this.f3829A);
    }

    @TargetApi(8)
    /* renamed from: b */
    private View m1974b() {
        this.f3734M = false;
        return this.f1982d;
    }

    /* renamed from: a */
    protected void m1978a(Menu menu) {
        if (this.f1982d.m4460e()) {
            ArrayList arrayList = new ArrayList(f1979a.length);
            MenuItemOnMenuItemClickListenerC0571m menuItemOnMenuItemClickListenerC0571m = new MenuItemOnMenuItemClickListenerC0571m(this, arrayList);
            int pictureWidth = this.f1982d.getPictureWidth();
            int pictureHeight = this.f1982d.getPictureHeight();
            int i = pictureWidth * pictureHeight;
            boolean z = pictureWidth >= pictureHeight;
            float f = pictureWidth / pictureHeight;
            arrayList.clear();
            for (int i2 = 0; i2 < f1979a.length && f != 0.0f; i2++) {
                int[] iArr = f1979a[i2];
                float f2 = z ? (z ? iArr[0] : iArr[1]) / pictureWidth : (z ? iArr[1] : iArr[0]) / pictureHeight;
                int round = Math.round(pictureWidth * f2);
                int round2 = Math.round(pictureHeight * f2);
                if (round * round2 < i) {
                    menu.add(0, arrayList.size(), 0, "" + round + " x " + round2).setOnMenuItemClickListener(menuItemOnMenuItemClickListenerC0571m);
                    arrayList.add(Float.valueOf(f2));
                }
            }
            menu.add(0, -1, 0, getString(R.string.default_res_0x7f0a002a)).setOnMenuItemClickListener(menuItemOnMenuItemClickListenerC0571m);
        }
    }

    /* renamed from: a */
    protected void m1979a(boolean z, int i, int i2, int i3, int i4, boolean z2) {
        this.f1987i = z;
        this.f1988j = i;
        this.f1989k = i2;
        this.f1990l = i3;
        this.f1991m = i4;
        this.f1982d.m2131a(z, i, i2, (i3 <= 0 || i4 <= 0) ? 0.0f : i3 / i4);
        if (z2) {
            SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(this).edit();
            edit.putBoolean("output_crop", z);
            m1971a(edit, "output_width", i);
            m1971a(edit, "output_height", i2);
            m1971a(edit, "output_ratio_x", i3);
            m1971a(edit, "output_ratio_y", i4);
            edit.commit();
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1147p
    /* renamed from: a */
    public boolean mo1980a(Intent intent) {
        this.f1984f = intent;
        if (!this.f1982d.m4460e()) {
            return true;
        }
        this.f1982d.m2140d(R.id.share);
        return true;
    }

    /* renamed from: b */
    protected void m1981b(Menu menu) {
        if (this.f1982d.m4460e()) {
            int pictureWidth = this.f1982d.getPictureWidth();
            int pictureHeight = this.f1982d.getPictureHeight();
            int i = (int) (pictureWidth * pictureHeight * this.f1982d.f2213c * this.f1982d.f2213c);
            boolean z = pictureWidth >= pictureHeight;
            ArrayList arrayList = new ArrayList(f1980b.length * 2);
            ArrayList arrayList2 = new ArrayList(f1979a.length);
            MenuItemOnMenuItemClickListenerC0572n menuItemOnMenuItemClickListenerC0572n = new MenuItemOnMenuItemClickListenerC0572n(this, arrayList, arrayList2);
            SubMenu addSubMenu = menu.addSubMenu(R.string.ratio);
            SubMenu addSubMenu2 = menu.addSubMenu(R.string.pic_resolution);
            menu.add(1, 998, 0, R.string.crop_by_cropper).setOnMenuItemClickListener(menuItemOnMenuItemClickListenerC0572n);
            menu.setGroupCheckable(1, true, true);
            for (int[] iArr : f1980b) {
                int i2 = z ? iArr[1] : iArr[0];
                int i3 = z ? iArr[0] : iArr[1];
                addSubMenu.add(2, arrayList.size() + 1000, 0, "" + i2 + " : " + i3).setOnMenuItemClickListener(menuItemOnMenuItemClickListenerC0572n);
                arrayList.add(Long.valueOf((i3 << 32) | i2));
                if (i2 != i3) {
                    addSubMenu.add(2, arrayList.size() + 1000, 0, "" + i3 + " : " + i2).setOnMenuItemClickListener(menuItemOnMenuItemClickListenerC0572n);
                    arrayList.add(Long.valueOf((i2 << 32) | i3));
                }
            }
            addSubMenu.add(2, arrayList.size() + 1000, 0, R.string.custom).setOnMenuItemClickListener(menuItemOnMenuItemClickListenerC0572n);
            addSubMenu.setGroupCheckable(2, true, true);
            int indexOf = arrayList.indexOf(Long.valueOf((this.f1991m << 32) | this.f1990l));
            if (indexOf == -1 && this.f1990l > 0 && this.f1991m > 0) {
                indexOf = arrayList.size();
            }
            for (int[] iArr2 : f1979a) {
                int i4 = z ? iArr2[0] : iArr2[1];
                int i5 = z ? iArr2[1] : iArr2[0];
                if (i4 * i5 <= i) {
                    addSubMenu2.add(3, arrayList2.size() + 2000, 0, "" + i4 + " x " + i5).setOnMenuItemClickListener(menuItemOnMenuItemClickListenerC0572n);
                    arrayList2.add(Long.valueOf(i4 | (i5 << 32)));
                }
            }
            addSubMenu2.add(3, arrayList2.size() + 2000, 0, R.string.custom).setOnMenuItemClickListener(menuItemOnMenuItemClickListenerC0572n);
            addSubMenu2.setGroupCheckable(3, true, true);
            int indexOf2 = arrayList2.indexOf(Long.valueOf((this.f1989k << 32) | this.f1988j));
            if (indexOf2 == -1 && this.f1988j > 0 && this.f1989k > 0) {
                indexOf2 = arrayList2.size();
            }
            if (indexOf >= 0) {
                addSubMenu.findItem(indexOf + 1000).setChecked(true);
            } else if (indexOf2 >= 0) {
                addSubMenu2.findItem(indexOf2 + 2000).setChecked(true);
            } else {
                menu.findItem(998).setChecked(true);
            }
        }
    }

    @Override // android.app.Activity
    public void finish() {
        if (this.f1982d == null || !this.f1982d.f2221k) {
            this.f1995q = true;
            QuickApp.f2078u.m2232b((C0714j) null);
            if (this.f1993o != null) {
                this.f1993o.cancel(false);
                this.f1993o = null;
            }
            if (this.f1994p != null) {
                this.f1994p.cancel(false);
                this.f1994p = null;
            }
            if (this.f1982d != null) {
                C0714j a2 = this.f1982d.m4436a((Bitmap.Config) null);
                this.f1982d.m2138c(this.f1992n);
                this.f1982d.mo4313a(a2, true);
                if (a2 != null) {
                    a2.m2866m();
                }
            }
            super.finish();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x000a, code lost:
    
        return true;
     */
    @Override // com.alensw.p038ui.activity.ActivityC1147p, android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 30:
                if (message.obj instanceof C0714j) {
                    C0714j c0714j = (C0714j) message.obj;
                    if (!this.f1995q) {
                        m1972a(c0714j);
                    }
                    c0714j.m2866m();
                    break;
                }
                break;
            case 1000:
                boolean z = message.arg1 != 0;
                setTitle(message.arg1 != 0 ? message.arg1 : this.f1982d.f2219i ? R.string.wallpaper : R.string.edit);
                m3824i(z);
                if (this.f1983e != null) {
                    this.f1983e.setVisibility(z ? 8 : 0);
                    break;
                }
                break;
            case 1001:
                Intent intent = (Intent) message.obj;
                Uri data = intent.getData();
                boolean z2 = message.arg2 != 0;
                if (message.arg1 != R.id.done) {
                    if (message.arg1 == R.id.share) {
                        if (z2 && data != null) {
                            if (this.f1984f != null) {
                                this.f1984f.setType(intent.getType());
                                this.f1984f.addFlags(1);
                                this.f1984f.putExtra("android.intent.extra.STREAM", intent.getData());
                                C1094a.m3781a(this, this.f1984f);
                                this.f1984f = null;
                                break;
                            }
                        } else {
                            Toast.makeText(this, R.string.save_file_failed, 1).show();
                            break;
                        }
                    }
                } else {
                    if (z2) {
                        if (data != null) {
                            C0623e m2495a = QuickApp.f2072o.m2495a(this, data);
                            if (m2495a != null) {
                                QuickApp.f2072o.m2497a(m2495a, m2495a.f2419c < 4);
                            }
                            if (this.f1982d.f2220j) {
                                QuickApp.f2076s.m2294f(data.getPath());
                            }
                        }
                    } else if (data == null || !m3852a(data.getPath())) {
                        Toast.makeText(this, R.string.save_file_failed, 1).show();
                    }
                    intent.addFlags(1);
                    setResult(z2 ? -1 : 0, intent);
                    finish();
                    break;
                }
                break;
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1147p, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    @TargetApi(11)
    public void onCreate(Bundle bundle) {
        boolean z;
        boolean z2 = false;
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent == null) {
            finish();
            return;
        }
        Uri data = intent.getData();
        String action = intent.getAction();
        Bundle extras = intent.getExtras();
        boolean equals = "android.intent.action.SET_WALLPAPER".equals(action);
        boolean z3 = (equals || extras == null) ? equals : extras.getBoolean("setWallpaper") || extras.getBoolean("set-as-wallpaper");
        if (z3) {
            setRequestedOrientation(C0742b.m2989b(this) == 2 ? 0 : 1);
        }
        boolean z4 = z3 && "com.android.camera.action.CROP".equals(action);
        if (!z4 && extras != null) {
            Iterator<String> it = extras.keySet().iterator();
            while (it.hasNext()) {
                if (it.next().contains("lockscreen")) {
                    z = true;
                    break;
                }
            }
        }
        z = z4;
        if (z) {
            getPackageManager();
            String type = intent.getType();
            Intent intent2 = new Intent("com.android.camera.action.CROP");
            if (type == null) {
                type = "image/*";
            }
            intent2.setDataAndType(data, type);
            for (ResolveInfo resolveInfo : C1094a.m3771a((Context) this, intent2, 0)) {
                String str = resolveInfo.activityInfo.applicationInfo.packageName;
                if (str.contains(".android.gallery3d") || str.startsWith("com.cooliris.media") || str.startsWith("com.htc.album")) {
                    C1094a.m3774a(this, intent, resolveInfo);
                    break;
                }
            }
            finish();
            return;
        }
        this.f1982d = new C0575q(this);
        setContentView(m1974b());
        if (!this.f1982d.m2133a(getIntent(), z3, this.f3829A, QuickApp.f2076s)) {
            finish();
            return;
        }
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        if (!f3727H) {
            getWindow().addFlags(1024);
        }
        this.f1986h = (this.f1982d.f2217g || this.f1982d.f2219i || this.f1982d.f2222l == null) ? false : true;
        this.f1983e = (LinearLayout) View.inflate(this, R.layout.cropper_done, null);
        if (this.f3731J != null) {
            this.f3731J.setCustomView(this.f1983e, new ActionBar.LayoutParams(5));
            this.f3731J.setDisplayOptions(16, 16);
        } else if (this.f3732K != null) {
            this.f3732K.m4324a(this.f1983e, new LinearLayout.LayoutParams(-2, -1));
        }
        ViewOnLongClickListenerC0567i viewOnLongClickListenerC0567i = new ViewOnLongClickListenerC0567i(this);
        Resources resources = getResources();
        ImageView imageView = (ImageView) this.f1983e.findViewById(R.id.share);
        if (this.f1986h) {
            imageView.setOnClickListener(this.f3747Z);
            imageView.setOnLongClickListener(viewOnLongClickListenerC0567i);
            imageView.setImageDrawable(C1387b.m4498a(resources, R.raw.ic_menu_share, this.f3745X));
        } else {
            imageView.setVisibility(8);
        }
        ImageView imageView2 = (ImageView) this.f1983e.findViewById(R.id.done);
        imageView2.setOnClickListener(this.f3747Z);
        imageView2.setOnLongClickListener(viewOnLongClickListenerC0567i);
        imageView2.setImageDrawable(C1387b.m4498a(resources, R.raw.ic_menu_done, this.f3745X));
        this.f1985g = !this.f1982d.f2216f && this.f1982d.f2208a == 0.0f;
        if (this.f1985g) {
            m1979a(defaultSharedPreferences.getBoolean("output_crop", true), defaultSharedPreferences.getInt("output_width", 0), defaultSharedPreferences.getInt("output_height", 0), defaultSharedPreferences.getInt("output_ratio_x", 0), defaultSharedPreferences.getInt("output_ratio_y", 0), false);
        }
        if (this.f1982d.m4460e()) {
            return;
        }
        C0600ao c0600ao = QuickApp.f2078u;
        C0714j m2225a = c0600ao.m2225a(data);
        C0714j m2235d = c0600ao.m2235d();
        if (m2235d != null && (m2225a == null || !m2235d.m2863a(data))) {
            m2235d.m2866m();
            m2235d = null;
        }
        c0600ao.m2231b();
        if (m2225a != null) {
            this.f1992n = m2225a.f2698b.f2702d;
        }
        if (m2225a != null && m2235d != null) {
            z2 = true;
        }
        if (z2) {
            this.f1982d.m2136b(m2225a);
            this.f1982d.m2136b(m2235d);
        } else {
            this.f1982d.m2127a(R.string.loading);
            this.f1993o = c0600ao.m2223a(data, 'I', C0718n.f2723a ? 1 : 4, this.f3829A);
        }
        if (m2225a != null) {
            m2225a.m2866m();
        }
        if (m2235d != null) {
            m2235d.m2866m();
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    @TargetApi(11)
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuC0693b.m2735a(this, R.menu.cropper, menu);
        if (this.f1985g) {
            m3801a(menu, R.id.shrink, 1);
            m3801a(menu, R.id.crop, 1);
        } else {
            menu.removeItem(R.id.shrink);
            menu.removeItem(R.id.crop);
        }
        m3801a(menu, R.id.rotate, 2);
        m3801a(menu, R.id.flip, 2);
        return true;
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (this.f1982d.f2221k) {
            return false;
        }
        int itemId = menuItem.getItemId();
        if (itemId == 16908332 || itemId == R.id.home) {
            setResult(0, new Intent());
            finish();
            return true;
        }
        if (!this.f1982d.m4460e()) {
            return false;
        }
        View c = m3809c(itemId);
        switch (itemId) {
            case R.id.done /* 2131296265 */:
                this.f1982d.m2140d(itemId);
                break;
            case R.id.share /* 2131296266 */:
                Intent intent = getIntent();
                Intent intent2 = new Intent("android.intent.action.SEND");
                intent2.setType(intent.getType());
                intent2.putExtra("android.intent.extra.STREAM", intent.getData());
                C1094a.m3769a(this, intent2, R.string.share, c, new C0570l(this));
                break;
            case R.id.shrink /* 2131296344 */:
                MenuC0693b.m2736a(this, c, new C0568j(this));
                break;
            case R.id.crop /* 2131296345 */:
                MenuC0693b.m2736a(this, c, new C0569k(this));
                break;
            case R.id.rotate /* 2131296346 */:
                C1094a.m3785c(this, c);
                break;
            case R.id.flip /* 2131296347 */:
                C1094a.m3783b(this, c);
                break;
            case R.id.flip_horz /* 2131296348 */:
            case R.id.flip_vert /* 2131296349 */:
                this.f1982d.m2130a(itemId == R.id.flip_horz);
                break;
            case R.id.rotate_left /* 2131296368 */:
                this.f1982d.mo2135b(-90);
                break;
            case R.id.rotate_right /* 2131296369 */:
                this.f1982d.mo2135b(90);
                break;
            case R.id.rotate_180 /* 2131296370 */:
                this.f1982d.mo2135b(180);
                break;
        }
        return true;
    }

    @Override // com.alensw.p038ui.activity.ActivityC1147p, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onStart() {
        super.onStart();
        this.f1982d.m4449b(0, this.f3742U);
    }
}
