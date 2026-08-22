package com.alensw.p038ui.p041c;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.preference.PreferenceManager;
import android.text.Html;
import android.text.method.LinkMovementMethod;
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
import com.alensw.bean.CommonFile;
import com.alensw.bean.CommonFolder;
import com.alensw.bean.LocalFile;
import com.alensw.bean.UriFile;
import com.alensw.jni.JniUtils;
import com.alensw.p022a.C0600ao;
import com.alensw.p022a.C0604as;
import com.alensw.p022a.C0615bc;
import com.alensw.p023b.p026c.C0662f;
import com.alensw.p023b.p030g.MenuC0693b;
import com.alensw.p023b.p031h.C0706b;
import com.alensw.p023b.p031h.C0707c;
import com.alensw.p023b.p031h.C0714j;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.activity.C1094a;
import com.alensw.p038ui.activity.MainPreference;
import com.alensw.p038ui.p042d.C1294d;
import com.alensw.p038ui.p042d.C1296f;
import com.alensw.p038ui.p042d.C1297g;
import com.alensw.p038ui.view.C1360e;
import com.alensw.p038ui.view.InterfaceC1372q;
import com.alensw.p038ui.view.PictureView;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import org.apache.http.protocol.HttpRequestExecutor;

/* renamed from: com.alensw.ui.c.as */
/* loaded from: classes.dex */
public class C1178as extends C1159a {

    /* renamed from: A */
    private int f3896A;

    /* renamed from: L */
    private C0604as f3898L;

    /* renamed from: M */
    private C0604as f3899M;

    /* renamed from: N */
    private C0604as f3900N;

    /* renamed from: P */
    private int f3902P;

    /* renamed from: R */
    private int f3904R;

    /* renamed from: S */
    private int f3905S;

    /* renamed from: T */
    private int f3906T;

    /* renamed from: U */
    private boolean f3907U;

    /* renamed from: V */
    private boolean f3908V;

    /* renamed from: W */
    private long f3909W;

    /* renamed from: X */
    private Runnable f3910X;

    /* renamed from: Y */
    private ArrayList f3911Y;

    /* renamed from: Z */
    private ArrayList f3912Z;

    /* renamed from: f */
    private PictureView f3916f;

    /* renamed from: g */
    private ImageView f3917g;

    /* renamed from: h */
    private ImageView f3918h;

    /* renamed from: i */
    private TextView f3919i;

    /* renamed from: j */
    private ImageView f3920j;

    /* renamed from: k */
    private CommonFolder f3921k;

    /* renamed from: l */
    private CommonFile f3922l;

    /* renamed from: m */
    private C1246df f3923m;

    /* renamed from: n */
    private C0714j f3924n;

    /* renamed from: o */
    private String f3925o;

    /* renamed from: r */
    private boolean f3928r;

    /* renamed from: s */
    private boolean f3929s;

    /* renamed from: t */
    private boolean f3930t;

    /* renamed from: u */
    private boolean f3931u;

    /* renamed from: v */
    private boolean f3932v;

    /* renamed from: w */
    private boolean f3933w;

    /* renamed from: x */
    private float[] f3934x;

    /* renamed from: p */
    private int f3926p = -1;

    /* renamed from: q */
    private boolean f3927q = true;

    /* renamed from: y */
    private final C1297g f3935y = new C1297g(0);

    /* renamed from: z */
    private final Rect f3936z = new Rect();

    /* renamed from: B */
    private Uri f3897B = Uri.EMPTY;

    /* renamed from: O */
    private final InterfaceC1372q f3901O = new C1191be(this);

    /* renamed from: Q */
    private int f3903Q = 1000;

    /* renamed from: aa */
    private Interpolator f3913aa = new DecelerateInterpolator();

    /* renamed from: ab */
    private final Animation.AnimationListener f3914ab = new AnimationAnimationListenerC1180au(this);

    /* renamed from: ac */
    private final Runnable f3915ac = new RunnableC1182aw(this);

    /* renamed from: H */
    private void m3892H() {
        if (m3937z()) {
            m3893I();
        }
    }

    /* renamed from: I */
    private void m3893I() {
        m3926o();
        QuickApp.f2078u.m2231b();
        if (this.f3910X == null) {
            this.f3910X = new RunnableC1181av(this);
            m3907b(false);
            this.f3851b.postDelayed(this.f3915ac, 3600000L);
        } else if (this.f3910X != null) {
            this.f3851b.removeCallbacks(this.f3915ac);
            this.f3851b.removeCallbacks(this.f3910X);
            this.f3910X = null;
            this.f3911Y = null;
            this.f3912Z = null;
            this.f3906T = 0;
            this.f3916f.m4463h();
            this.f3917g.setVisibility(4);
            m3913d(false);
        }
        boolean m3937z = m3937z();
        if (this.f3916f.getKeepScreenOn() != m3937z) {
            this.f3916f.setKeepScreenOn(m3937z);
        }
    }

    /* renamed from: a */
    public static Intent m3894a(CommonFolder commonFolder, boolean z) {
        Intent intent = new Intent();
        intent.setData(commonFolder.m3036b(commonFolder.f2807k));
        intent.putExtra("QuickPic.folder", commonFolder);
        intent.putExtra("QuickPic.slide_show", z);
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public C0714j m3896a(CommonFile commonFile, boolean z) {
        Uri mo3021i = commonFile.mo3021i();
        C0600ao c0600ao = QuickApp.f2078u;
        C0714j m2225a = c0600ao.m2225a(mo3021i);
        if (m2225a != null) {
            return m2225a;
        }
        if (this.f3898L != null && this.f3898L.m2240b(mo3021i)) {
            return this.f3898L.m2238a();
        }
        if (this.f3900N != null && this.f3900N.m2240b(mo3021i)) {
            return this.f3900N.m2238a();
        }
        if (z) {
            m3926o();
            this.f3898L = c0600ao.m2224a(commonFile, 1, this.f3851b);
            return this.f3898L.m2238a();
        }
        if (this.f3900N != null) {
            this.f3900N.cancel(false);
        }
        this.f3900N = c0600ao.m2224a(commonFile, 1, this.f3851b);
        return this.f3900N.m2238a();
    }

    /* renamed from: a */
    public static void m3901a(Activity activity, CommonFile commonFile) {
        Uri mo3021i = commonFile.mo3021i();
        String m3014b = commonFile.m3014b();
        if (C0725a.m2920c(mo3021i)) {
            new ProgressDialogC1179at(activity, activity.getString(R.string.loading), 0, mo3021i, activity, m3014b).m3731c();
            return;
        }
        String mo3022j = commonFile.mo3022j();
        if (mo3022j != null) {
            C1094a.m3776a(activity, Uri.fromFile(new File(mo3022j)), m3014b);
        } else {
            C1094a.m3776a(activity, mo3021i, m3014b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3903a(boolean z) {
        int i = z ? 0 : 8;
        if (this.f3918h.getVisibility() != i) {
            this.f3918h.setVisibility(i);
            if (ActivityC1109ao.f3726G) {
                Animation c = this.f4082C.m3810c(i == 0);
                c.setDuration(150L);
                this.f3918h.startAnimation(c);
            }
        }
    }

    /* renamed from: b */
    private Animation m3904b(int i, boolean z) {
        Animation m4421a = C1360e.m4421a(i, z, this.f3916f.getWidth(), this.f3916f.getHeight(), this.f3916f.f4750ac);
        m4421a.setDuration(this.f3903Q);
        if (i != 1) {
            m4421a.setInterpolator(this.f3913aa);
        }
        return m4421a;
    }

    /* renamed from: b */
    private void m3906b(C0714j c0714j) {
        if (c0714j.m2855k()) {
            m3907b(true);
            return;
        }
        QuickApp.f2078u.m2228a(c0714j);
        boolean z = this.f3909W == 0;
        long currentTimeMillis = System.currentTimeMillis();
        if (z) {
            this.f3909W = currentTimeMillis;
        }
        long max = z ? 0L : Math.max(50L, Math.max(0L, this.f3904R) - (currentTimeMillis - this.f3909W));
        this.f3851b.removeCallbacks(this.f3910X);
        this.f3851b.postDelayed(this.f3910X, max);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3907b(boolean z) {
        if (this.f3908V) {
            if (this.f3911Y == null || this.f3911Y.isEmpty()) {
                m3935x();
            }
            if (!this.f3911Y.isEmpty()) {
                this.f3905S = ((Integer) this.f3911Y.remove(0)).intValue();
            }
        } else if (z) {
            this.f3905S = m3938a(this.f3905S, true);
        } else {
            this.f3905S = (this.f3921k.f2807k < 0 || this.f3921k.f2807k >= this.f3921k.m3047o()) ? 0 : this.f3921k.f2807k;
        }
        CommonFile m3027a = this.f3921k.m3027a(this.f3905S);
        if (!z) {
            this.f3922l = m3027a;
        }
        this.f3909W = z ? System.currentTimeMillis() : 0L;
        if (this.f3898L != null) {
            this.f3898L.cancel(false);
        }
        QuickApp.f2078u.m2231b();
        this.f3898L = QuickApp.f2078u.m2224a(m3027a, 2, this.f3851b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m3913d(boolean z) {
        C0714j c0714j;
        if (z) {
            C0714j a2 = this.f3916f.m4436a((Bitmap.Config) null);
            c0714j = (a2 == null && this.f3916f.getPictureType() == 1) ? this.f3916f.getPicture() : a2;
        } else {
            c0714j = null;
        }
        Object tag = this.f3917g.getTag();
        this.f3917g.setImageBitmap(null);
        this.f3917g.setTag(null);
        if (tag instanceof C0714j) {
            ((C0714j) tag).m2866m();
        }
        if (c0714j != null) {
            BitmapDrawable bitmapDrawable = new BitmapDrawable(m4024F(), c0714j.m2848d());
            bitmapDrawable.setAntiAlias(true);
            this.f3917g.setImageDrawable(bitmapDrawable);
            this.f3917g.setTag(c0714j);
            Matrix matrix = new Matrix();
            c0714j.m2844a(matrix, this.f3917g.getWidth(), this.f3917g.getHeight(), 1);
            this.f3917g.setImageMatrix(matrix);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public void m3924n() {
        int m3047o = this.f3921k.m3047o();
        int i = this.f3921k.f2807k;
        if (i < 0 || i >= m3047o) {
            return;
        }
        if (m3047o == 1) {
            this.f3921k.m3041c(i);
            m4023E();
            return;
        }
        long j = this.f3916f.f4751ad;
        Animation m4422a = C1360e.m4422a(false);
        m4422a.setDuration(j);
        m4422a.setAnimationListener(new AnimationAnimationListenerC1189bc(this));
        m3913d(true);
        this.f3917g.setVisibility(0);
        this.f3917g.startAnimation(m4422a);
        this.f3927q = i < m3047o + (-1);
        this.f3901O.mo3962b(this.f3927q ? 1 : -1);
        this.f3921k.m3041c(i);
        Animation m4422a2 = C1360e.m4422a(true);
        m4422a2.setDuration(j);
        m4422a2.setInterpolator(this.f4082C.m4046j(true));
        this.f3916f.startAnimation(m4422a2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public void m3926o() {
        if (this.f3899M != null) {
            this.f3899M.cancel(false);
            this.f3899M = null;
        }
        if (this.f3898L != null) {
            this.f3898L.cancel(false);
            this.f3898L = null;
        }
        if (this.f3900N != null) {
            this.f3900N.cancel(false);
            this.f3900N = null;
        }
        this.f3851b.removeMessages(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE);
    }

    /* renamed from: p */
    private void m3927p() {
        m3928q();
        Uri mo3021i = this.f3922l.mo3021i();
        if (this.f3916f.m4460e() || !m3930s() || C0600ao.m2203a(QuickApp.f2078u.m2230b(mo3021i))) {
            m3929r();
        }
        m3931t();
    }

    /* renamed from: q */
    private void m3928q() {
        Uri mo3021i = this.f3922l.mo3021i();
        if (this.f3898L != null && !this.f3898L.m2240b(mo3021i)) {
            this.f3898L.cancel(false);
            this.f3898L = null;
        }
        if (this.f3916f.getPictureType() == 0) {
            C0600ao c0600ao = QuickApp.f2078u;
            C0714j m2225a = c0600ao.m2225a(mo3021i);
            if (m2225a != null) {
                m3942a(m2225a, true);
                m2225a.m2866m();
            } else if (this.f3898L == null) {
                this.f3898L = c0600ao.m2224a(this.f3922l, 1, this.f3851b);
            }
        }
    }

    /* renamed from: r */
    private void m3929r() {
        int m3938a;
        int pictureType = this.f3916f.getPictureType();
        if (this.f3921k != null) {
            if ((pictureType == -1 || pictureType >= 1) && (m3938a = m3938a(this.f3921k.f2807k, this.f3927q)) != this.f3921k.f2807k) {
                CommonFile m3027a = this.f3921k.m3027a(m3938a);
                Uri mo3021i = m3027a != null ? m3027a.mo3021i() : Uri.EMPTY;
                if (this.f3900N != null && !this.f3900N.m2240b(mo3021i)) {
                    this.f3900N.cancel(false);
                    this.f3900N = null;
                }
                C0600ao c0600ao = QuickApp.f2078u;
                if (this.f3900N != null || m3027a == null || c0600ao.m2234c(mo3021i)) {
                    return;
                }
                this.f3900N = c0600ao.m2224a(m3027a, 1, this.f3851b);
            }
        }
    }

    /* renamed from: s */
    private boolean m3930s() {
        return (!this.f3929s && this.f3916f.getPictureType() == 1) || "image/gif".equals(this.f3916f.getMimeType());
    }

    /* renamed from: t */
    private void m3931t() {
        Uri mo3021i = this.f3922l.mo3021i();
        if (this.f3899M != null && !this.f3899M.m2240b(mo3021i)) {
            this.f3899M.cancel(false);
            this.f3899M = null;
        }
        if (this.f3899M == null && m3930s()) {
            this.f3899M = QuickApp.f2078u.m2224a(this.f3922l, 3, this.f3851b);
        }
    }

    /* renamed from: u */
    private void m3932u() {
        if (this.f3933w) {
            try {
                String m3019g = this.f3922l.m3019g();
                if (m3019g != null) {
                    m3019g = m3019g.replace("{{details}}", this.f3925o);
                }
                this.f3919i.setText(Html.fromHtml(m3019g), TextView.BufferType.SPANNABLE);
                return;
            } catch (Throwable th) {
            }
        }
        if (!this.f3931u || this.f3916f.getPictureType() <= 0) {
            this.f3919i.setText("");
        } else {
            this.f3919i.setText(this.f3923m != null ? this.f3923m.m4071a('\n') : "");
        }
    }

    /* renamed from: v */
    private void m3933v() {
        if (this.f3921k != null) {
            int m3047o = this.f3921k.m3047o();
            if (!this.f3921k.m3027a(this.f3921k.f2807k).equals(this.f3922l)) {
                this.f3921k.f2807k = this.f3921k.m3025a(this.f3922l);
            }
            if (this.f3921k.f2807k < 0) {
                this.f3921k.f2807k = 0;
            } else if (this.f3921k.f2807k >= m3047o) {
                this.f3921k.f2807k = m3047o - 1;
            }
        }
    }

    /* renamed from: w */
    private void m3934w() {
        int i = this.f3902P;
        if (i == 0) {
            if (this.f3912Z == null) {
                this.f3912Z = new ArrayList(5);
                for (int i2 = 1; i2 < 6; i2++) {
                    this.f3912Z.add(Integer.valueOf(i2));
                }
                Collections.shuffle(this.f3912Z);
            }
            int i3 = this.f3906T;
            this.f3906T = i3 + 1;
            int i4 = i3 % 5;
            if (i4 == 0) {
                Collections.shuffle(this.f3912Z);
            }
            i = ((Integer) this.f3912Z.get(i4)).intValue();
        }
        Animation m3904b = m3904b(i, true);
        m3904b.setAnimationListener(this.f3914ab);
        Animation m3904b2 = m3904b(i, false);
        m3904b2.setAnimationListener(null);
        this.f3916f.startAnimation(m3904b);
        this.f3917g.startAnimation(m3904b2);
    }

    /* renamed from: x */
    private void m3935x() {
        if (this.f3921k != null) {
            int m3047o = this.f3921k.m3047o();
            this.f3911Y = new ArrayList(m3047o);
            for (int i = 0; i < m3047o; i++) {
                this.f3911Y.add(Integer.valueOf(i));
            }
            if (this.f3921k.f2807k >= 0 && this.f3921k.f2807k < m3047o) {
                this.f3911Y.remove(this.f3921k.f2807k);
            }
            Collections.shuffle(this.f3911Y);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y */
    public void m3936y() {
        if (this.f3905S < 0 || this.f3905S >= this.f3921k.m3047o()) {
            return;
        }
        this.f3921k.f2807k = this.f3905S;
        this.f3922l = this.f3921k.m3027a(this.f3921k.f2807k);
        Uri mo3021i = this.f3922l.mo3021i();
        C0714j m2225a = QuickApp.f2078u.m2225a(mo3021i);
        if (m2225a == null && this.f3898L != null && this.f3898L.m2240b(mo3021i)) {
            return;
        }
        m3913d(true);
        if (this.f3917g.getVisibility() != 0) {
            this.f3917g.setVisibility(0);
        }
        this.f3916f.m4463h();
        m3942a(m2225a, true);
        if (m2225a != null) {
            m2225a.m2866m();
        }
        m3934w();
    }

    /* renamed from: z */
    private boolean m3937z() {
        return this.f3910X != null;
    }

    /* renamed from: a */
    protected int m3938a(int i, boolean z) {
        int m3047o = this.f3921k.m3047o();
        if (!z) {
            int i2 = i - 1;
            return i2 < 0 ? m3047o - 1 : i2;
        }
        int i3 = i + 1;
        if (i3 >= m3047o) {
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
                m4036a.setAnimationListener(new AnimationAnimationListenerC1184ay(this));
                Animation c = this.f4082C.m3810c(false);
                c.setDuration(duration / 2);
                c.setFillAfter(true);
                if (this.f3852c != null && this.f3852c.getVisibility() == 0) {
                    this.f3852c.startAnimation(c);
                }
                if (this.f3918h != null && this.f3918h.getVisibility() == 0) {
                    this.f3918h.startAnimation(c);
                }
            }
            this.f3916f.startAnimation(m4036a);
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
        this.f3916f.m4449b(-7829368, defaultSharedPreferences.getBoolean("auto_black_bkgnd", false) ? -16777216 : this.f4082C.f3742U);
        this.f3916f.setPattern(defaultSharedPreferences.getBoolean("bkgnd_pattern", false));
        this.f3931u = (defaultSharedPreferences.getInt("show_controls", 2) & 1) != 0;
        this.f3919i.setVisibility((this.f3931u || this.f3933w) ? 0 : 8);
        m3932u();
        this.f3926p = C0742b.m2960a(defaultSharedPreferences.getString("screen_orientation", "-1"), -1);
        this.f3928r = defaultSharedPreferences.getBoolean("single_tap_zoom", false);
        C0706b.f2668a = defaultSharedPreferences.getBoolean("force_true_color", false);
        QuickApp.f2078u.f2288a = defaultSharedPreferences.getBoolean("cache_to_media_store", true);
        this.f3929s = defaultSharedPreferences.getBoolean("delay_load", false);
        this.f3902P = C0742b.m2960a(defaultSharedPreferences.getString("slideshow_animation", ""), 0);
        this.f3907U = defaultSharedPreferences.getBoolean("pan_and_zoom", false);
        this.f3908V = defaultSharedPreferences.getBoolean("slideshow_shuffle", false);
        this.f3904R = C0742b.m2960a(defaultSharedPreferences.getString("slideshow_interval", "3"), 3) * 1000;
        if (this.f3904R < 1000) {
            this.f3904R = 1000;
        }
        boolean booleanExtra = this.f4084E.getBooleanExtra("QuickPic.slide_show", false);
        this.f4084E.removeExtra("QuickPic.slide_show");
        if (booleanExtra) {
            m3893I();
            return;
        }
        m3933v();
        boolean z2 = this.f3916f.getPictureType() >= 1 && this.f3916f.getPictureUri().equals(this.f3922l.mo3021i());
        if (z2 && m3954l()) {
            m3926o();
            QuickApp.f2078u.m2231b();
            QuickApp.f2078u.m2232b((C0714j) null);
        } else {
            z = z2;
        }
        if (z) {
            this.f3916f.m4461f();
            this.f3851b.sendEmptyMessage(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE);
            return;
        }
        C0714j m3896a = m3896a(this.f3922l, true);
        m3942a(m3896a, true);
        if (m3896a != null) {
            m3896a.m2866m();
        }
        this.f3851b.sendEmptyMessageDelayed(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE, ActivityC1109ao.f3726G ? 20L : this.f4082C.m4039b(true) + 50);
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    @TargetApi(16)
    /* renamed from: a */
    public void mo3939a(int i, int i2, int i3, int i4) {
        super.mo3939a(i, i2, i3, i4);
        this.f4082C.mo1991a(this.f3936z);
        this.f3852c.setPadding(this.f3936z.left, 0, this.f3936z.right, this.f3936z.bottom);
        if (i3 <= i || i4 <= i2 || this.f3934x == null) {
            return;
        }
        this.f3916f.setTransValues(this.f3934x);
        this.f3934x = null;
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3940a(int i, int i2, Intent intent) {
        if (i == 2 && i2 == -1 && intent != null) {
            Uri data = intent.getData();
            try {
                C0662f m2590a = C0662f.m2590a(this.f4082C.getContentResolver(), data);
                long m2599f = m2590a.m2599f();
                C0707c c0707c = new C0707c();
                this.f3922l = UriFile.m3073a('I', data, intent.getType(), m2590a.m2598e(), m2599f / 1000, (c0707c.m2798b(m2590a, true) ? c0707c.m2789a(m2599f) : m2599f) / 1000);
                this.f3921k.f2807k = this.f3921k.m3040c(this.f3922l);
            } catch (Throwable th) {
            }
        }
    }

    @Override // com.alensw.p038ui.p041c.C1159a, com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3865a(Bundle bundle) {
        super.mo3865a(bundle);
        super.m4033h(R.layout.viewer);
        Uri data = this.f4084E.getData();
        String type = this.f4084E.getType();
        if (bundle != null) {
            this.f3934x = bundle.getFloatArray("matrix_values");
        }
        this.f3921k = (CommonFolder) this.f4084E.getParcelableExtra("QuickPic.folder");
        if (this.f3921k == null && data == null) {
            Toast.makeText(this.f4082C, R.string.load_failed, 1).show();
            m4023E();
            return;
        }
        if (this.f3921k != null) {
            this.f3922l = this.f3921k.m3027a(this.f3921k.f2807k);
        }
        if (this.f3922l == null) {
            this.f3922l = UriFile.m3072a('I', data, type);
        }
        m3933v();
        this.f3933w = (this.f3921k == null || (this.f3921k.m3015c() & 1073741824) == 0) ? false : true;
        this.f3852c = (ViewGroup) m4031f(R.id.bottom_bar);
        this.f3916f = (PictureView) m4031f(R.id.image);
        this.f3916f.setListener(this.f3901O);
        this.f3916f.setOnFocusChangeListener(new ViewOnFocusChangeListenerC1183ax(this));
        this.f3917g = (ImageView) m4031f(R.id.showing);
        this.f3918h = (ImageView) m4031f(R.id.play);
        this.f3918h.setOnClickListener(this.f3853d);
        ActivityC1109ao.m3792a(this.f3918h, this.f3935y, -855638017);
        C1294d.m4210a(this.f3918h);
        Resources F = m4024F();
        this.f3925o = F.getString(R.string.details);
        float f = F.getDisplayMetrics().density;
        this.f3919i = (TextView) this.f3852c.findViewById(R.id.details);
        this.f3919i.setTextColor(-1);
        this.f3919i.setLinkTextColor(-1);
        this.f3919i.setShadowLayer(f / 2.0f, f / 4.0f, f / 4.0f, -16777216);
        if (this.f3933w) {
            this.f3919i.setBackgroundColor(0);
            this.f3919i.setTextSize(0, F.getDimension(R.dimen.comment_text_size));
            this.f3919i.setMovementMethod(LinkMovementMethod.getInstance());
        } else {
            this.f3919i.setOnClickListener(this.f3853d);
        }
        this.f3920j = (ImageView) this.f3852c.findViewById(R.id.show3d);
        this.f3920j.setOnClickListener(this.f3853d);
        ActivityC1109ao.m3791a(this.f3920j, new C1296f("3D"));
        this.f3852c.findViewById(R.id.zoomin).setVisibility(8);
        this.f3852c.findViewById(R.id.zoomout).setVisibility(8);
    }

    /* renamed from: a */
    protected void m3941a(C0714j c0714j) {
        if (c0714j.m2863a(this.f3922l.mo3021i())) {
            m3942a(c0714j, false);
        } else if (this.f3921k != null) {
            if (c0714j.m2863a(this.f3924n != null ? this.f3924n.f2707i : this.f3921k.m3036b(m3938a(this.f3921k.f2807k, this.f3927q)))) {
                if (this.f3924n != null && this.f3924n.f2705d < c0714j.f2705d) {
                    this.f3924n.m2866m();
                    this.f3924n = null;
                }
                if (this.f3924n == null) {
                    this.f3924n = c0714j.mo2865l();
                    this.f3916f.invalidate();
                }
            }
        }
        if (this.f3851b.hasMessages(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE)) {
            return;
        }
        this.f3851b.sendEmptyMessageDelayed(HttpRequestExecutor.DEFAULT_WAIT_FOR_CONTINUE, 20L);
    }

    /* renamed from: a */
    protected void m3942a(C0714j c0714j, boolean z) {
        Uri mo3021i = this.f3922l.mo3021i();
        char m3020h = this.f3922l.m3020h();
        if (c0714j != null && c0714j.m2855k() && this.f3921k == null && c0714j.m2863a(mo3021i)) {
            String type = this.f4084E.getType();
            if (type == null || type.length() == 0) {
                type = "image/*";
            }
            C1094a.m3784b(this.f4082C, mo3021i, type);
            c0714j.m2866m();
            m4023E();
            return;
        }
        this.f3916f.mo4313a(c0714j, z);
        this.f3916f.m4461f();
        if (this.f3897B.equals(mo3021i)) {
            this.f3930t = z;
            return;
        }
        String mo3022j = this.f3922l.mo3022j();
        String m2997c = mo3022j != null ? C0742b.m2997c(mo3022j) : this.f3922l.m3012a();
        m4027b((CharSequence) m2997c);
        if (this.f3926p == -2) {
            int pictureWidth = this.f3916f.getPictureWidth();
            int pictureHeight = this.f3916f.getPictureHeight();
            if (pictureWidth > 0 && pictureHeight > 0) {
                this.f4082C.setRequestedOrientation(pictureWidth > pictureHeight ? 0 : 1);
            }
        }
        this.f3923m = new C1246df(this.f4082C, this.f3922l, QuickApp.f2078u.m2230b(mo3021i));
        this.f3932v = m3020h == 'V' || (QuickApp.f2060c && this.f3923m.m4081b());
        if (this.f3932v) {
            this.f3935y.m4213a(m3020h == 'V' ? 0 : 4);
        }
        m3903a(this.f3932v);
        m3932u();
        this.f3920j.setVisibility(C0714j.m2861b(m2997c) ? 0 : 8);
        this.f3930t = true;
        m3857a(this.f4082C, c0714j, C0725a.m2920c(mo3021i) ? "cloud" : "local");
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
        m3892H();
        return false;
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    @TargetApi(11)
    /* renamed from: a */
    public boolean mo3945a(Menu menu) {
        MenuC0693b.m2735a(this.f4082C, R.menu.picture, menu);
        if (C0725a.m2920c(this.f3921k.mo3021i())) {
            menu.removeItem(R.id.edit);
            menu.removeItem(R.id.move_to);
        }
        menu.removeItem(R.id.rename);
        if (this.f3921k != null) {
            m3866a(menu, R.id.slideshow, 1);
            m3866a(menu, R.id.share, 2);
            if ((this.f3921k.m3015c() & 2) != 0) {
                m3866a(menu, R.id.delete, 2);
            } else {
                menu.removeItem(R.id.delete);
            }
            m3866a(menu, R.id.rotate, 1);
        } else {
            menu.removeItem(R.id.slideshow);
            menu.removeItem(R.id.share);
            menu.removeItem(R.id.delete);
            menu.removeItem(R.id.rotate);
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public boolean mo3946a(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        View c = this.f4082C.m3809c(itemId);
        switch (itemId) {
            case android.R.id.home:
            case R.id.home /* 2131296307 */:
                if (this.f3921k != null && this.f4082C.m4043d() == 1) {
                    this.f4082C.m4042c(this);
                    this.f4082C.m4037a(C1192bf.class, C1290z.m4168a(this.f3921k, false, (String) null), (Bundle) null);
                    return true;
                }
                return super.mo3946a(menuItem);
            case R.id.share /* 2131296266 */:
                if (this.f3923m == null || this.f3916f.getPictureType() <= 0) {
                    return true;
                }
                this.f3923m.m4076a(c);
                return true;
            case R.id.play /* 2131296298 */:
                if (this.f3922l.m3020h() == 'V') {
                    m3901a(this.f4082C, this.f3922l);
                    return true;
                }
                if (this.f3923m == null || !this.f3923m.m4081b()) {
                    return true;
                }
                C1094a.m3775a(this.f4082C, this.f3922l.mo3021i());
                return true;
            case R.id.details /* 2131296324 */:
                if (this.f3923m == null || this.f3916f.getPictureType() <= 0) {
                    return true;
                }
                this.f3923m.m4078a(this.f3921k != null ? Integer.toString(this.f3921k.f2807k + 1) + "/" + this.f3921k.m3047o() : m4032g(R.string.details), new C1185az(this, this.f3922l));
                return true;
            case R.id.show3d /* 2131296325 */:
                C1094a.m3784b(this.f4082C, this.f3922l.mo3021i(), this.f3922l.m3014b());
                return true;
            case R.id.delete /* 2131296334 */:
                C1094a.m3773a(this.f4082C, 1, c, new RunnableC1187ba(this));
                return true;
            case R.id.move_to /* 2131296336 */:
                if (f3849a && m3885d()) {
                    return true;
                }
                break;
            case R.id.slideshow /* 2131296338 */:
                if (this.f3921k == null) {
                    return true;
                }
                if (!this.f3908V) {
                    this.f3921k.f2807k = m3938a(this.f3921k.f2807k, true);
                }
                m3893I();
                this.f4082C.mo1994a(m3937z() ? false : true);
                return true;
            case R.id.settings /* 2131296343 */:
                C1094a.m3781a(this.f4082C, new Intent(this.f4082C, (Class<?>) MainPreference.class));
                return true;
            case R.id.rotate /* 2131296346 */:
                C1094a.m3785c(this.f4082C, c);
                return true;
            case R.id.edit /* 2131296361 */:
            case R.id.set_as /* 2131296362 */:
                if (this.f3923m == null || this.f3916f.getPictureType() <= 0) {
                    return true;
                }
                Bundle bundle = new Bundle();
                C0714j fullPicture = this.f3916f.getFullPicture();
                if (fullPicture != null) {
                    if (fullPicture.f2705d != 2 || fullPicture.m2851g() * fullPicture.m2852h() <= 3145728) {
                        QuickApp.f2078u.m2232b(fullPicture);
                    }
                    fullPicture.m2866m();
                }
                if (itemId == R.id.edit) {
                    this.f3923m.m4077a(c, bundle);
                    return true;
                }
                this.f3923m.m4080b(c, bundle);
                return true;
            case R.id.copy_to /* 2131296363 */:
                break;
            case R.id.show_in_map /* 2131296364 */:
                if (this.f3923m == null) {
                    return true;
                }
                this.f3923m.m4079b(c);
                return true;
            case R.id.rotate_left /* 2131296368 */:
                m3948b(-90);
                return true;
            case R.id.rotate_right /* 2131296369 */:
                m3948b(90);
                return true;
            case R.id.rotate_180 /* 2131296370 */:
                m3948b(180);
                return true;
            default:
                return super.mo3946a(menuItem);
        }
        if (this.f3921k == null) {
            return true;
        }
        HashSet hashSet = new HashSet(1);
        hashSet.add(this.f3922l);
        m3876a(hashSet, itemId == R.id.copy_to, new C1188bb(this));
        return true;
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public boolean mo3947a(MotionEvent motionEvent) {
        switch (motionEvent.getAction() & 255) {
            case 0:
                m3892H();
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
        m3892H();
        m3926o();
        if (this.f4088I) {
            this.f3916f.m4442a(0, false);
        }
        this.f3916f.m4462g();
        if (this.f3924n != null) {
            this.f3924n.m2866m();
            this.f3924n = null;
        }
        if (!this.f4088I) {
            m3954l();
        }
        if (this.f3922l != null) {
            this.f4084E.setData(this.f3922l.mo3021i());
        }
    }

    /* renamed from: b */
    protected void m3948b(int i) {
        int m2961a;
        if (this.f3922l.m3020h() == 'I') {
            String mo3022j = this.f3922l.mo3022j();
            if (mo3022j != null && (m2961a = C0742b.m2961a(mo3022j, this.f3916f.getPictureRotation() + i, true)) != -1) {
                QuickApp.f2078u.m2227a(this.f3922l.mo3021i(), false);
                QuickApp.f2076s.m2283a(mo3022j, m2961a);
                QuickApp.f2075r.m2309a(mo3022j);
            }
            this.f3916f.mo2135b(i);
        }
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: b */
    public void mo3949b(Bundle bundle) {
        if (this.f3916f.getPictureType() > 1) {
            bundle.putFloatArray("matrix_values", this.f3916f.getTransValues());
        } else {
            bundle.remove("matrix_values");
        }
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: b */
    public boolean mo3950b(Menu menu) {
        boolean z = this.f3922l.m3020h() == 'I';
        m3867a(menu, R.id.edit, z);
        m3867a(menu, R.id.set_as, z);
        m3867a(menu, R.id.show_in_map, z);
        return true;
    }

    @Override // com.alensw.p038ui.p041c.C1159a
    /* renamed from: c */
    protected String mo3882c() {
        return (this.f3921k == null || !C0725a.m2920c(this.f3921k.mo3021i())) ? "Picture" : "CloudPicture";
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
                        if (m3937z()) {
                            m3906b(c0714j);
                        } else {
                            m3941a(c0714j);
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
                    m3927p();
                    break;
                }
        }
        return true;
    }

    @Override // com.alensw.p038ui.p041c.C1234cu
    /* renamed from: j */
    protected Uri[] mo3953j() {
        return new Uri[]{this.f3922l.mo3021i()};
    }

    /* renamed from: l */
    protected boolean m3954l() {
        String mo3022j = this.f3922l.mo3022j();
        int fuGetFileTime = mo3022j != null ? JniUtils.fuGetFileTime(mo3022j) : 0;
        if (this.f3896A == fuGetFileTime) {
            return false;
        }
        this.f3896A = fuGetFileTime;
        return true;
    }

    /* renamed from: m */
    protected void m3955m() {
        C0615bc c0615bc = QuickApp.f2075r;
        ContentResolver contentResolver = this.f4082C.getContentResolver();
        Uri mo3021i = this.f3922l.mo3021i();
        if (C0725a.m2920c(mo3021i)) {
            new ProgressDialogC1190bd(this, this.f4082C, m4032g(R.string.delete), 0, contentResolver, mo3021i, c0615bc).m3731c();
            return;
        }
        if (!(this.f3922l instanceof LocalFile)) {
            try {
                if (contentResolver.delete(mo3021i, null, null) > 0) {
                    c0615bc.m2309a(mo3021i.toString());
                    m3924n();
                    return;
                }
                return;
            } catch (Throwable th) {
                return;
            }
        }
        String mo3022j = this.f3922l.mo3022j();
        if (C0742b.m3010i(mo3022j)) {
            QuickApp.f2076s.m2282a(mo3022j, this.f3922l.m3020h(), false);
            QuickApp.f2078u.m2227a(mo3021i, true);
            c0615bc.m2309a(mo3021i.toString());
            m3924n();
        }
    }
}
