package com.alensw.p038ui.p041c;

import android.annotation.TargetApi;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.preference.PreferenceManager;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.jni.JniUtils;
import com.alensw.p022a.C0600ao;
import com.alensw.p022a.C0604as;
import com.alensw.p022a.C0622d;
import com.alensw.p022a.C0623e;
import com.alensw.p023b.p026c.C0662f;
import com.alensw.p023b.p029f.C0688a;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p029f.EnumC0689b;
import com.alensw.p023b.p030g.MenuC0693b;
import com.alensw.p023b.p031h.C0706b;
import com.alensw.p023b.p031h.C0714j;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.activity.C1094a;
import com.alensw.p038ui.activity.MainPreference;
import com.alensw.p038ui.p042d.C1294d;
import com.alensw.p038ui.p042d.C1296f;
import com.alensw.p038ui.p042d.C1297g;
import com.alensw.p038ui.p042d.C1298h;
import com.alensw.p038ui.view.C1360e;
import com.alensw.p038ui.view.InterfaceC1372q;
import com.alensw.p038ui.view.PictureView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import org.apache.http.protocol.HttpRequestExecutor;

/* renamed from: com.alensw.ui.c.dp */
/* loaded from: classes.dex */
public class C1256dp extends C1159a {

    /* renamed from: B */
    private int f4156B;

    /* renamed from: M */
    private C0604as f4158M;

    /* renamed from: N */
    private C0604as f4159N;

    /* renamed from: O */
    private C0604as f4160O;

    /* renamed from: Q */
    private int f4162Q;

    /* renamed from: S */
    private int f4164S;

    /* renamed from: T */
    private int f4165T;

    /* renamed from: U */
    private int f4166U;

    /* renamed from: V */
    private boolean f4167V;

    /* renamed from: W */
    private boolean f4168W;

    /* renamed from: X */
    private long f4169X;

    /* renamed from: Y */
    private Runnable f4170Y;

    /* renamed from: Z */
    private ArrayList f4171Z;

    /* renamed from: aa */
    private ArrayList f4172aa;

    /* renamed from: f */
    private PictureView f4176f;

    /* renamed from: g */
    private ImageView f4177g;

    /* renamed from: h */
    private ImageView f4178h;

    /* renamed from: i */
    private TextView f4179i;

    /* renamed from: j */
    private ImageView f4180j;

    /* renamed from: k */
    private ImageView f4181k;

    /* renamed from: l */
    private ImageView f4182l;

    /* renamed from: m */
    private C0623e f4183m;

    /* renamed from: p */
    private C1246df f4186p;

    /* renamed from: q */
    private C0714j f4187q;

    /* renamed from: t */
    private boolean f4190t;

    /* renamed from: u */
    private boolean f4191u;

    /* renamed from: v */
    private boolean f4192v;

    /* renamed from: w */
    private boolean f4193w;

    /* renamed from: x */
    private boolean f4194x;

    /* renamed from: y */
    private float[] f4195y;

    /* renamed from: n */
    private char f4184n = 'I';

    /* renamed from: o */
    private Uri f4185o = Uri.EMPTY;

    /* renamed from: r */
    private int f4188r = -1;

    /* renamed from: s */
    private boolean f4189s = true;

    /* renamed from: z */
    private final C1297g f4196z = new C1297g(0);

    /* renamed from: A */
    private final Rect f4155A = new Rect();

    /* renamed from: L */
    private Uri f4157L = Uri.EMPTY;

    /* renamed from: P */
    private final InterfaceC1372q f4161P = new C1269eb(this);

    /* renamed from: R */
    private int f4163R = 1000;

    /* renamed from: ab */
    private Interpolator f4173ab = new DecelerateInterpolator();

    /* renamed from: ac */
    private final Animation.AnimationListener f4174ac = new AnimationAnimationListenerC1258dr(this);

    /* renamed from: ad */
    private final Runnable f4175ad = new RunnableC1260dt(this);

    /* renamed from: H */
    private void m4082H() {
        if (this.f4183m != null) {
            int m2390j = this.f4183m.m2390j();
            this.f4171Z = new ArrayList(m2390j);
            for (int i = 0; i < m2390j; i++) {
                this.f4171Z.add(Integer.valueOf(i));
            }
            if (this.f4183m.f2419c >= 0 && this.f4183m.f2419c < m2390j) {
                this.f4171Z.remove(this.f4183m.f2419c);
            }
            Collections.shuffle(this.f4171Z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I */
    public void m4083I() {
        if (this.f4165T < 0 || this.f4165T >= this.f4183m.m2390j()) {
            return;
        }
        this.f4183m.f2419c = this.f4165T;
        this.f4185o = this.f4183m.m2379d(this.f4183m.f2419c);
        this.f4184n = this.f4183m.m2383f(this.f4183m.f2419c);
        C0714j m2225a = QuickApp.f2078u.m2225a(this.f4185o);
        if (m2225a == null && this.f4158M != null && this.f4158M.m2240b(this.f4185o)) {
            return;
        }
        m4105d(true);
        if (this.f4177g.getVisibility() != 0) {
            this.f4177g.setVisibility(0);
        }
        this.f4176f.m4463h();
        m4133a(m2225a, true);
        if (m2225a != null) {
            m2225a.m2866m();
        }
        m4130z();
    }

    /* renamed from: J */
    private boolean m4084J() {
        return this.f4170Y != null;
    }

    /* renamed from: K */
    private void m4085K() {
        if (m4084J()) {
            m4086L();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L */
    public void m4086L() {
        m4121r();
        QuickApp.f2078u.m2231b();
        if (this.f4170Y == null) {
            this.f4170Y = new RunnableC1259ds(this);
            m4099b(false);
            this.f3851b.postDelayed(this.f4175ad, 60000L);
        } else if (this.f4170Y != null) {
            this.f3851b.removeCallbacks(this.f4175ad);
            this.f3851b.removeCallbacks(this.f4170Y);
            this.f4170Y = null;
            this.f4171Z = null;
            this.f4172aa = null;
            this.f4166U = 0;
            this.f4176f.m4463h();
            this.f4177g.setVisibility(4);
            m4105d(false);
        }
        boolean m4084J = m4084J();
        if (this.f4176f.getKeepScreenOn() != m4084J) {
            this.f4176f.setKeepScreenOn(m4084J);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public C0714j m4091a(Uri uri, char c, boolean z) {
        C0600ao c0600ao = QuickApp.f2078u;
        C0714j m2225a = c0600ao.m2225a(uri);
        if (m2225a != null) {
            return m2225a;
        }
        if (this.f4158M != null && this.f4158M.m2240b(uri)) {
            return this.f4158M.m2238a();
        }
        if (this.f4160O != null && this.f4160O.m2240b(uri)) {
            return this.f4160O.m2238a();
        }
        if (z) {
            m4121r();
            this.f4158M = c0600ao.m2223a(uri, c, 1, this.f3851b);
            return this.f4158M.m2238a();
        }
        if (this.f4160O != null) {
            this.f4160O.cancel(false);
        }
        this.f4160O = c0600ao.m2223a(uri, c, 1, this.f3851b);
        return this.f4160O.m2238a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4095a(boolean z) {
        int i = z ? 0 : 8;
        if (this.f4178h.getVisibility() != i) {
            this.f4178h.setVisibility(i);
            if (ActivityC1109ao.f3726G) {
                Animation c = this.f4082C.m3810c(i == 0);
                c.setDuration(150L);
                this.f4178h.startAnimation(c);
            }
        }
    }

    /* renamed from: b */
    private Animation m4097b(int i, boolean z) {
        Animation m4421a = C1360e.m4421a(i, z, this.f4176f.getWidth(), this.f4176f.getHeight(), this.f4176f.f4750ac);
        m4421a.setDuration(this.f4163R);
        if (i != 1) {
            m4421a.setInterpolator(this.f4173ab);
        }
        return m4421a;
    }

    /* renamed from: b */
    private void m4098b(C0714j c0714j) {
        if (c0714j.m2855k()) {
            m4099b(true);
            return;
        }
        QuickApp.f2078u.m2228a(c0714j);
        boolean z = this.f4169X == 0;
        long currentTimeMillis = System.currentTimeMillis();
        if (z) {
            this.f4169X = currentTimeMillis;
        }
        long max = z ? 0L : Math.max(50L, Math.max(0L, this.f4164S) - (currentTimeMillis - this.f4169X));
        this.f3851b.removeCallbacks(this.f4170Y);
        this.f3851b.postDelayed(this.f4170Y, max);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m4099b(boolean z) {
        if (this.f4168W) {
            if (this.f4171Z == null || this.f4171Z.isEmpty()) {
                m4082H();
            }
            if (!this.f4171Z.isEmpty()) {
                this.f4165T = ((Integer) this.f4171Z.remove(0)).intValue();
            }
        } else if (z) {
            this.f4165T = m4131a(this.f4165T, true);
        } else {
            this.f4165T = (this.f4183m.f2419c < 0 || this.f4183m.f2419c >= this.f4183m.m2390j()) ? 0 : this.f4183m.f2419c;
        }
        Uri m2379d = this.f4183m.m2379d(this.f4165T);
        char m2383f = this.f4183m.m2383f(this.f4165T);
        if (!z) {
            this.f4185o = m2379d;
            this.f4184n = m2383f;
        }
        this.f4169X = z ? System.currentTimeMillis() : 0L;
        if (this.f4158M != null) {
            this.f4158M.cancel(false);
        }
        QuickApp.f2078u.m2231b();
        this.f4158M = QuickApp.f2078u.m2223a(m2379d, m2383f, 2, this.f3851b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m4105d(boolean z) {
        C0714j c0714j;
        if (z) {
            C0714j a2 = this.f4176f.m4436a((Bitmap.Config) null);
            c0714j = (a2 == null && this.f4176f.getPictureType() == 1) ? this.f4176f.getPicture() : a2;
        } else {
            c0714j = null;
        }
        Object tag = this.f4177g.getTag();
        this.f4177g.setImageBitmap(null);
        this.f4177g.setTag(null);
        if (tag instanceof C0714j) {
            ((C0714j) tag).m2866m();
        }
        if (c0714j != null) {
            BitmapDrawable bitmapDrawable = new BitmapDrawable(m4024F(), c0714j.m2848d());
            bitmapDrawable.setAntiAlias(true);
            this.f4177g.setImageDrawable(bitmapDrawable);
            this.f4177g.setTag(c0714j);
            Matrix matrix = new Matrix();
            c0714j.m2844a(matrix, this.f4177g.getWidth(), this.f4177g.getHeight(), 1);
            this.f4177g.setImageMatrix(matrix);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public void m4119q() {
        int m2390j = this.f4183m.m2390j();
        int i = this.f4183m.f2419c;
        if (i < 0 || i >= m2390j) {
            return;
        }
        if (m2390j == 1) {
            this.f4183m.m2388h(i);
            m4023E();
            return;
        }
        long j = this.f4176f.f4751ad;
        Animation m4422a = C1360e.m4422a(false);
        m4422a.setDuration(j);
        m4422a.setAnimationListener(new AnimationAnimationListenerC1266dz(this));
        m4105d(true);
        this.f4177g.setVisibility(0);
        this.f4177g.startAnimation(m4422a);
        this.f4189s = i < m2390j + (-1);
        this.f4161P.mo3962b(this.f4189s ? 1 : -1);
        this.f4183m.m2388h(i);
        Animation m4422a2 = C1360e.m4422a(true);
        m4422a2.setDuration(j);
        m4422a2.setInterpolator(this.f4082C.m4046j(true));
        this.f4176f.startAnimation(m4422a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public void m4121r() {
        if (this.f4159N != null) {
            this.f4159N.cancel(false);
            this.f4159N = null;
        }
        if (this.f4158M != null) {
            this.f4158M.cancel(false);
            this.f4158M = null;
        }
        if (this.f4160O != null) {
            this.f4160O.cancel(false);
            this.f4160O = null;
        }
        this.f3851b.removeMessages(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE);
    }

    /* renamed from: s */
    private void m4123s() {
        m4124t();
        if (this.f4176f.m4460e() || !m4126v() || C0600ao.m2203a(QuickApp.f2078u.m2230b(this.f4185o))) {
            m4125u();
        }
        m4127w();
    }

    /* renamed from: t */
    private void m4124t() {
        if (this.f4158M != null && !this.f4158M.m2240b(this.f4185o)) {
            this.f4158M.cancel(false);
            this.f4158M = null;
        }
        if (this.f4176f.getPictureType() == 0) {
            C0600ao c0600ao = QuickApp.f2078u;
            C0714j m2225a = c0600ao.m2225a(this.f4185o);
            if (m2225a != null) {
                m4133a(m2225a, true);
                m2225a.m2866m();
            } else if (this.f4158M == null) {
                this.f4158M = c0600ao.m2223a(this.f4185o, this.f4184n, 1, this.f3851b);
            }
        }
    }

    /* renamed from: u */
    private void m4125u() {
        int m4131a;
        int pictureType = this.f4176f.getPictureType();
        if (this.f4183m != null) {
            if ((pictureType == -1 || pictureType >= 1) && (m4131a = m4131a(this.f4183m.f2419c, this.f4189s)) != this.f4183m.f2419c) {
                Uri m2379d = this.f4183m.m2379d(m4131a);
                if (this.f4160O != null && !this.f4160O.m2240b(m2379d)) {
                    this.f4160O.cancel(false);
                    this.f4160O = null;
                }
                C0600ao c0600ao = QuickApp.f2078u;
                if (this.f4160O != null || c0600ao.m2234c(m2379d)) {
                    return;
                }
                this.f4160O = c0600ao.m2223a(m2379d, this.f4183m.m2383f(m4131a), 1, this.f3851b);
            }
        }
    }

    /* renamed from: v */
    private boolean m4126v() {
        return this.f4176f.getPictureType() == 1 && (!this.f4191u || "image/gif".equals(this.f4176f.getMimeType()));
    }

    /* renamed from: w */
    private void m4127w() {
        if (this.f4159N != null && !this.f4159N.m2240b(this.f4185o)) {
            this.f4159N.cancel(false);
            this.f4159N = null;
        }
        if (this.f4159N == null && m4126v()) {
            this.f4159N = QuickApp.f2078u.m2223a(this.f4185o, this.f4184n, 3, this.f3851b);
        }
    }

    /* renamed from: x */
    private void m4128x() {
        if (this.f4193w) {
            this.f4179i.setText(this.f4186p != null ? this.f4186p.m4071a('\n') : "");
        } else {
            this.f4179i.setText("");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y */
    public void m4129y() {
        if (this.f4183m != null) {
            String path = this.f4185o.getPath();
            char m2721a = C0690c.m2721a(path);
            if (m2721a == 0) {
                m2721a = 'I';
            }
            this.f4184n = m2721a;
            if (path != null && !this.f4183m.m2373b(this.f4183m.f2419c).equals(path)) {
                this.f4183m.f2419c = this.f4183m.m2364a(path, this.f4184n);
            }
            if (this.f4183m.f2419c < 0) {
                this.f4183m.f2419c = 0;
            } else if (this.f4183m.f2419c >= this.f4183m.m2390j()) {
                this.f4183m.f2419c = this.f4183m.m2390j() - 1;
            }
        }
    }

    /* renamed from: z */
    private void m4130z() {
        int i = this.f4162Q;
        if (i == 0) {
            if (this.f4172aa == null) {
                this.f4172aa = new ArrayList(5);
                for (int i2 = 1; i2 < 6; i2++) {
                    this.f4172aa.add(Integer.valueOf(i2));
                }
                Collections.shuffle(this.f4172aa);
            }
            int i3 = this.f4166U;
            this.f4166U = i3 + 1;
            int i4 = i3 % 5;
            if (i4 == 0) {
                Collections.shuffle(this.f4172aa);
            }
            i = ((Integer) this.f4172aa.get(i4)).intValue();
        }
        Animation m4097b = m4097b(i, true);
        m4097b.setAnimationListener(this.f4174ac);
        Animation m4097b2 = m4097b(i, false);
        m4097b2.setAnimationListener(null);
        this.f4176f.startAnimation(m4097b);
        this.f4177g.startAnimation(m4097b2);
    }

    /* renamed from: a */
    protected int m4131a(int i, boolean z) {
        int m2390j = this.f4183m.m2390j();
        if (!z) {
            int i2 = i - 1;
            return i2 < 0 ? m2390j - 1 : i2;
        }
        int i3 = i + 1;
        if (i3 >= m2390j) {
            return 0;
        }
        return i3;
    }

    @Override // com.alensw.p038ui.p041c.C1159a, com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public long mo3860a(boolean z, RectF rectF) {
        Animation m4036a = this.f4082C.m4036a(z, false, rectF, (RectF) null);
        long duration = m4036a.getDuration();
        if (duration > 0) {
            if (!z) {
                m4036a.setAnimationListener(new AnimationAnimationListenerC1262dv(this));
                Animation c = this.f4082C.m3810c(false);
                c.setDuration(duration / 2);
                c.setFillAfter(true);
                if (this.f3852c != null && this.f3852c.getVisibility() == 0) {
                    this.f3852c.startAnimation(c);
                }
                if (this.f4178h != null && this.f4178h.getVisibility() == 0) {
                    this.f4178h.startAnimation(c);
                }
            }
            this.f4176f.startAnimation(m4036a);
        }
        return duration;
    }

    @Override // com.alensw.p038ui.p041c.C1159a, com.alensw.p038ui.p041c.C1234cu
    @TargetApi(16)
    /* renamed from: a */
    public void mo3861a() {
        boolean z = false;
        super.mo3861a();
        this.f4082C.m3820g(true);
        this.f4082C.m3822h(true);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f4082C);
        this.f4176f.m4449b(0, defaultSharedPreferences.getBoolean("auto_black_bkgnd", false) ? -16777216 : this.f4082C.f3742U);
        this.f4176f.setPattern(defaultSharedPreferences.getBoolean("bkgnd_pattern", false));
        int i = defaultSharedPreferences.getInt("show_controls", 2);
        this.f4193w = (i & 1) != 0;
        this.f4179i.setVisibility(this.f4193w ? 0 : 8);
        m4128x();
        boolean z2 = (i & 2) != 0;
        this.f4181k.setVisibility(z2 ? 0 : 8);
        this.f4182l.setVisibility(z2 ? 0 : 8);
        this.f4188r = C0742b.m2960a(defaultSharedPreferences.getString("screen_orientation", "-1"), -1);
        this.f4190t = defaultSharedPreferences.getBoolean("single_tap_zoom", false);
        C0706b.f2668a = defaultSharedPreferences.getBoolean("force_true_color", false);
        QuickApp.f2078u.f2288a = defaultSharedPreferences.getBoolean("cache_to_media_store", true);
        this.f4191u = defaultSharedPreferences.getBoolean("delay_load", false);
        this.f4162Q = C0742b.m2960a(defaultSharedPreferences.getString("slideshow_animation", ""), 0);
        this.f4167V = defaultSharedPreferences.getBoolean("pan_and_zoom", false);
        this.f4168W = defaultSharedPreferences.getBoolean("slideshow_shuffle", false);
        this.f4164S = C0742b.m2960a(defaultSharedPreferences.getString("slideshow_interval", "3"), 3) * 1000;
        if (this.f4164S < 1000) {
            this.f4164S = 1000;
        }
        if (this.f4183m != null) {
            boolean booleanExtra = this.f4084E.getBooleanExtra("QuickPic.slide_show", false);
            this.f4084E.removeExtra("QuickPic.slide_show");
            if ((this.f4183m.m2390j() == 0 || this.f4183m.m2393m()) || m3877a(0)) {
                QuickApp.f2072o.m2497a(this.f4183m, true);
                QuickApp.f2080w.m2524c();
                m3872a(this.f4183m, new RunnableC1261du(this, booleanExtra));
            } else if (booleanExtra) {
                m4086L();
            } else {
                m4129y();
            }
            if (booleanExtra) {
                return;
            }
        }
        boolean z3 = this.f4176f.getPictureType() >= 1 && this.f4185o.equals(this.f4176f.getPictureUri());
        if (z3 && m4135l()) {
            m4121r();
            QuickApp.f2078u.m2231b();
            QuickApp.f2078u.m2232b((C0714j) null);
        } else {
            z = z3;
        }
        if (z) {
            this.f4176f.m4461f();
            this.f3851b.sendEmptyMessage(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE);
            return;
        }
        C0714j m4091a = m4091a(this.f4185o, this.f4184n, true);
        m4133a(m4091a, true);
        if (m4091a != null) {
            m4091a.m2866m();
        }
        this.f3851b.sendEmptyMessageDelayed(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE, ActivityC1109ao.f3726G ? 20L : this.f4082C.m4039b(true) + 50);
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    @TargetApi(16)
    /* renamed from: a */
    public void mo3939a(int i, int i2, int i3, int i4) {
        super.mo3939a(i, i2, i3, i4);
        this.f4082C.mo1991a(this.f4155A);
        this.f3852c.setPadding(this.f4155A.left, 0, this.f4155A.right, this.f4155A.bottom);
        if (i3 <= i || i4 <= i2 || this.f4195y == null) {
            return;
        }
        this.f4176f.setTransValues(this.f4195y);
        this.f4195y = null;
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3940a(int i, int i2, Intent intent) {
        Uri data;
        if (i != 2 || i2 != -1 || intent == null || (data = intent.getData()) == null) {
            return;
        }
        this.f4185o = data;
        this.f4184n = 'I';
        m4129y();
    }

    @Override // com.alensw.p038ui.p041c.C1159a, com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3865a(Bundle bundle) {
        super.mo3865a(bundle);
        super.m4033h(R.layout.viewer);
        this.f4185o = this.f4084E.getData();
        if (bundle != null) {
            if (this.f4185o == null) {
                this.f4185o = (Uri) bundle.getParcelable("current_uri");
            }
            this.f4195y = bundle.getFloatArray("matrix_values");
        }
        String type = this.f4084E.getType();
        this.f4184n = (type == null || !type.startsWith("video/")) ? 'I' : 'V';
        this.f4183m = QuickApp.f2072o.m2495a(this.f4082C, this.f4185o);
        if (this.f4183m == null && this.f4185o == null) {
            Toast.makeText(this.f4082C, R.string.load_failed, 1).show();
            m4023E();
            return;
        }
        if (this.f4183m != null) {
            m3884d(this.f4183m.getPath());
            if (this.f4185o == null) {
                this.f4185o = this.f4183m.m2379d(this.f4183m.f2419c);
            }
            if (this.f4185o != Uri.EMPTY) {
                m4129y();
            }
        }
        this.f3852c = (ViewGroup) m4031f(R.id.bottom_bar);
        this.f4176f = (PictureView) m4031f(R.id.image);
        this.f4176f.setListener(this.f4161P);
        this.f4176f.setOnFocusChangeListener(new ViewOnFocusChangeListenerC1257dq(this));
        this.f4177g = (ImageView) m4031f(R.id.showing);
        this.f4178h = (ImageView) m4031f(R.id.play);
        this.f4178h.setOnClickListener(this.f3853d);
        ActivityC1109ao.m3792a(this.f4178h, this.f4196z, -855638017);
        C1294d.m4210a(this.f4178h);
        float f = m4024F().getDisplayMetrics().density;
        this.f4179i = (TextView) this.f3852c.findViewById(R.id.details);
        this.f4179i.setTextColor(-1);
        this.f4179i.setOnClickListener(this.f3853d);
        this.f4179i.setShadowLayer(f / 2.0f, f / 4.0f, f / 4.0f, -16777216);
        this.f4180j = (ImageView) this.f3852c.findViewById(R.id.show3d);
        this.f4180j.setOnClickListener(this.f3853d);
        ActivityC1109ao.m3791a(this.f4180j, new C1296f("3D"));
        this.f4181k = (ImageView) this.f3852c.findViewById(R.id.zoomin);
        this.f4182l = (ImageView) this.f3852c.findViewById(R.id.zoomout);
        this.f4181k.setOnClickListener(this.f3853d);
        this.f4182l.setOnClickListener(this.f3853d);
        ActivityC1109ao.m3791a(this.f4181k, new C1298h(true));
        ActivityC1109ao.m3791a(this.f4182l, new C1298h(false));
    }

    /* renamed from: a */
    protected void m4132a(C0714j c0714j) {
        if (c0714j.m2863a(this.f4185o)) {
            m4133a(c0714j, false);
        } else if (this.f4183m != null) {
            if (c0714j.m2863a(this.f4187q != null ? this.f4187q.f2707i : this.f4183m.m2379d(m4131a(this.f4183m.f2419c, this.f4189s)))) {
                if (this.f4187q != null && this.f4187q.f2705d < c0714j.f2705d) {
                    this.f4187q.m2866m();
                    this.f4187q = null;
                }
                if (this.f4187q == null) {
                    this.f4187q = c0714j.mo2865l();
                    this.f4176f.invalidate();
                }
            }
        }
        if (this.f3851b.hasMessages(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE)) {
            return;
        }
        this.f3851b.sendEmptyMessageDelayed(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE, 20L);
    }

    /* renamed from: a */
    protected void m4133a(C0714j c0714j, boolean z) {
        if (c0714j != null && c0714j.m2855k() && this.f4183m == null && c0714j.m2863a(this.f4185o)) {
            String type = this.f4084E.getType();
            if (type == null || type.length() == 0) {
                type = "image/*";
            }
            C1094a.m3784b(this.f4082C, this.f4185o, type);
            c0714j.m2866m();
            m4023E();
            return;
        }
        this.f4176f.mo4313a(c0714j, z);
        this.f4176f.m4461f();
        if (this.f4157L.equals(this.f4185o)) {
            this.f4192v = z;
            return;
        }
        this.f4084E.setData(this.f4185o);
        String lastPathSegment = m4136m() ? this.f4185o.getLastPathSegment() : this.f4185o.toString();
        m4027b((CharSequence) C0742b.m2997c(lastPathSegment));
        if (this.f4188r == -2) {
            int pictureWidth = this.f4176f.getPictureWidth();
            int pictureHeight = this.f4176f.getPictureHeight();
            if (pictureWidth > 0 && pictureHeight > 0) {
                this.f4082C.setRequestedOrientation(pictureWidth > pictureHeight ? 0 : 1);
            }
        }
        this.f4186p = new C1246df(this.f4082C, this.f4185o, this.f4184n, this.f4184n == 'I' ? this.f4176f.getMimeType() : null, QuickApp.f2078u.m2230b(this.f4185o));
        this.f4194x = this.f4184n == 'V' || (QuickApp.f2060c && this.f4186p.m4081b());
        if (this.f4194x) {
            this.f4196z.m4213a(this.f4184n == 'V' ? 0 : 4);
        }
        m4095a(this.f4194x);
        m4128x();
        this.f4180j.setVisibility(C0714j.m2861b(lastPathSegment) ? 0 : 8);
        this.f4192v = true;
        m3857a(this.f4082C, c0714j, "local");
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public boolean mo3943a(int i, Menu menu) {
        this.f4082C.mo1994a(true);
        return super.mo3943a(i, menu);
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public boolean mo3944a(KeyEvent keyEvent, boolean z) {
        m4085K();
        return false;
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    @TargetApi(11)
    /* renamed from: a */
    public boolean mo3945a(Menu menu) {
        MenuC0693b.m2735a(this.f4082C, R.menu.picture, menu);
        if (this.f4183m != null) {
            m3866a(menu, R.id.slideshow, 1);
            m3866a(menu, R.id.share, 2);
            m3866a(menu, R.id.delete, 2);
            m3866a(menu, R.id.rotate, 1);
        } else {
            menu.removeItem(R.id.slideshow);
            menu.removeItem(R.id.share);
            menu.removeItem(R.id.delete);
            menu.removeItem(R.id.rotate);
            menu.removeItem(R.id.edit);
            menu.removeItem(R.id.rename);
            menu.removeItem(R.id.move_to);
            menu.removeItem(R.id.copy_to);
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public boolean mo3946a(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        View c = this.f4082C.m3809c(itemId);
        String m4137n = m4137n();
        switch (itemId) {
            case android.R.id.title:
            case R.id.rename /* 2131296354 */:
                if (this.f4183m == null) {
                    return true;
                }
                if (f3849a && m3885d()) {
                    return true;
                }
                m4139p();
                return true;
            case android.R.id.home:
            case R.id.home /* 2131296307 */:
                if (this.f4183m != null && this.f4082C.m4043d() == 1) {
                    this.f4082C.m4042c(this);
                    this.f4082C.m4037a(C1192bf.class, new Intent((String) null, this.f4185o), (Bundle) null);
                    return true;
                }
                return super.mo3946a(menuItem);
            case R.id.share /* 2131296266 */:
                if (this.f4186p == null) {
                    return true;
                }
                this.f4186p.m4076a(c);
                return true;
            case R.id.play /* 2131296298 */:
                if (this.f4184n == 'V') {
                    C1094a.m3776a(this.f4082C, this.f4185o, m4137n);
                    return true;
                }
                if (this.f4186p == null || !this.f4186p.m4081b()) {
                    return true;
                }
                C1094a.m3775a(this.f4082C, this.f4185o);
                return true;
            case R.id.details /* 2131296324 */:
                if (this.f4186p == null) {
                    return true;
                }
                this.f4186p.m4078a(this.f4183m != null ? Integer.toString(this.f4183m.f2419c + 1) + "/" + this.f4183m.m2390j() : m4032g(R.string.details), new C1263dw(this, this.f4183m != null ? this.f4183m.m2381e(this.f4183m.f2419c) : null));
                return true;
            case R.id.show3d /* 2131296325 */:
                C1094a.m3784b(this.f4082C, this.f4185o, "image/jpeg");
                return true;
            case R.id.zoomout /* 2131296326 */:
            case R.id.zoomin /* 2131296327 */:
                this.f4161P.mo3959a(this.f4176f.m4457d(itemId == R.id.zoomin), true);
                C0688a.m2714a(this.f4082C, EnumC0689b.ClickZoom);
                return true;
            case R.id.delete /* 2131296334 */:
                C1094a.m3773a(this.f4082C, 1, c, new RunnableC1264dx(this));
                return true;
            case R.id.move_to /* 2131296336 */:
                if (f3849a && m3885d()) {
                    return true;
                }
                break;
            case R.id.slideshow /* 2131296338 */:
                if (this.f4183m == null) {
                    return true;
                }
                if (!this.f4168W) {
                    this.f4183m.f2419c = m4131a(this.f4183m.f2419c, true);
                }
                m4086L();
                this.f4082C.mo1994a(m4084J() ? false : true);
                return true;
            case R.id.settings /* 2131296343 */:
                C1094a.m3781a(this.f4082C, new Intent(this.f4082C, (Class<?>) MainPreference.class));
                return true;
            case R.id.rotate /* 2131296346 */:
                C1094a.m3785c(this.f4082C, c);
                return true;
            case R.id.edit /* 2131296361 */:
            case R.id.set_as /* 2131296362 */:
                if (this.f4186p == null) {
                    return true;
                }
                Bundle bundle = new Bundle();
                C0714j fullPicture = this.f4176f.getFullPicture();
                if (fullPicture != null) {
                    if (fullPicture.f2705d != 2 || fullPicture.m2851g() * fullPicture.m2852h() <= 3145728) {
                        QuickApp.f2078u.m2232b(fullPicture);
                    }
                    fullPicture.m2866m();
                }
                if (itemId == R.id.edit) {
                    this.f4186p.m4077a(c, bundle);
                    return true;
                }
                this.f4186p.m4080b(c, bundle);
                return true;
            case R.id.copy_to /* 2131296363 */:
                break;
            case R.id.show_in_map /* 2131296364 */:
                if (this.f4186p == null) {
                    return true;
                }
                this.f4186p.m4079b(c);
                return true;
            case R.id.rotate_left /* 2131296368 */:
                m4134b(-90);
                return true;
            case R.id.rotate_right /* 2131296369 */:
                m4134b(90);
                return true;
            case R.id.rotate_180 /* 2131296370 */:
                m4134b(180);
                return true;
            default:
                return super.mo3946a(menuItem);
        }
        if (this.f4183m == null) {
            return true;
        }
        HashSet hashSet = new HashSet(1);
        C0622d m2381e = this.f4183m.m2381e(this.f4183m.f2419c);
        if (m2381e == null) {
            return true;
        }
        hashSet.add(m2381e);
        m3876a(hashSet, itemId == R.id.copy_to, new C1265dy(this));
        return true;
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public boolean mo3947a(MotionEvent motionEvent) {
        switch (motionEvent.getAction() & 255) {
            case 0:
                m4085K();
                break;
            case 1:
                if (!this.f4082C.m3808a(motionEvent.getX(), motionEvent.getY())) {
                    this.f4082C.m3817f(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE);
                    break;
                } else {
                    this.f4082C.m3836u();
                    break;
                }
        }
        return false;
    }

    @Override // com.alensw.p038ui.p041c.C1159a, com.alensw.p038ui.p041c.C1234cu
    /* renamed from: b */
    public void mo3881b() {
        super.mo3881b();
        m4085K();
        m4121r();
        if (this.f4088I) {
            this.f4176f.m4442a(0, false);
        }
        this.f4176f.m4462g();
        if (this.f4187q != null) {
            this.f4187q.m2866m();
            this.f4187q = null;
        }
        if (!this.f4088I) {
            m4135l();
        }
        this.f4084E.setData(this.f4185o);
    }

    /* renamed from: b */
    protected void m4134b(int i) {
        String path;
        int m2961a;
        if (this.f4184n == 'I') {
            if (this.f4183m != null && (m2961a = C0742b.m2961a((path = this.f4185o.getPath()), this.f4176f.getPictureRotation() + i, true)) != -1) {
                C0622d m2381e = this.f4183m.m2381e(this.f4183m.f2419c);
                if (m2381e != null) {
                    QuickApp.f2080w.m2523c(m2381e);
                }
                QuickApp.f2072o.m2497a(this.f4183m, this.f4183m.f2419c < 4);
                QuickApp.f2078u.m2227a(this.f4185o, false);
                QuickApp.f2076s.m2283a(path, m2961a);
                QuickApp.f2075r.m2309a(path);
            }
            this.f4176f.mo2135b(i);
        }
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: b */
    public void mo3949b(Bundle bundle) {
        if (this.f4185o == null || this.f4185o == Uri.EMPTY) {
            bundle.remove("current_uri");
            bundle.remove("matrix_values");
        } else {
            bundle.putParcelable("current_uri", this.f4185o);
            bundle.putFloatArray("matrix_values", this.f4176f.getTransValues());
        }
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: b */
    public boolean mo3950b(Menu menu) {
        boolean z = this.f4184n == 'I';
        m3867a(menu, R.id.edit, z);
        m3867a(menu, R.id.set_as, z);
        m3867a(menu, R.id.show_in_map, z);
        return true;
    }

    @Override // com.alensw.p038ui.p041c.C1159a
    /* renamed from: c */
    protected String mo3882c() {
        return "Picture";
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: e */
    public void mo3951e(Menu menu) {
        if (this.f4082C.mo2008a()) {
            this.f4082C.m3817f(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE);
        }
        super.mo3951e(menu);
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: g */
    public void mo3952g() {
        super.mo3952g();
        QuickApp.f2078u.m2231b();
        QuickApp.f2078u.m2232b((C0714j) null);
    }

    @Override // com.alensw.p038ui.p041c.C1159a, android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 30:
                if (message.obj instanceof C0714j) {
                    C0714j c0714j = (C0714j) message.obj;
                    if (this.f4087H == 2) {
                        if (m4084J()) {
                            m4098b(c0714j);
                        } else {
                            m4132a(c0714j);
                        }
                    }
                    c0714j.m2866m();
                    break;
                }
                break;
            case HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE /* 3000 */:
                if (this.f4087H != 2) {
                    this.f3851b.removeMessages(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE);
                    break;
                } else {
                    m4123s();
                    break;
                }
        }
        return true;
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: j */
    protected Uri[] mo3953j() {
        return new Uri[]{this.f4185o};
    }

    /* renamed from: l */
    protected boolean m4135l() {
        if (!m4136m()) {
            return false;
        }
        String path = this.f4185o.getPath();
        int fuGetFileTime = path != null ? JniUtils.fuGetFileTime(path) : 0;
        if (this.f4156B == fuGetFileTime) {
            return false;
        }
        this.f4156B = fuGetFileTime;
        return true;
    }

    /* renamed from: m */
    protected boolean m4136m() {
        return C0662f.m2592a(this.f4185o);
    }

    /* renamed from: n */
    protected String m4137n() {
        String mimeType = this.f4184n == 'I' ? this.f4176f.getMimeType() : null;
        return mimeType == null ? this.f4183m != null ? this.f4183m.m2385g(this.f4183m.f2419c) : this.f4084E.getType() : mimeType;
    }

    /* renamed from: o */
    protected void m4138o() {
        if (this.f4183m != null) {
            m4121r();
            String path = this.f4185o.getPath();
            if (!C0742b.m3010i(path)) {
                m3879a(path);
                return;
            }
            QuickApp.f2076s.m2282a(path, this.f4184n, false);
            QuickApp.f2072o.m2497a(this.f4183m, this.f4183m.f2419c < 4);
            QuickApp.f2078u.m2227a(this.f4185o, true);
            QuickApp.f2075r.m2309a(path);
            m4119q();
        }
    }

    /* renamed from: p */
    protected void m4139p() {
        m3870a(this.f4183m, this.f4183m.f2419c, new C1268ea(this));
    }
}
