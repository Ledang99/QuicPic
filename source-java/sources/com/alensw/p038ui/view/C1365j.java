package com.alensw.p038ui.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.net.Uri;
import android.os.Build;
import android.support.v4.widget.C0208k;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.p023b.p031h.C0706b;
import com.alensw.p023b.p031h.C0714j;
import com.alensw.p038ui.p042d.C1294d;

/* renamed from: com.alensw.ui.view.j */
/* loaded from: classes.dex */
public class C1365j extends View {

    /* renamed from: al */
    public static final Shader f4722al;

    /* renamed from: x */
    public static final boolean f4723x;

    /* renamed from: A */
    protected int f4724A;

    /* renamed from: B */
    protected int f4725B;

    /* renamed from: C */
    protected int f4726C;

    /* renamed from: D */
    protected int f4727D;

    /* renamed from: E */
    protected int f4728E;

    /* renamed from: F */
    protected boolean f4729F;

    /* renamed from: G */
    protected boolean f4730G;

    /* renamed from: H */
    protected boolean f4731H;

    /* renamed from: I */
    protected boolean f4732I;

    /* renamed from: J */
    protected RunnableC1346bt f4733J;

    /* renamed from: K */
    protected InterfaceC1372q f4734K;

    /* renamed from: L */
    protected final Interpolator f4735L;

    /* renamed from: M */
    protected final Paint f4736M;

    /* renamed from: N */
    protected final Paint f4737N;

    /* renamed from: O */
    protected final Paint f4738O;

    /* renamed from: P */
    protected final RectF f4739P;

    /* renamed from: Q */
    protected final RectF f4740Q;

    /* renamed from: R */
    protected final Matrix f4741R;

    /* renamed from: S */
    protected final Matrix f4742S;

    /* renamed from: T */
    protected final Matrix f4743T;

    /* renamed from: U */
    protected final Matrix f4744U;

    /* renamed from: V */
    protected final Matrix f4745V;

    /* renamed from: W */
    protected final float[] f4746W;

    /* renamed from: a */
    private C0714j f4747a;

    /* renamed from: aa */
    protected final float[] f4748aa;

    /* renamed from: ab */
    protected final float[] f4749ab;

    /* renamed from: ac */
    public final int f4750ac;

    /* renamed from: ad */
    public final int f4751ad;

    /* renamed from: ae */
    protected final float f4752ae;

    /* renamed from: af */
    protected final float f4753af;

    /* renamed from: ag */
    protected final float f4754ag;

    /* renamed from: ah */
    protected final float f4755ah;

    /* renamed from: ai */
    protected final float f4756ai;

    /* renamed from: aj */
    protected final String f4757aj;

    /* renamed from: ak */
    protected final String f4758ak;

    /* renamed from: b */
    private C0714j f4759b;

    /* renamed from: c */
    private RectF f4760c;

    /* renamed from: d */
    private Bitmap f4761d;

    /* renamed from: e */
    private Canvas f4762e;

    /* renamed from: f */
    private final Matrix f4763f;

    /* renamed from: g */
    private final RectF f4764g;

    /* renamed from: h */
    private final Matrix f4765h;

    /* renamed from: i */
    private int f4766i;

    /* renamed from: j */
    private int f4767j;

    /* renamed from: k */
    private float f4768k;

    /* renamed from: l */
    private float f4769l;

    /* renamed from: m */
    private C0208k f4770m;

    /* renamed from: y */
    protected int f4771y;

    /* renamed from: z */
    protected int f4772z;

    static {
        f4723x = Build.VERSION.SDK_INT >= 11;
        f4722al = C1294d.m4211b(16);
    }

    public C1365j(Context context) {
        this(context, null);
    }

    public C1365j(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4739P = new RectF();
        this.f4740Q = new RectF();
        this.f4741R = new Matrix();
        this.f4742S = new Matrix();
        this.f4743T = new Matrix();
        this.f4744U = new Matrix();
        this.f4745V = new Matrix();
        this.f4746W = new float[3];
        this.f4748aa = new float[2];
        this.f4749ab = new float[9];
        this.f4763f = new Matrix();
        this.f4764g = new RectF();
        this.f4765h = new Matrix();
        setDrawingCacheEnabled(false);
        setWillNotCacheDrawing(true);
        Resources resources = getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f4756ai = displayMetrics.density;
        this.f4750ac = (int) (this.f4756ai * 24.0f);
        this.f4771y = resources.getColor(R.color.material_background_light);
        this.f4772z = resources.getColor(R.color.material_warning);
        this.f4736M = new Paint(6);
        this.f4737N = new Paint(6);
        this.f4738O = new Paint(1);
        this.f4738O.setTextAlign(Paint.Align.CENTER);
        this.f4738O.setTextSize(this.f4756ai * 18.0f);
        this.f4757aj = resources.getString(R.string.loading);
        this.f4758ak = resources.getString(R.string.load_failed);
        this.f4735L = new InterpolatorC1356cc();
        this.f4751ad = QuickApp.f2066i;
        this.f4752ae = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f4753af = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f4754ag = this.f4753af;
        this.f4755ah = this.f4756ai * 256.0f;
    }

    /* renamed from: a */
    private float m4427a() {
        float f;
        float f2;
        RectF rectF = this.f4739P;
        float width = rectF.width();
        float f3 = rectF.left;
        float f4 = rectF.right;
        if (width < this.f4726C) {
            float f5 = f3 - ((this.f4726C - width) / 2.0f);
            f = f5;
            f2 = this.f4726C + f5;
        } else {
            f = f3;
            f2 = f4;
        }
        if (f > 0.0f) {
            this.f4724A = -1;
            return f;
        }
        if (f2 < this.f4726C) {
            this.f4724A = 1;
            return f2 - this.f4726C;
        }
        this.f4724A = 0;
        return 0.0f;
    }

    /* renamed from: a */
    private void m4430a(Canvas canvas, C0714j c0714j, Matrix matrix, RectF rectF, boolean z) {
        Bitmap d = c0714j.m2848d();
        Canvas canvas2 = this.f4762e;
        Matrix matrix2 = this.f4763f;
        int width = d.getWidth();
        int height = d.getHeight();
        int i = c0714j.f2698b.f2702d;
        boolean z2 = (canvas2 == null || canvas2 == canvas) ? false : true;
        boolean z3 = i % 180 != 0;
        boolean i2 = c0714j.m2853i();
        boolean z4 = width > this.f4766i || height > this.f4767j;
        if (!z4 && z && width > (this.f4766i >> 1) && height > (this.f4767j >> 1)) {
            z4 = true;
        }
        if (z3 && ((!z || z4) && z2)) {
            canvas2.save(2);
            canvas2.clipRect(0, 0, this.f4727D, this.f4726C);
            if (i2 || this.f4731H) {
                canvas2.drawRect(0.0f, 0.0f, this.f4727D, this.f4726C, this.f4737N);
            }
            matrix2.set(matrix);
            matrix2.postRotate(360 - i, this.f4726C / 2.0f, this.f4727D / 2.0f);
            matrix2.postTranslate((this.f4727D - this.f4726C) / 2.0f, (this.f4726C - this.f4727D) / 2.0f);
            canvas2.drawBitmap(d, matrix2, this.f4736M);
            matrix2.reset();
            matrix2.preTranslate((-this.f4727D) / 2.0f, (-this.f4726C) / 2.0f);
            matrix2.postRotate(i);
            matrix2.postTranslate(this.f4726C / 2.0f, this.f4727D / 2.0f);
            canvas.drawBitmap(this.f4761d, matrix2, null);
            canvas2.restore();
            return;
        }
        if (!z || !z4 || !z2) {
            if (i2) {
                canvas.save(1);
                canvas.concat(matrix);
                canvas.drawRect(0.0f, 0.0f, width, height, this.f4737N);
                canvas.restore();
            }
            canvas.drawBitmap(d, matrix, this.f4736M);
            return;
        }
        canvas2.save(2);
        canvas2.clipRect(0, 0, this.f4726C, this.f4727D);
        if (i2 || this.f4731H) {
            canvas2.drawRect(rectF, this.f4737N);
        }
        canvas2.drawBitmap(d, matrix, this.f4736M);
        canvas.drawBitmap(this.f4761d, 0.0f, 0.0f, (Paint) null);
        canvas2.restore();
    }

    /* renamed from: a */
    private void m4431a(Canvas canvas, C0714j c0714j, RectF rectF) {
        if (c0714j.m2855k()) {
            this.f4738O.setColor(this.f4772z);
            canvas.drawText(this.f4758ak, rectF.centerX(), rectF.centerY() + (this.f4738O.getTextSize() / 2.0f), this.f4738O);
        } else {
            this.f4738O.setColor(813727872);
            canvas.drawRect(rectF, this.f4738O);
        }
    }

    /* renamed from: a */
    private void m4432a(Canvas canvas, C0714j c0714j, boolean z, float f) {
        c0714j.m2844a(this.f4765h, this.f4726C, this.f4727D, 1);
        this.f4765h.postTranslate(f, 0.0f);
        if (c0714j.m2855k()) {
            this.f4764g.set(f, 0.0f, this.f4726C + f, this.f4727D);
        } else {
            c0714j.m2845a(this.f4765h, this.f4764g);
        }
        canvas.save(2);
        canvas.clipRect(this.f4764g);
        if (c0714j.m2854j()) {
            m4430a(canvas, c0714j, this.f4765h, this.f4764g, z);
        } else {
            m4431a(canvas, c0714j, this.f4764g);
        }
        canvas.restore();
    }

    /* renamed from: a */
    public float m4435a(float f, float f2) {
        if (getPictureType() <= 0) {
            return 1.0f;
        }
        float[] m4466k = m4466k();
        float[] scaleRanges = getScaleRanges();
        float transScale = getTransScale();
        float f3 = transScale;
        for (int i = 0; i < 3; i++) {
            this.f4725B = (this.f4725B + 1) % 3;
            f3 = m4466k[this.f4725B];
            if (Math.abs(f3 - transScale) > 0.05f && f3 >= scaleRanges[0]) {
                break;
            }
        }
        if (f3 == transScale) {
            f3 = (4.0f * transScale) / 2.0f;
        }
        if (f3 != transScale) {
            m4448b(f3, f, f2, this.f4751ad);
        }
        return f3 / transScale;
    }

    /* renamed from: a */
    public C0714j m4436a(Bitmap.Config config) {
        RectF clipRect = getClipRect();
        Bitmap m2773a = C0706b.m2773a(Math.round(clipRect.width()), Math.round(clipRect.height()), config);
        if (m2773a == null) {
            return null;
        }
        Canvas canvas = new Canvas(m2773a);
        m2773a.eraseColor(0);
        canvas.translate(-clipRect.left, -clipRect.top);
        m4443a(canvas, false, false);
        canvas.translate(clipRect.left, clipRect.top);
        return new C0714j(m2773a, 1);
    }

    /* renamed from: a */
    public void m4437a(float f, float f2, float f3) {
        this.f4742S.postScale(f, f, f2, f3);
        m4465j();
        invalidate();
        if (this.f4732I || this.f4734K == null) {
            return;
        }
        this.f4734K.mo3959a(f, false);
    }

    /* renamed from: a */
    public void m4438a(float f, float f2, float f3, float f4, float f5, float f6, int i, Runnable runnable) {
        float f7 = f2 - f;
        float f8 = f4 - f3;
        int round = (Math.round((f4 > 0.0f ? 45 : -45) + f4) / 90) * 90;
        Matrix matrix = new Matrix(this.f4742S);
        if (f != f2) {
            this.f4742S.postScale(f2 / f, f2 / f, f5, f6);
        }
        if (f3 != f4) {
            this.f4742S.postRotate(f8, f5, f6);
        }
        m4465j();
        float centerX = this.f4739P.centerX();
        float centerY = this.f4739P.centerY();
        m4456c(0.0f);
        float centerX2 = this.f4739P.centerX() - centerX;
        float centerY2 = this.f4739P.centerY() - centerY;
        boolean z = f != f2;
        boolean z2 = f3 != f4;
        boolean z3 = (centerX2 == 0.0f && centerY2 == 0.0f) ? false : true;
        if (this.f4733J != null) {
            this.f4733J.mo4403c();
        }
        this.f4733J = new C1371p(this, this, this.f4735L, z, z2, z3, matrix, f, f7, f5, f6, f8, centerX2, centerY2, round, runnable, f2);
        this.f4733J.m4402a(i, false);
    }

    /* renamed from: a */
    public void m4439a(float f, float f2, float f3, Runnable runnable) {
        float f4 = 0.8f;
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        float abs3 = Math.abs(f3);
        float max = Math.max(abs3 > 0.0f ? ((abs / abs3) / 2.0f) * 1.25f : 0.8f, abs3 > 0.0f ? ((abs2 / abs3) / 2.0f) * 1.25f : 0.8f);
        if (max < 0.4f) {
            f4 = 0.4f;
        } else if (max <= 0.8f) {
            f4 = max;
        }
        m4440a(f, f2, (int) (1000.0f * f4), runnable);
    }

    /* renamed from: a */
    public void m4440a(float f, float f2, int i, Runnable runnable) {
        if (this.f4733J != null) {
            this.f4733J.mo4403c();
        }
        this.f4733J = new C1366k(this, this, this.f4735L, f, f2, runnable);
        this.f4733J.m4402a(i, false);
    }

    /* renamed from: a */
    public void m4441a(float f, boolean z, float f2, float f3, int i, Runnable runnable) {
        float f4;
        float f5;
        float transRotation = getTransRotation();
        int round = (Math.round((f > 0.0f ? 45 : -45) + f) / 90) * 90;
        float[] scaleRanges = getScaleRanges();
        if (round % 180 != 0) {
            float[] fArr = this.f4749ab;
            this.f4741R.getValues(fArr);
            float m2856a = C0714j.m2856a(fArr);
            if (this.f4747a != null) {
                this.f4747a.m2847c(round);
            }
            m4464i();
            this.f4741R.getValues(fArr);
            f4 = C0714j.m2856a(fArr);
            if (this.f4747a != null) {
                this.f4747a.m2847c(-round);
            }
            m4464i();
            if (m2856a > 0.0f) {
                scaleRanges[0] = (scaleRanges[0] * f4) / m2856a;
            }
            f5 = m2856a;
        } else {
            f4 = 1.0f;
            f5 = 1.0f;
        }
        float transScale = getTransScale();
        m4438a(transScale, z ? f4 / f5 : Math.max(scaleRanges[0], Math.min(scaleRanges[1], transScale)), transRotation, f, f2, f3, i, runnable);
    }

    /* renamed from: a */
    public void m4442a(int i, boolean z) {
        float[] m4466k = m4466k();
        if (i < 0 || i >= m4466k.length) {
            return;
        }
        float f = m4466k()[i];
        float transScale = getTransScale();
        this.f4725B = i;
        if (f != transScale) {
            if (z) {
                m4448b(f, this.f4726C / 2.0f, this.f4727D / 2.0f, this.f4751ad);
            } else {
                m4447b(f, this.f4726C / 2.0f, this.f4727D / 2.0f);
                m4456c(0.0f);
            }
        }
    }

    /* renamed from: a */
    protected void m4443a(Canvas canvas, boolean z, boolean z2) {
        int i = this.f4759b != null ? this.f4759b.f2705d : 0;
        if (i == 2 && this.f4759b.m2854j()) {
            m4430a(canvas, this.f4759b, this.f4745V, this.f4739P, z);
            return;
        }
        if (i > 0) {
            this.f4759b.mo2828a(canvas, this.f4745V, this.f4747a, this.f4743T, this.f4736M, z2);
            return;
        }
        if (this.f4747a != null && this.f4747a.m2854j()) {
            m4430a(canvas, this.f4747a, this.f4743T, this.f4739P, z);
        } else if (this.f4747a != null) {
            m4431a(canvas, this.f4747a, this.f4739P);
        } else {
            this.f4738O.setColor(this.f4771y);
            canvas.drawText(this.f4757aj, this.f4739P.centerX(), this.f4739P.centerY() + (this.f4738O.getTextSize() / 2.0f), this.f4738O);
        }
    }

    /* renamed from: a */
    public void mo4313a(C0714j c0714j, boolean z) {
        Uri uri = c0714j != null ? c0714j.f2707i : Uri.EMPTY;
        boolean z2 = (this.f4747a == null || c0714j == null) | z;
        if (this.f4747a != null && !this.f4747a.m2863a(uri)) {
            this.f4747a.m2866m();
            this.f4747a = null;
        }
        if (this.f4759b != null && !this.f4759b.m2863a(uri)) {
            this.f4759b.mo2829a(true);
            this.f4759b.m2866m();
            this.f4759b = null;
        }
        if (c0714j != null) {
            if (c0714j.f2705d <= 1) {
                if (this.f4747a == null || this.f4747a.f2705d < c0714j.f2705d) {
                    if (this.f4747a != null) {
                        this.f4747a.m2866m();
                    }
                    this.f4747a = c0714j.mo2865l();
                }
            } else if (c0714j.f2705d != 3) {
                if (this.f4759b != null) {
                    this.f4759b.m2866m();
                }
                this.f4759b = c0714j.mo2865l();
            } else if (this.f4747a != null && this.f4747a.m2854j()) {
                if (this.f4759b != null) {
                    this.f4759b.m2866m();
                }
                this.f4759b = c0714j.mo2865l();
            }
        }
        if (z2) {
            this.f4742S.reset();
            this.f4725B = 0;
            m4451b(true);
            return;
        }
        if (this.f4739P.isEmpty()) {
            return;
        }
        RectF rectF = this.f4739P;
        float width = rectF.width();
        float height = rectF.height();
        float f = rectF.left;
        float f2 = rectF.top;
        m4451b(false);
        boolean z3 = Math.abs(height - ((float) this.f4727D)) < Math.abs(width - ((float) this.f4726C));
        float width2 = width / rectF.width();
        float height2 = height / rectF.height();
        if (!z3) {
            height2 = width2;
        }
        m4437a(height2, rectF.centerX(), rectF.centerY());
        if (z3) {
            m4446b(0.0f, f2 - rectF.top);
        } else {
            m4446b(f - rectF.left, 0.0f);
        }
    }

    /* renamed from: a */
    public void m4444a(boolean z, Runnable runnable) {
        float f = this.f4726C / 2.0f;
        float f2 = this.f4727D / 2.0f;
        Camera camera = new Camera();
        Matrix matrix = new Matrix();
        Matrix matrix2 = new Matrix(this.f4742S);
        if (this.f4733J != null) {
            this.f4733J.mo4403c();
        }
        this.f4733J = new C1370o(this, this, this.f4735L, camera, z, matrix, f, f2, matrix2, runnable);
        this.f4733J.m4402a(this.f4751ad, false);
    }

    /* renamed from: a */
    public boolean m4445a(float f) {
        float m4427a = m4427a();
        float abs = Math.abs(m4427a);
        if (abs > this.f4750ac && ((int) Math.signum(m4427a)) != ((int) Math.signum(f))) {
            return false;
        }
        int i = -(f > 0.0f ? 1 : f < 0.0f ? -1 : 0);
        if (this.f4734K == null || !this.f4734K.mo3960a(i)) {
            this.f4724A = 0;
            m4456c(f);
            return true;
        }
        if (this.f4759b != null) {
            this.f4759b.mo2829a(true);
        }
        C0714j mo3957a = this.f4734K.mo3957a(i, true);
        if (mo3957a != null) {
            mo3957a.m2866m();
        }
        this.f4730G = true;
        this.f4724A = i;
        m4439a(f < 0.0f ? (abs - this.f4726C) - this.f4750ac : (this.f4726C - abs) + this.f4750ac, 0.0f, f, new RunnableC1367l(this, i));
        return true;
    }

    /* renamed from: b */
    public void m4446b(float f, float f2) {
        this.f4742S.postTranslate(f, f2);
        m4465j();
        invalidate();
    }

    /* renamed from: b */
    public void m4447b(float f, float f2, float f3) {
        m4437a(f / getTransScale(), f2, f3);
    }

    /* renamed from: b */
    public void m4448b(float f, float f2, float f3, int i) {
        if (i <= this.f4751ad) {
            float transRotation = getTransRotation();
            m4438a(getTransScale(), f, transRotation, transRotation, f2, f3, i, null);
            return;
        }
        float transScale = getTransScale();
        float f4 = f - transScale;
        if (this.f4733J != null) {
            this.f4733J.mo4403c();
        }
        this.f4733J = new C1369n(this, this, this.f4735L, transScale, f4, f2, f3, f);
        this.f4733J.m4402a(i, false);
    }

    /* renamed from: b */
    public void mo2135b(int i) {
        m4441a(i + getTransRotation(), false, this.f4726C / 2.0f, this.f4727D / 2.0f, this.f4751ad, null);
    }

    /* renamed from: b */
    public void m4449b(int i, int i2) {
        this.f4771y = i;
        this.f4737N.setColor(i2);
        invalidate();
    }

    /* renamed from: b */
    public void m4450b(RectF rectF) {
        if (this.f4759b != null) {
            this.f4759b.m2845a(this.f4744U, rectF);
        } else if (this.f4747a != null) {
            this.f4747a.m2845a(this.f4741R, rectF);
        }
    }

    /* renamed from: b */
    public void m4451b(boolean z) {
        m4464i();
        m4465j();
        if (z) {
            invalidate();
        }
    }

    /* renamed from: b */
    public boolean m4452b(float f) {
        float m4427a = m4427a();
        float max = Math.max(Math.abs(f), this.f4755ah);
        if (this.f4724A == 0 || Math.abs(m4427a) <= this.f4728E) {
            return m4456c(max);
        }
        return m4445a((this.f4724A > 0 ? -1 : 1) * max);
    }

    /* renamed from: c */
    public void m4453c(float f, float f2) {
        RectF rectF = this.f4739P;
        RectF rectF2 = this.f4740Q;
        if (((int) (rectF.height() - rectF2.height())) <= 0) {
            f2 = 0.0f;
        }
        if (this.f4734K == null && ((int) (rectF.width() - rectF2.width())) <= 0) {
            f = 0.0f;
        }
        if (f == 0.0f && f2 == 0.0f) {
            return;
        }
        m4446b(f, f2);
    }

    /* renamed from: c */
    public void m4454c(float f, float f2, float f3) {
        this.f4731H = true;
        this.f4742S.postRotate(f, f2, f3);
        m4465j();
        invalidate();
    }

    /* renamed from: c */
    public void m4455c(boolean z) {
        Canvas canvas = this.f4762e;
        if (!z || canvas == null) {
            this.f4760c = null;
            invalidate();
            return;
        }
        if (this.f4761d != null) {
            this.f4761d.eraseColor(0);
        }
        this.f4760c = getClipRect();
        canvas.save(2);
        canvas.clipRect(this.f4760c);
        m4443a(canvas, false, false);
        canvas.restore();
    }

    /* renamed from: c */
    public boolean m4456c(float f) {
        RectF rectF = this.f4740Q;
        RectF rectF2 = this.f4739P;
        float width = rectF2.width();
        float height = rectF2.height();
        float width2 = rectF.width();
        float height2 = rectF.height();
        float f2 = width <= width2 ? ((width2 - width) / 2.0f) + (rectF.left - rectF2.left) : rectF2.left > rectF.left ? rectF.left - rectF2.left : rectF2.right < rectF.right ? rectF.right - rectF2.right : 0.0f;
        float f3 = height <= height2 ? (rectF.top - rectF2.top) + ((height2 - height) / 2.0f) : rectF2.top > rectF.top ? rectF.top - rectF2.top : rectF2.bottom < rectF.bottom ? rectF.bottom - rectF2.bottom : 0.0f;
        if (Math.abs(f2) <= 0.01f && Math.abs(f3) <= 0.01f) {
            invalidate();
            return false;
        }
        if (f != 0.0f) {
            m4439a(f2, f3, Math.signum(f) * Math.min(Math.abs(f), this.f4754ag * 2.0f), (Runnable) null);
        } else {
            m4446b(f2, f3);
        }
        return true;
    }

    /* renamed from: d */
    public float m4457d(boolean z) {
        if (getPictureType() <= 0) {
            return 1.0f;
        }
        float[] scaleRanges = getScaleRanges();
        float transScale = getTransScale();
        float f = this.f4726C / 2.0f;
        float f2 = this.f4727D / 2.0f;
        float f3 = z ? 1.4142135f : 0.70710677f;
        float f4 = transScale * f3;
        if (f4 > scaleRanges[1]) {
            m4437a(f3, f, f2);
            m4459e(f, f2);
        } else if (f4 < scaleRanges[0]) {
            m4437a(f3, f, f2);
            m4459e(f, f2);
        } else if (f4 != transScale) {
            m4448b(f4, f, f2, this.f4751ad);
        }
        return f4 / transScale;
    }

    /* renamed from: d */
    public boolean m4458d(float f, float f2) {
        RectF rectF = this.f4739P;
        float width = rectF.width();
        float height = rectF.height();
        float f3 = this.f4726C;
        float f4 = this.f4727D;
        int max = (int) Math.max(width - f3, 0.0f);
        int max2 = (int) Math.max(height - f4, 0.0f);
        if (Math.ceil(rectF.left) < 0.0d || f < this.f4755ah || (max2 != 0 && Math.abs(f) <= Math.abs(f2))) {
            if (Math.floor(rectF.right) <= f3 && f <= (-this.f4755ah) && ((max2 == 0 || Math.abs(f) > Math.abs(f2)) && m4445a(f))) {
                return true;
            }
        } else if (m4445a(f)) {
            return true;
        }
        float hypot = (float) Math.hypot(f, f2);
        if (max == 0) {
            f = 0.0f;
        }
        if (max2 == 0) {
            f2 = 0.0f;
        }
        if (f == 0.0f && f2 == 0.0f) {
            return m4452b(hypot * 0.8f);
        }
        int i = -((int) (0.8f * f));
        int i2 = -((int) (0.8f * f2));
        if (this.f4733J != null) {
            this.f4733J.mo4403c();
        }
        if (this.f4770m == null) {
            this.f4770m = new C0208k(getContext());
        }
        this.f4733J = new C1368m(this, this, null, rectF, i, i2, max, max2, f3, f4);
        this.f4733J.m4402a(0L, false);
        return true;
    }

    /* renamed from: e */
    public void m4459e(float f, float f2) {
        float[] scaleRanges = getScaleRanges();
        float transScale = getTransScale();
        float max = Math.max(scaleRanges[0], Math.min(scaleRanges[1], transScale));
        if (max != transScale) {
            m4448b(max, f, f2, this.f4751ad);
        } else {
            m4467l();
        }
    }

    /* renamed from: e */
    public boolean m4460e() {
        if (this.f4759b != null) {
            return true;
        }
        return this.f4747a != null && this.f4747a.f2705d > 1;
    }

    /* renamed from: f */
    public void m4461f() {
        m4455c(false);
        if (this.f4759b != null) {
            this.f4759b.mo2862a(this.f4726C, this.f4727D, this.f4745V, this.f4739P);
            this.f4759b.mo2830a(this, this.f4737N);
            invalidate();
        }
    }

    /* renamed from: g */
    public void m4462g() {
        m4463h();
        if (this.f4759b != null) {
            if (this.f4759b.f2705d != 2) {
                m4455c(true);
                this.f4759b.mo2829a(true);
            } else if (this.f4759b.m2851g() * this.f4759b.m2852h() > 3145728) {
                m4455c(true);
                this.f4759b.m2866m();
                this.f4759b = null;
            }
        }
    }

    public RectF getClipRect() {
        RectF rectF = new RectF(0.0f, 0.0f, this.f4726C, this.f4727D);
        if (rectF.isEmpty()) {
            View rootView = getRootView();
            rectF.right = rectF.left + rootView.getWidth();
            rectF.bottom = rootView.getHeight() + rectF.top;
        }
        rectF.intersect(this.f4739P);
        return rectF;
    }

    public C0714j getFullPicture() {
        if (this.f4759b != null) {
            return this.f4759b.mo2865l();
        }
        return null;
    }

    public String getMimeType() {
        return this.f4759b != null ? this.f4759b.f2706h : this.f4747a != null ? this.f4747a.f2706h : "";
    }

    public C0714j getPicture() {
        if (this.f4747a != null) {
            return this.f4747a.mo2865l();
        }
        return null;
    }

    public long getPictureDuration() {
        if (this.f4759b != null) {
            return this.f4759b.mo2831b();
        }
        if (this.f4747a != null) {
            return this.f4747a.mo2831b();
        }
        return 0L;
    }

    public int getPictureHeight() {
        if (this.f4759b != null) {
            return this.f4759b.m2852h();
        }
        if (this.f4747a != null) {
            return this.f4747a.m2852h();
        }
        return 0;
    }

    public int getPictureRotation() {
        if (this.f4759b != null) {
            return this.f4759b.f2698b.f2702d;
        }
        if (this.f4747a != null) {
            return this.f4747a.f2698b.f2702d;
        }
        return 360;
    }

    public int getPictureType() {
        if (this.f4759b != null) {
            return this.f4759b.f2705d;
        }
        if (this.f4747a != null) {
            return this.f4747a.f2705d;
        }
        return 0;
    }

    public Uri getPictureUri() {
        return this.f4759b != null ? this.f4759b.f2707i : this.f4747a != null ? this.f4747a.f2707i : Uri.EMPTY;
    }

    public int getPictureWidth() {
        if (this.f4759b != null) {
            return this.f4759b.m2851g();
        }
        if (this.f4747a != null) {
            return this.f4747a.m2851g();
        }
        return 0;
    }

    public float[] getScaleRanges() {
        float[] m4466k = m4466k();
        this.f4748aa[0] = Math.min(m4466k[2], m4466k[0]);
        this.f4748aa[1] = Math.max(m4466k[2] * 4.0f, m4466k[0]);
        return this.f4748aa;
    }

    public float getTransRotation() {
        return C0714j.m2860b(getTransValues());
    }

    public float getTransScale() {
        return C0714j.m2856a(getTransValues());
    }

    public float[] getTransValues() {
        this.f4742S.getValues(this.f4749ab);
        return this.f4749ab;
    }

    /* renamed from: h */
    public void m4463h() {
        if (this.f4733J != null) {
            this.f4733J.mo4403c();
            this.f4733J = null;
        }
        boolean z = this.f4730G;
        this.f4729F = false;
        this.f4730G = false;
        this.f4732I = false;
        if (z) {
            invalidate();
        } else {
            m4456c(0.0f);
        }
    }

    /* renamed from: i */
    protected void m4464i() {
        float f = this.f4726C;
        float f2 = this.f4727D;
        if (this.f4747a == null || this.f4747a.m2855k()) {
            this.f4741R.reset();
        } else {
            this.f4747a.m2844a(this.f4741R, f, f2, 1);
        }
        if (this.f4759b == null) {
            this.f4744U.reset();
            return;
        }
        if (this.f4747a != null) {
            this.f4759b.f2698b.f2702d = this.f4747a.f2698b.f2702d;
            this.f4768k = this.f4759b.m2849e() / this.f4747a.m2849e();
            this.f4769l = this.f4759b.m2850f() / this.f4747a.m2850f();
        }
        this.f4759b.m2844a(this.f4744U, f, f2, 1);
    }

    /* renamed from: j */
    protected void m4465j() {
        if (this.f4759b == null) {
            this.f4743T.set(this.f4741R);
            this.f4743T.postConcat(this.f4742S);
            if (this.f4747a != null && !this.f4747a.m2855k()) {
                this.f4747a.m2845a(this.f4743T, this.f4739P);
                return;
            } else {
                this.f4739P.set(0.0f, 0.0f, this.f4726C, this.f4727D);
                this.f4743T.mapRect(this.f4739P);
                return;
            }
        }
        this.f4745V.set(this.f4744U);
        this.f4745V.postConcat(this.f4742S);
        this.f4759b.m2845a(this.f4745V, this.f4739P);
        this.f4759b.mo2862a(this.f4726C, this.f4727D, this.f4745V, this.f4739P);
        if (this.f4747a != null) {
            this.f4743T.setScale(this.f4768k, this.f4769l);
            this.f4743T.postConcat(this.f4745V);
        } else {
            this.f4743T.set(this.f4741R);
            this.f4743T.postConcat(this.f4742S);
        }
    }

    /* renamed from: k */
    public float[] m4466k() {
        float f = this.f4726C;
        float f2 = this.f4727D;
        float pictureWidth = getPictureWidth();
        float pictureHeight = getPictureHeight();
        if (pictureWidth <= 0.0f || pictureHeight <= 0.0f) {
            pictureHeight = f2;
            pictureWidth = f;
        }
        float f3 = f / pictureWidth;
        float f4 = f2 / pictureHeight;
        this.f4746W[0] = 1.0f;
        this.f4746W[1] = Math.max(f3, f4) / Math.min(f3, f4);
        this.f4746W[2] = 1.0f / Math.min(f3, f4);
        return this.f4746W;
    }

    /* renamed from: l */
    public boolean m4467l() {
        return m4456c(this.f4754ag);
    }

    /* renamed from: m */
    public boolean m4468m() {
        return !(this.f4770m == null || this.f4770m.m575f()) || this.f4730G;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        if (this.f4759b != null) {
            this.f4759b.mo2829a(true);
            this.f4759b.m2866m();
            this.f4759b = null;
        }
        if (this.f4747a != null) {
            this.f4747a.m2866m();
            this.f4747a = null;
        }
        this.f4762e = null;
        if (this.f4761d != null) {
            this.f4761d.recycle();
            this.f4761d = null;
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    @TargetApi(14)
    public void onDraw(Canvas canvas) {
        float f;
        if (this.f4733J != null) {
            this.f4733J.m4404d();
        }
        boolean z = f4723x && canvas.isHardwareAccelerated();
        if (!z) {
            this.f4766i = 1024;
            this.f4767j = 1024;
        } else if (Build.VERSION.SDK_INT >= 14) {
            this.f4766i = canvas.getMaximumBitmapWidth();
            this.f4767j = canvas.getMaximumBitmapHeight();
        } else {
            this.f4766i = 2048;
            this.f4767j = 2048;
        }
        boolean z2 = (this.f4730G || !this.f4732I) && this.f4734K != null;
        if (z2) {
            float m4427a = m4427a();
            boolean z3 = (Math.abs(m4427a) > ((float) this.f4750ac)) & z2;
            if (z3) {
                f = m4427a > 0.0f ? (m4427a - this.f4726C) - this.f4750ac : this.f4726C + m4427a + this.f4750ac;
                z2 = z3;
            } else {
                z2 = z3;
                f = 0.0f;
            }
        } else {
            f = 0.0f;
        }
        if (this.f4760c != null && canvas != this.f4762e) {
            Bitmap bitmap = this.f4761d;
            canvas.save(2);
            canvas.clipRect(this.f4760c);
            if (bitmap != null && !bitmap.isRecycled()) {
                canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            }
            canvas.restore();
            return;
        }
        boolean z4 = this.f4732I || this.f4730G;
        boolean z5 = z || !(z4 || this.f4729F);
        this.f4736M.setDither(z5);
        this.f4736M.setFilterBitmap(z5);
        canvas.save(2);
        canvas.clipRect(this.f4739P);
        m4443a(canvas, z, z4);
        canvas.restore();
        if (z2 && this.f4724A != 0 && this.f4734K.mo3960a(this.f4724A)) {
            C0714j mo3957a = (this.f4734K == null || this.f4724A == 0) ? null : this.f4734K.mo3957a(this.f4724A, false);
            if (mo3957a != null) {
                m4432a(canvas, mo3957a, z, f);
                mo3957a.m2866m();
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        m4463h();
        boolean z = (this.f4726C == i && this.f4727D == i2) ? false : true;
        this.f4726C = i;
        this.f4727D = i2;
        this.f4728E = Math.min(i, i2) / 2;
        this.f4740Q.set(0.0f, 0.0f, i, i2);
        if (i > 0 && i2 > 0) {
            int i5 = QuickApp.f2063f;
            int i6 = i5 % 8;
            if (i6 != 0) {
                i5 += 8 - i6;
            }
            if (this.f4761d != null && this.f4761d.getWidth() < i5) {
                this.f4761d.recycle();
                this.f4761d = null;
            }
            if (this.f4761d == null) {
                this.f4761d = C0706b.m2773a(i5, i5, Bitmap.Config.RGB_565);
            }
            this.f4762e = this.f4761d != null ? new Canvas(this.f4761d) : null;
        }
        if (z) {
            float width = this.f4739P.width();
            this.f4725B = 0;
            this.f4742S.reset();
            m4451b(false);
            float width2 = this.f4739P.width();
            if (width2 != width) {
                m4437a(Math.max(this.f4747a != null ? width / width2 : 1.0f, 1.0f) / getTransScale(), i / 2, i2 / 2);
                m4456c(0.0f);
            }
        }
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        invalidate();
    }

    public void setListener(InterfaceC1372q interfaceC1372q) {
        this.f4734K = interfaceC1372q;
    }

    public void setPattern(boolean z) {
        this.f4737N.setShader(z ? f4722al : null);
        invalidate();
    }

    public void setPictureUri(Uri uri) {
        if (uri == null) {
            uri = Uri.EMPTY;
        }
        if (this.f4747a != null) {
            this.f4747a.f2707i = uri;
        }
        if (this.f4759b != null) {
            this.f4759b.f2707i = uri;
        }
    }

    public void setTransValues(float[] fArr) {
        if (fArr == null || fArr.length < 9) {
            return;
        }
        this.f4742S.setValues(fArr);
        m4465j();
        invalidate();
    }
}
