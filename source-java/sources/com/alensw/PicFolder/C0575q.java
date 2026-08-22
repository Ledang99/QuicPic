package com.alensw.PicFolder;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.Toast;
import com.alensw.p022a.C0613ba;
import com.alensw.p023b.p031h.C0706b;
import com.alensw.p023b.p031h.C0714j;
import com.alensw.p038ui.view.C1365j;
import com.alensw.p038ui.view.C1378w;
import com.alensw.p038ui.view.InterfaceC1380y;
import java.io.File;

@SuppressLint({"Instantiatable"})
/* renamed from: com.alensw.PicFolder.q */
/* loaded from: classes.dex */
class C0575q extends C1365j {

    /* renamed from: a */
    protected float f2208a;

    /* renamed from: am */
    private boolean f2209am;

    /* renamed from: an */
    private RectF f2210an;

    /* renamed from: ao */
    private final InterfaceC1380y f2211ao;

    /* renamed from: b */
    protected float f2212b;

    /* renamed from: c */
    protected float f2213c;

    /* renamed from: d */
    protected boolean f2214d;

    /* renamed from: e */
    protected boolean f2215e;

    /* renamed from: f */
    protected boolean f2216f;

    /* renamed from: g */
    protected boolean f2217g;

    /* renamed from: h */
    protected boolean f2218h;

    /* renamed from: i */
    protected boolean f2219i;

    /* renamed from: j */
    protected boolean f2220j;

    /* renamed from: k */
    protected boolean f2221k;

    /* renamed from: l */
    protected String f2222l;

    /* renamed from: m */
    protected Uri f2223m;

    /* renamed from: n */
    protected int f2224n;

    /* renamed from: o */
    protected int f2225o;

    /* renamed from: p */
    protected long f2226p;

    /* renamed from: q */
    protected Bitmap f2227q;

    /* renamed from: r */
    protected Bitmap.CompressFormat f2228r;

    /* renamed from: s */
    protected Handler f2229s;

    /* renamed from: t */
    protected C1378w f2230t;

    /* renamed from: u */
    protected final C0527aa f2231u;

    /* renamed from: v */
    protected final RectF f2232v;

    /* renamed from: w */
    protected final Rect f2233w;

    public C0575q(Context context) {
        this(context, null);
    }

    public C0575q(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2213c = 1.0f;
        this.f2214d = true;
        this.f2215e = true;
        this.f2231u = new C0527aa(this);
        this.f2232v = this.f4740Q;
        this.f2233w = new Rect();
        this.f2210an = new RectF();
        this.f2211ao = new C0584z(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m2108d(float f, float f2, float f3) {
        RectF rectF = this.f2232v;
        float f4 = f2 - ((f2 - rectF.left) * f);
        float f5 = f3 - ((f3 - rectF.top) * f);
        rectF.set(f4, f5, (rectF.width() * f) + f4, (rectF.height() * f) + f5);
    }

    /* renamed from: a */
    protected void m2125a() {
        RectF rectF = this.f2232v;
        RectF rectF2 = this.f4739P;
        float width = rectF2.width();
        float height = rectF2.height();
        float f = this.f4726C;
        float f2 = this.f4727D;
        float pictureWidth = getPictureWidth() / getPictureHeight();
        float f3 = this.f2212b != 0.0f ? this.f2212b : pictureWidth;
        if (pictureWidth < f3) {
            height = width / f3;
        } else {
            width = height * f3;
        }
        rectF.left = (f - width) / 2.0f;
        rectF.right = width + rectF.left;
        rectF.top = (f2 - height) / 2.0f;
        rectF.bottom = height + rectF.top;
        if (f <= 0.0f || f2 <= 0.0f) {
            return;
        }
        m2137c();
    }

    /* renamed from: a */
    protected void m2126a(float f, float f2, float f3, int i) {
        float transScale = getTransScale();
        float f4 = f - transScale;
        if (this.f4733J != null) {
            this.f4733J.mo4403c();
        }
        this.f4733J = new C0579u(this, this, this.f4735L, transScale, f4, f2, f3, f);
        this.f4733J.m4402a(i, false);
    }

    /* renamed from: a */
    protected void m2127a(int i) {
        this.f2209am = i != 0;
        this.f2229s.sendMessage(Message.obtain(this.f2229s, 1000, i, this.f2221k ? 0 : 1));
        if (getPictureType() != 2) {
            if (this.f2209am) {
                m4462g();
            } else {
                m4461f();
            }
        }
    }

    /* renamed from: a */
    protected void m2128a(RectF rectF) {
        this.f4745V.getValues(this.f4749ab);
        float m2856a = C0714j.m2856a(this.f4749ab);
        float[] transValues = getTransValues();
        double abs = Math.abs(Math.atan2(transValues[3], transValues[4]));
        double sin = Math.sin(abs);
        double cos = Math.cos(abs);
        double pictureWidth = getPictureWidth() * m2856a;
        double pictureHeight = m2856a * getPictureHeight();
        double min = Math.min((pictureHeight * pictureHeight) / ((pictureWidth * sin) + (pictureHeight * cos)), (pictureHeight * pictureWidth) / ((cos * pictureWidth) + (sin * pictureHeight)));
        double d = (min * pictureWidth) / pictureHeight;
        rectF.left = (float) (this.f4739P.centerX() - (d / 2.0d));
        rectF.right = (float) (d + rectF.left);
        rectF.top = (float) (this.f4739P.centerY() - (min / 2.0d));
        rectF.bottom = (float) (rectF.top + min);
    }

    /* renamed from: a */
    protected void m2129a(C0714j c0714j) {
        m2127a(R.string.running_wait);
        c0714j.mo2865l();
        QuickApp.f2078u.m2229a(new RunnableC0576r(this, c0714j));
    }

    /* renamed from: a */
    public void m2130a(boolean z) {
        this.f2215e = false;
        super.m4442a(0, false);
        super.m4444a(z, new RunnableC0580v(this));
    }

    /* renamed from: a */
    protected void m2131a(boolean z, int i, int i2, float f) {
        this.f2214d = z;
        if (i > 0 && i2 > 0) {
            this.f2212b = i / i2;
        } else if (f != 0.0f) {
            this.f2212b = f;
        } else {
            this.f2212b = this.f2208a;
        }
        this.f2224n = i;
        this.f2225o = i2;
        if (m4460e()) {
            this.f4742S.reset();
            m4465j();
            m2125a();
        }
    }

    /* renamed from: a */
    protected boolean m2132a(int i, int i2) {
        Bitmap m2773a = !this.f2216f ? C0706b.m2773a(this.f4726C, this.f4727D, Bitmap.Config.ARGB_8888) : null;
        this.f2227q = C0706b.m2773a(i, i2, (Bitmap.Config) null);
        if (this.f2227q == null && !this.f2216f) {
            for (int i3 = 15; i3 >= 1 && this.f2227q == null; i3--) {
                this.f2227q = C0706b.m2773a((i * i3) / 16, (i2 * i3) / 16, (Bitmap.Config) null);
            }
        }
        if (m2773a != null) {
            m2773a.recycle();
        }
        return this.f2227q != null;
    }

    /* renamed from: a */
    public boolean m2133a(Intent intent, boolean z, Handler handler, C0613ba c0613ba) {
        Context context = getContext();
        this.f2229s = handler;
        this.f2219i = z;
        this.f2230t = new C1378w(context, this.f2211ao, this.f2229s);
        Bitmap bitmap = null;
        Bundle extras = intent.getExtras();
        Uri data = intent.getData();
        if (extras != null) {
            bitmap = (Bitmap) extras.getParcelable("data");
            this.f2217g = bitmap != null || extras.getBoolean("return-data");
            if (!this.f2219i) {
                this.f2223m = (Uri) extras.getParcelable("output");
                if (this.f2223m != null) {
                    try {
                        String string = extras.getString("outputFormat");
                        if (string != null) {
                            this.f2228r = Bitmap.CompressFormat.valueOf(string.toUpperCase());
                        }
                    } catch (Throwable th) {
                    }
                }
            }
            int i = extras.getInt("aspectX");
            int i2 = extras.getInt("aspectY");
            if (i != 0 && i2 != 0) {
                this.f2208a = i / i2;
                this.f2212b = this.f2208a;
            }
            this.f2224n = extras.getInt("outputX");
            this.f2225o = extras.getInt("outputY");
            this.f2218h = !extras.getBoolean("noFaceDetection");
        }
        this.f2216f = this.f2224n > 0 && this.f2225o > 0;
        if (bitmap != null) {
            m2136b(new C0714j(bitmap, 2));
            return true;
        }
        if (data == null) {
            return false;
        }
        if (this.f2216f && !m2132a(this.f2224n, this.f2225o)) {
            Toast.makeText(context, "Create output bitmap failed: " + this.f2224n + "x" + this.f2225o, 1).show();
            return false;
        }
        String scheme = data.getScheme();
        if ("file".equals(scheme)) {
            this.f2222l = data.getPath();
            this.f2220j = c0613ba.m2275a(this.f2222l, 'I') != null;
        } else if ("content".equals(scheme)) {
            this.f2222l = QuickApp.f2076s.m2286b(data);
            this.f2220j = "media".equals(data.getAuthority());
        }
        if (this.f2222l == null) {
            return true;
        }
        this.f2226p = new File(this.f2222l).lastModified();
        return true;
    }

    /* renamed from: b */
    protected void m2134b() {
        RectF rectF = this.f2232v;
        float[] scaleRanges = getScaleRanges();
        float min = Math.min(this.f4726C / rectF.width(), this.f4727D / rectF.height()) * 0.6f;
        float transScale = getTransScale();
        float max = Math.max(Math.min(min * transScale, scaleRanges[1]), 1.0f);
        if (transScale / max < 0.9f || transScale / max > 1.11f) {
            m2126a(max, rectF.centerX(), rectF.centerY(), this.f4751ad / 2);
        } else {
            m2137c();
        }
    }

    @Override // com.alensw.p038ui.view.C1365j
    /* renamed from: b */
    public void mo2135b(int i) {
        this.f2232v.set(0.0f, 0.0f, this.f4726C, this.f4727D);
        this.f2215e = false;
        super.m4441a(i + getTransRotation(), true, this.f4726C / 2.0f, this.f4727D / 2.0f, this.f4751ad, new RunnableC0581w(this));
    }

    /* renamed from: b */
    public void m2136b(C0714j c0714j) {
        super.mo4313a(c0714j, true);
        if (c0714j == null || c0714j.f2705d <= 1) {
            return;
        }
        m4461f();
        m2125a();
        if (this.f2218h) {
            post(new RunnableC0578t(this));
        }
    }

    /* renamed from: c */
    public void m2137c() {
        float f;
        float f2 = this.f2212b;
        RectF rectF = this.f2232v;
        float width = rectF.width();
        float height = rectF.height();
        RectF rectF2 = this.f4739P;
        float min = Math.min(rectF2.width(), this.f4726C);
        float min2 = Math.min(rectF2.height(), this.f4727D);
        if (width <= min) {
            min = width;
        } else if (f2 != 0.0f) {
            height = min / f2;
        }
        if (height > min2) {
            f = f2 != 0.0f ? min2 * f2 : min;
        } else {
            min2 = height;
            f = min;
        }
        RectF clipRect = getClipRect();
        if (rectF.left < clipRect.left) {
            rectF.offset(clipRect.left - rectF.left, 0.0f);
            rectF.right = f + rectF.left;
        } else if (rectF.right > clipRect.right) {
            rectF.offset(clipRect.right - rectF.right, 0.0f);
            rectF.left = rectF.right - f;
        } else {
            rectF.inset((rectF.width() - f) / 2.0f, 0.0f);
        }
        if (rectF.top < clipRect.top) {
            rectF.offset(0.0f, clipRect.top - rectF.top);
            rectF.bottom = min2 + rectF.top;
        } else if (rectF.bottom > clipRect.bottom) {
            rectF.offset(0.0f, clipRect.bottom - rectF.bottom);
            rectF.top = rectF.bottom - min2;
        } else {
            rectF.inset((rectF.height() - min2) / 2.0f, 0.0f);
        }
        m4456c(0.0f);
    }

    /* renamed from: c */
    protected void m2138c(int i) {
        int i2 = (i + 360) % 360;
        C0714j picture = getPicture();
        if (picture != null) {
            picture.f2698b.f2702d = i2;
            picture.m2866m();
        }
        C0714j fullPicture = getFullPicture();
        if (fullPicture != null) {
            fullPicture.f2698b.f2702d = i2;
            fullPicture.m2866m();
        }
    }

    /* renamed from: d */
    protected void m2139d() {
        RectF rectF = this.f2232v;
        float max = Math.max(0.0f, -rectF.left);
        float min = Math.min(0.0f, this.f4726C - rectF.right);
        float max2 = Math.max(0.0f, -rectF.top);
        float min2 = Math.min(0.0f, this.f4727D - rectF.bottom);
        if (max == 0.0f) {
            max = min;
        }
        if (max2 == 0.0f) {
            max2 = min2;
        }
        if (max == 0.0f && max2 == 0.0f) {
            return;
        }
        m4446b(max, max2);
        m4467l();
    }

    /* renamed from: d */
    protected void m2140d(int i) {
        boolean z = i == R.id.share;
        Context context = getContext();
        ContentResolver contentResolver = context.getContentResolver();
        Matrix matrix = new Matrix(this.f4743T);
        Matrix matrix2 = new Matrix(this.f4745V);
        if (!this.f2214d || this.f2212b == 0.0f) {
            RectF rectF = new RectF();
            m2128a(rectF);
            this.f2232v.intersect(rectF);
            invalidate();
        }
        this.f2221k = true;
        m2127a(R.string.running_wait);
        QuickApp.f2078u.m2229a(new RunnableC0582x(this, new RectF(this.f2232v), matrix2, matrix, z, context, contentResolver, i));
    }

    @Override // com.alensw.p038ui.view.C1365j
    public float[] getScaleRanges() {
        float[] scaleRanges = super.getScaleRanges();
        float[] k = m4466k();
        RectF rectF = this.f2210an;
        m4450b(rectF);
        scaleRanges[0] = Math.max(this.f2232v.width() / rectF.width(), this.f2232v.height() / rectF.height()) * k[0];
        scaleRanges[1] = Math.max(k[2] * 4.0f, scaleRanges[0]);
        return scaleRanges;
    }

    @Override // com.alensw.p038ui.view.C1365j, android.view.View
    protected void onDetachedFromWindow() {
        if (this.f2227q != null) {
            this.f2227q.recycle();
            this.f2227q = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // com.alensw.p038ui.view.C1365j, android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (m4460e() && this.f2214d && this.f2215e) {
            this.f2231u.m2070a(canvas);
        }
    }

    @Override // com.alensw.p038ui.view.C1365j, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (m4460e()) {
            Intent intent = ((CropActivity) getContext()).getIntent();
            float[] floatArrayExtra = intent.getFloatArrayExtra("QuickPic.matrix_values");
            intent.removeExtra("QuickPic.matrix_values");
            if (floatArrayExtra != null) {
                setTransValues(floatArrayExtra);
            } else {
                this.f4742S.reset();
            }
            m4465j();
            m2125a();
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return !this.f2209am && this.f2230t.m4485a(motionEvent);
    }
}
