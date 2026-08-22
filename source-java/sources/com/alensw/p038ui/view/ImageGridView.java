package com.alensw.p038ui.view;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import com.alensw.p023b.p031h.C0706b;
import com.p043b.p044a.C1387b;
import com.p043b.p044a.C1397l;
import org.apache.http.conn.params.ConnManagerParams;

@SuppressLint({"Instantiatable"})
/* loaded from: classes.dex */
public class ImageGridView extends C1342bp {

    /* renamed from: a */
    public static final boolean f4352a;

    /* renamed from: A */
    private int f4353A;

    /* renamed from: B */
    private int f4354B;

    /* renamed from: C */
    private int f4355C;

    /* renamed from: D */
    private int f4356D;

    /* renamed from: E */
    private int f4357E;

    /* renamed from: F */
    private int f4358F;

    /* renamed from: G */
    private int f4359G;

    /* renamed from: H */
    private int f4360H;

    /* renamed from: I */
    private int f4361I;

    /* renamed from: J */
    private int f4362J;

    /* renamed from: K */
    private int f4363K;

    /* renamed from: L */
    private int f4364L;

    /* renamed from: M */
    private int f4365M;

    /* renamed from: N */
    private int f4366N;

    /* renamed from: O */
    private int f4367O;

    /* renamed from: P */
    private int f4368P;

    /* renamed from: Q */
    private int f4369Q;

    /* renamed from: R */
    private int f4370R;

    /* renamed from: S */
    private float f4371S;

    /* renamed from: T */
    private float f4372T;

    /* renamed from: U */
    private float f4373U;

    /* renamed from: V */
    private final float f4374V;

    /* renamed from: W */
    private final float f4375W;

    /* renamed from: aA */
    private float f4376aA;

    /* renamed from: aB */
    private float f4377aB;

    /* renamed from: aC */
    private final Runnable f4378aC;

    /* renamed from: aa */
    private final float f4379aa;

    /* renamed from: ab */
    private final float f4380ab;

    /* renamed from: ac */
    private final Runnable f4381ac;

    /* renamed from: ad */
    private final View.OnClickListener f4382ad;

    /* renamed from: ae */
    private final View.OnLongClickListener f4383ae;

    /* renamed from: af */
    private Runnable f4384af;

    /* renamed from: ag */
    private float f4385ag;

    /* renamed from: ah */
    private RectF f4386ah;

    /* renamed from: ai */
    private long f4387ai;

    /* renamed from: aj */
    private long f4388aj;

    /* renamed from: ak */
    private int f4389ak;

    /* renamed from: al */
    private int f4390al;

    /* renamed from: am */
    private float f4391am;

    /* renamed from: an */
    private final RectF f4392an;

    /* renamed from: ao */
    private final Rect f4393ao;

    /* renamed from: ap */
    private final RectF f4394ap;

    /* renamed from: aq */
    private final RectF f4395aq;

    /* renamed from: ar */
    private final Paint f4396ar;

    /* renamed from: as */
    private float f4397as;

    /* renamed from: at */
    private final Rect f4398at;

    /* renamed from: au */
    private final RectF f4399au;

    /* renamed from: av */
    private int f4400av;

    /* renamed from: aw */
    private int f4401aw;

    /* renamed from: ax */
    private int f4402ax;

    /* renamed from: ay */
    private int f4403ay;

    /* renamed from: az */
    private float f4404az;

    /* renamed from: b */
    public boolean f4405b;

    /* renamed from: c */
    public boolean f4406c;

    /* renamed from: d */
    public boolean f4407d;

    /* renamed from: e */
    public int f4408e;

    /* renamed from: r */
    private InterfaceC1309aj f4409r;

    /* renamed from: s */
    private Bitmap f4410s;

    /* renamed from: t */
    private String f4411t;

    /* renamed from: u */
    private StaticLayout f4412u;

    /* renamed from: v */
    private C1310ak[] f4413v;

    /* renamed from: w */
    private final RectF f4414w;

    /* renamed from: x */
    private final Paint f4415x;

    /* renamed from: y */
    private final TextPaint f4416y;

    /* renamed from: z */
    private int f4417z;

    static {
        f4352a = Build.VERSION.SDK_INT >= 11;
    }

    public ImageGridView(Context context) {
        this(context, null);
    }

    public ImageGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4405b = Build.VERSION.SDK_INT >= 16;
        this.f4408e = 0;
        this.f4413v = new C1310ak[8];
        this.f4414w = new RectF();
        this.f4415x = new Paint();
        this.f4416y = new TextPaint(129);
        this.f4359G = -1;
        this.f4360H = -1;
        this.f4361I = Integer.MAX_VALUE;
        this.f4362J = Integer.MIN_VALUE;
        this.f4371S = 100.0f;
        this.f4372T = 100.0f;
        this.f4381ac = new RunnableC1301ab(this);
        this.f4382ad = new ViewOnClickListenerC1302ac(this);
        this.f4383ae = new ViewOnLongClickListenerC1303ad(this);
        this.f4384af = new RunnableC1304ae(this);
        this.f4392an = new RectF();
        this.f4393ao = new Rect();
        this.f4394ap = new RectF();
        this.f4395aq = new RectF();
        this.f4396ar = new Paint(5);
        this.f4397as = 0.0f;
        this.f4398at = new Rect();
        this.f4399au = new RectF();
        this.f4400av = -1;
        this.f4401aw = -1;
        this.f4402ax = -1;
        this.f4403ay = -1;
        this.f4404az = -1.0f;
        this.f4376aA = -1.0f;
        this.f4377aB = -1.0f;
        this.f4378aC = new RunnableC1308ai(this);
        setDrawingCacheEnabled(false);
        setWillNotCacheDrawing(true);
        Resources resources = getResources();
        Resources.Theme theme = context.getTheme();
        TypedValue typedValue = new TypedValue();
        theme.resolveAttribute(R.attr.textColorPrimary, typedValue, true);
        this.f4354B = resources.getColor(typedValue.resourceId);
        theme.resolveAttribute(com.alensw.PicFolder.R.attr.colorBackground, typedValue, true);
        this.f4353A = resources.getColor(typedValue.resourceId);
        theme.resolveAttribute(com.alensw.PicFolder.R.attr.colorForeground, typedValue, true);
        this.f4417z = resources.getColor(typedValue.resourceId);
        int color = resources.getColor(com.alensw.PicFolder.R.color.material_accent_light);
        this.f4647o.m4392f(-1, color);
        this.f4374V = resources.getDisplayMetrics().density;
        this.f4365M = 2;
        int round = Math.round(this.f4374V * this.f4365M);
        this.f4367O = round;
        this.f4366N = round;
        this.f4368P = (int) (this.f4374V * 2.0f);
        float dimension = resources.getDimension(com.alensw.PicFolder.R.dimen.grid_text_size);
        this.f4375W = dimension;
        this.f4373U = dimension;
        this.f4379aa = resources.getDimension(com.alensw.PicFolder.R.dimen.grid_subtext_size);
        this.f4380ab = this.f4374V * 10.0f;
        int i = (int) (this.f4374V * 28.0f);
        this.f4410s = C0706b.m2773a(i, i, Bitmap.Config.ARGB_8888);
        if (this.f4410s != null) {
            Canvas canvas = new Canvas(this.f4410s);
            int i2 = (int) (this.f4374V * 2.0f);
            ShapeDrawable shapeDrawable = new ShapeDrawable(new OvalShape());
            shapeDrawable.getPaint().setColor(color);
            shapeDrawable.getPaint().setShadowLayer(this.f4374V, this.f4374V / 2.0f, this.f4374V / 2.0f, -1610612736);
            shapeDrawable.setBounds(i2, i2, i - i2, i - i2);
            shapeDrawable.draw(canvas);
            C1397l m4499a = C1387b.m4499a(resources, com.alensw.PicFolder.R.raw.ic_menu_done, -1, i);
            m4499a.setBounds(0, 0, i, i);
            m4499a.draw(canvas);
        }
        setOnClickListener(this.f4382ad);
        setOnLongClickListener(this.f4383ae);
    }

    /* renamed from: a */
    public static int m4218a(float f) {
        return Math.max(Math.round(f), 1);
    }

    /* renamed from: i */
    private void m4233i() {
        if (this.f4411t == null) {
            this.f4412u = null;
            return;
        }
        TextPaint textPaint = this.f4416y;
        textPaint.setTextAlign(Paint.Align.CENTER);
        textPaint.setTextSize(this.f4374V * 18.0f);
        textPaint.setColor(this.f4354B);
        this.f4412u = new StaticLayout(this.f4411t, textPaint, (getClientWidth() * 9) / 10, Layout.Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
    }

    /* renamed from: a */
    public long m4241a(float f, float f2) {
        int i;
        int i2;
        float f3;
        float f4;
        float f5 = this.f4371S + this.f4366N;
        float f6 = this.f4372T + this.f4367O;
        float scrollX = f + (getScrollX() - getPaddingLeft());
        float scrollY = f2 + (getScrollY() - getPaddingTop());
        if (this.f4406c) {
            i = (int) ((scrollX - this.f4366N) / f5);
            i2 = (int) ((scrollY - this.f4367O) / f6);
            f4 = (f5 * i) + this.f4366N;
            f3 = (f6 * i2) + this.f4367O;
        } else {
            i = (int) ((scrollY - this.f4367O) / f6);
            i2 = (int) ((scrollX - this.f4366N) / f5);
            f3 = (f6 * i) + this.f4367O;
            f4 = (f5 * i2) + this.f4366N;
        }
        if (scrollX < f4 || scrollX >= f4 + this.f4371S || scrollY < f3 || scrollY >= f3 + this.f4372T) {
            return -1L;
        }
        return i2 | (i << 32);
    }

    /* renamed from: a */
    public long m4242a(boolean z, long j, RectF rectF) {
        Animation c1306ag;
        this.f4387ai = j;
        if (j <= 0) {
            return 0L;
        }
        this.f4385ag = 0.0f;
        if (this.f4386ah != rectF) {
            this.f4386ah = new RectF(rectF);
        }
        int width = getWidth();
        int height = getHeight();
        if (width <= 0 || height <= 0) {
            return j;
        }
        this.f4388aj = System.currentTimeMillis() + j;
        float min = Math.min(rectF.width() / width, rectF.height() / height);
        float f = z ? min : 1.0f;
        float f2 = z ? 1.0f - min : min - 1.0f;
        if (z) {
            c1306ag = new C1305af(this, f, f2);
        } else {
            this.f4399au.set(0.0f, 0.0f, getWidth(), getHeight());
            c1306ag = new C1306ag(this, z, true, this.f4399au, this.f4399au, f, f2);
            this.f4647o.mo4337a(false);
        }
        c1306ag.setDuration(j);
        c1306ag.setInterpolator(new InterpolatorC1356cc());
        c1306ag.setAnimationListener(new AnimationAnimationListenerC1307ah(this, z));
        startAnimation(c1306ag);
        return j;
    }

    /* renamed from: a */
    public void m4243a(int i) {
        if (this.f4359G != -1) {
            m4268d(this.f4359G);
        }
        if (this.f4408e != 2) {
            this.f4359G = i;
        }
        if (this.f4359G != -1) {
            m4268d(this.f4359G);
        }
    }

    /* renamed from: a */
    public void m4244a(int i, int i2, boolean z) {
        if (this.f4409r != null) {
            removeCallbacks(this.f4384af);
            if (i < i2) {
                this.f4409r.mo3658a(i, i2, this.f4390al);
            }
            if (z) {
                postDelayed(this.f4384af, 300L);
            }
        }
    }

    /* renamed from: a */
    public void m4245a(int i, boolean z) {
        this.f4408e = i;
        this.f4373U = z ? this.f4375W : this.f4379aa;
        requestLayout();
    }

    /* renamed from: a */
    protected void m4246a(Canvas canvas, int i, RectF rectF) {
        RectF rectF2;
        int i2;
        int i3;
        int i4;
        int i5;
        if (this.f4386ah == null || this.f4385ag == 0.0f) {
            rectF2 = rectF;
        } else {
            float f = 1.0f - this.f4385ag;
            float centerX = rectF.centerX() - getScrollX();
            float centerY = rectF.centerY() - getScrollY();
            float centerX2 = (this.f4386ah.centerX() - centerX) * f;
            float centerY2 = (this.f4386ah.centerY() - centerY) * f;
            RectF rectF3 = this.f4395aq;
            rectF3.set(rectF);
            rectF3.offset(centerX2, centerY2);
            rectF2 = rectF3;
        }
        C1310ak m4269e = m4269e(i);
        boolean z = (m4269e.f4519b & 2) != 0;
        boolean isFocused = isFocused();
        boolean z2 = i == this.f4360H && isFocused;
        if (this.f4646n == null && z2 && !z && (this.f4408e == 2 || isFocused)) {
            m4393a(canvas, rectF2);
        }
        if (this.f4408e == 2) {
            float f2 = rectF.bottom + (this.f4367O / 2);
            this.f4416y.setColor(-1602191232);
            canvas.drawLine(rectF.left, f2, this.f4371S + rectF.left, f2, this.f4416y);
        }
        if (i != this.f4359G) {
            if (this.f4386ah == null && this.f4405b) {
                if (m4269e.f4518a == null) {
                    m4269e.f4524g = 0;
                } else {
                    i2 = m4269e.f4524g;
                    if (i2 >= 223) {
                        i4 = 255;
                    } else {
                        i3 = m4269e.f4524g;
                        i4 = i3 + 32;
                    }
                    m4269e.f4524g = i4;
                }
                Paint paint = this.f4415x;
                i5 = m4269e.f4524g;
                paint.setAlpha(i5);
            } else {
                this.f4415x.setAlpha(255);
            }
            m4248a(canvas, m4269e, rectF2, z2 && !this.f4407d, z);
        }
        if ((m4269e.f4519b & 16) != 0) {
            this.f4409r.mo3660a(i, canvas, rectF2);
        } else if (m4269e.f4520c != null) {
            m4247a(canvas, m4269e, rectF2, (m4269e.f4519b & 1) != 0);
        }
        if (this.f4646n == null || i != this.f4401aw) {
            return;
        }
        m4393a(canvas, rectF2);
    }

    /* renamed from: a */
    protected void m4247a(Canvas canvas, C1310ak c1310ak, RectF rectF, boolean z) {
        float f = this.f4374V * 4.0f;
        float f2 = this.f4374V * 2.0f;
        float f3 = this.f4408e == 2 ? this.f4373U + (this.f4374V * 2.0f) : this.f4373U;
        int i = this.f4354B;
        int i2 = (-1610612736) | (16777215 & i);
        String str = c1310ak.f4521d[0];
        TextPaint textPaint = this.f4416y;
        RectF rectF2 = this.f4394ap;
        rectF2.set(rectF);
        textPaint.setTextAlign(Paint.Align.LEFT);
        canvas.save(2);
        if (this.f4408e == 1) {
            rectF2.top = rectF2.bottom - (((str != null ? this.f4379aa + f2 : 0.0f) + f3) + (5.0f * f2));
            textPaint.setColor(this.f4417z);
            canvas.drawRect(rectF2, textPaint);
            rectF2.inset(f, 0.0f);
            canvas.clipRect(rectF2);
            rectF2.top += 2.0f * f2;
            if (str != null) {
                textPaint.setColor(i2);
                textPaint.setTextSize(this.f4379aa);
                canvas.drawText(str, rectF2.left, rectF2.top + f3 + (f2 * 2.0f) + this.f4379aa, textPaint);
            }
            textPaint.setTextSize(f3);
        } else if (this.f4408e == 2) {
            int length = c1310ak.f4521d.length;
            float height = (rectF2.height() - ((this.f4379aa * (length - 1)) + f3)) / (length + 1);
            rectF2.left += this.f4369Q + f;
            rectF2.top += height;
            rectF2.inset(f, 0.0f);
            canvas.clipRect(rectF2);
            textPaint.setColor(i2);
            if (str != null) {
                textPaint.setTextSize(f3);
                float measureText = textPaint.measureText(c1310ak.f4520c);
                textPaint.setTextSize(this.f4379aa);
                float measureText2 = textPaint.measureText(str);
                float min = Math.min(measureText + rectF2.left + f, rectF2.right - measureText2);
                textPaint.setColor(i2);
                canvas.drawText(str, min, rectF2.top + f3, textPaint);
                rectF2.right -= f + measureText2;
            } else {
                textPaint.setTextSize(this.f4379aa);
            }
            float f4 = rectF2.left;
            float f5 = this.f4379aa + rectF2.top + f3 + height;
            for (int i3 = 1; i3 < length && c1310ak.f4521d[i3] != null; i3++) {
                canvas.drawText(c1310ak.f4521d[i3], f4, f5, textPaint);
                f5 += this.f4379aa + height;
            }
            textPaint.setTextSize(f3);
        } else if (this.f4408e == 3) {
            rectF2.top = (rectF2.bottom - f3) - this.f4380ab;
            rectF2.inset(f, f2);
            canvas.clipRect(rectF2);
            textPaint.setTextSize(f3);
            float measureText3 = textPaint.measureText(c1310ak.f4520c);
            if (str != null) {
                textPaint.setTextSize(this.f4379aa);
                float measureText4 = textPaint.measureText(str);
                float f6 = ((rectF2.left + rectF2.right) - ((measureText3 + measureText4) + f)) / 2.0f;
                if (rectF2.left < f6) {
                    rectF2.left = f6;
                }
                float min2 = Math.min(measureText3 + rectF2.left + f, rectF2.right - measureText4);
                textPaint.setColor(i2);
                canvas.drawText(str, min2, rectF2.top + f3, textPaint);
                rectF2.right -= f + measureText4;
            } else {
                float f7 = ((rectF2.left + rectF2.right) - measureText3) / 2.0f;
                if (rectF2.left < f7) {
                    rectF2.left = f7;
                }
            }
            textPaint.setTextSize(f3);
        }
        canvas.restore();
        boolean z2 = rectF2.right < rectF.right;
        if (z2) {
            canvas.save(2);
            canvas.clipRect(rectF2);
        }
        textPaint.setColor(z ? i2 : i);
        canvas.drawText(c1310ak.f4520c, rectF2.left, rectF2.top + textPaint.getTextSize(), textPaint);
        if (z2) {
            canvas.restore();
        }
    }

    /* renamed from: a */
    protected void m4248a(Canvas canvas, C1310ak c1310ak, RectF rectF, boolean z, boolean z2) {
        RectF rectF2 = this.f4392an;
        rectF2.set(rectF);
        boolean z3 = c1310ak.f4518a != null;
        int alpha = this.f4415x.getAlpha();
        if ((!z3 || alpha < 255) && this.f4386ah == null && this.f4408e <= 1) {
            this.f4416y.setColor(((z3 ? ((255 - alpha) * 48) / 255 : 48) << 24) | 8421504);
            if (z) {
                rectF2.inset(this.f4368P, this.f4368P);
            }
            m4249a(rectF2, this.f4369Q, this.f4370R);
            canvas.drawRect(rectF2, this.f4416y);
        }
        if (z3) {
            int m2849e = c1310ak.f4518a.m2849e();
            int m2850f = c1310ak.f4518a.m2850f();
            if (z && this.f4408e != 2) {
                rectF2.inset(this.f4368P, this.f4368P);
            }
            m4249a(rectF2, m2849e, m2850f);
            float width = rectF2.width() - m2849e;
            float height = rectF2.height() - m2850f;
            Bitmap m2848d = c1310ak.f4518a.m2848d();
            if (m2848d != null && !f4352a && Math.abs(width) <= 2.0f && Math.abs(height) <= 2.0f) {
                canvas.drawBitmap(m2848d, rectF2.left + (width / 2.0f), rectF2.top + (height / 2.0f), this.f4415x);
            } else if (m2848d != null) {
                this.f4393ao.set(0, 0, m2849e, m2850f);
                canvas.drawBitmap(m2848d, this.f4393ao, rectF2, this.f4415x);
            } else {
                this.f4393ao.set(0, 0, m2849e, m2850f);
                c1310ak.f4518a.mo2423a(canvas, this.f4393ao, rectF2, this.f4415x);
            }
        }
        if (!z2 || this.f4410s == null) {
            return;
        }
        float f = this.f4374V * 4.0f;
        canvas.drawBitmap(this.f4410s, (rectF.right - f) - this.f4410s.getWidth(), f + rectF.top, (Paint) null);
    }

    /* renamed from: a */
    protected void m4249a(RectF rectF, int i, int i2) {
        if (this.f4408e == 2) {
            rectF.right = rectF.left + this.f4369Q;
        } else if (this.f4408e == 3) {
            rectF.bottom -= this.f4373U + this.f4380ab;
        }
        float width = rectF.width();
        float height = rectF.height();
        float min = Math.min(width / i, height / i2);
        float f = i * min;
        float f2 = min * i2;
        rectF.left = ((width - f) / 2.0f) + rectF.left;
        rectF.right = rectF.left + f;
        rectF.top += (height - f2) / 2.0f;
        rectF.bottom = rectF.top + f2;
    }

    @Override // com.alensw.p038ui.view.C1342bp
    /* renamed from: a */
    public void mo4250a(MotionEvent motionEvent) {
        int m4255b = m4255b(motionEvent.getX(), motionEvent.getY());
        this.f4401aw = m4255b;
        this.f4400av = m4255b;
    }

    @Override // com.alensw.p038ui.view.C1342bp
    /* renamed from: a */
    public void mo4251a(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (this.f4360H != -1) {
            post(this.f4381ac);
        }
    }

    /* renamed from: a */
    public void m4252a(InterfaceC1309aj interfaceC1309aj, int i, int i2) {
        this.f4409r = interfaceC1309aj;
        this.f4369Q = i;
        this.f4370R = i2;
        requestLayout();
    }

    /* renamed from: a */
    public boolean m4253a() {
        float paddingTop;
        float height;
        int i;
        int count = getCount();
        if (this.f4406c) {
            float f = this.f4371S + this.f4366N;
            int scrollX = getScrollX();
            paddingTop = ((scrollX - getPaddingLeft()) - this.f4366N) / f;
            height = ((scrollX + getWidth()) - this.f4366N) / f;
            i = this.f4356D;
        } else {
            float f2 = this.f4372T + this.f4367O;
            int scrollY = getScrollY();
            paddingTop = ((scrollY - getPaddingTop()) - this.f4367O) / f2;
            height = ((scrollY + getHeight()) - this.f4367O) / f2;
            i = this.f4355C;
        }
        int max = Math.max(((int) paddingTop) * i, 0);
        int min = Math.min(((int) Math.ceil(height)) * i, count);
        if (this.f4357E == max && this.f4358F == min) {
            return false;
        }
        this.f4357E = max;
        this.f4358F = min;
        return true;
    }

    /* renamed from: a */
    public boolean m4254a(int i, RectF rectF) {
        if (i < 0 || i >= getCount() || this.f4355C <= 0 || this.f4356D <= 0) {
            return false;
        }
        float f = this.f4371S + this.f4366N;
        float f2 = this.f4372T + this.f4367O;
        if (this.f4406c) {
            rectF.left = (f * (i / this.f4356D)) + this.f4366N;
            rectF.top = ((i % this.f4356D) * f2) + this.f4367O;
        } else {
            rectF.left = (f * (i % this.f4355C)) + this.f4366N;
            rectF.top = ((i / this.f4355C) * f2) + this.f4367O;
        }
        rectF.left += (-getScrollX()) + getPaddingLeft();
        rectF.top += (-getScrollY()) + getPaddingTop();
        rectF.right = rectF.left + this.f4371S;
        rectF.bottom = rectF.top + this.f4372T;
        return true;
    }

    /* renamed from: b */
    public int m4255b(float f, float f2) {
        long m4241a = m4241a(f, f2);
        if (m4241a == -1) {
            return -1;
        }
        int i = ((this.f4406c ? this.f4356D : this.f4355C) * ((int) ((m4241a >> 32) & 2147483647L))) + ((int) m4241a);
        if (i < 0 || i >= getCount()) {
            return -1;
        }
        return i;
    }

    /* renamed from: b */
    public int m4256b(int i, boolean z) {
        if (this.f4360H == i) {
            return this.f4360H;
        }
        removeCallbacks(this.f4381ac);
        if (this.f4360H != -1) {
            m4268d(this.f4360H);
        }
        if (i < 0 || i >= getCount()) {
            i = -1;
        }
        this.f4360H = i;
        if (this.f4360H != -1) {
            m4268d(this.f4360H);
            if (z) {
                m4264c(this.f4360H);
            }
        }
        setPressed(this.f4360H != -1);
        return this.f4360H;
    }

    /* renamed from: b */
    public void m4257b() {
        for (int i = 0; i < this.f4413v.length; i++) {
            if (this.f4413v[i] != null) {
                this.f4413v[i].m4346a();
            }
        }
        invalidate();
    }

    /* renamed from: b */
    public void m4258b(int i) {
        if (m4256b(i, true) != -1) {
            postDelayed(this.f4381ac, this.f4644l);
        }
    }

    @Override // com.alensw.p038ui.view.C1342bp
    /* renamed from: b */
    public void mo4259b(MotionEvent motionEvent) {
        int m4255b = m4255b(motionEvent.getX(), motionEvent.getY());
        this.f4401aw = m4255b;
        m4256b(m4255b, false);
    }

    @Override // com.alensw.p038ui.view.C1342bp
    /* renamed from: b */
    public void mo4260b(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (this.f4360H != -1) {
            post(this.f4381ac);
        }
    }

    /* renamed from: b */
    public boolean m4261b(int i, RectF rectF) {
        if (!m4254a(i, rectF)) {
            return false;
        }
        int i2 = this.f4369Q;
        int i3 = this.f4370R;
        C1310ak m4269e = m4269e(i);
        if (m4269e.f4518a != null) {
            i2 = m4269e.f4518a.m2851g();
            i3 = m4269e.f4518a.m2852h();
            m4269e.f4518a.m2866m();
            m4269e.f4518a = null;
        }
        m4249a(rectF, i2, i3);
        return true;
    }

    /* renamed from: c */
    public void m4262c() {
        removeCallbacks(this.f4384af);
    }

    @Override // com.alensw.p038ui.view.C1342bp
    /* renamed from: c */
    public void mo4263c(float f, float f2) {
        if (this.f4406c) {
            f *= this.f4371S;
        } else {
            f2 *= this.f4372T;
        }
        m4396a((int) f, (int) f2, getScrollX(), getScrollY(), this.f4641i, this.f4641i, false);
    }

    /* renamed from: c */
    public void m4264c(int i) {
        RectF rectF = this.f4414w;
        if (m4254a(i, rectF)) {
            if (this.f4406c) {
                int clientWidth = getClientWidth();
                int paddingLeft = getPaddingLeft();
                int i2 = clientWidth + paddingLeft;
                float width = rectF.width() + this.f4366N;
                float f = rectF.left >= ((float) i2) ? (rectF.left - i2) + width : rectF.right <= ((float) paddingLeft) ? (rectF.right - paddingLeft) - width : 0.0f;
                if (f != 0.0f) {
                    scrollBy(Math.round(f), 0);
                    return;
                }
                return;
            }
            int clientHeight = getClientHeight();
            int paddingTop = getPaddingTop();
            int i3 = clientHeight + paddingTop;
            float height = rectF.height() + this.f4367O;
            float f2 = rectF.top >= ((float) i3) ? (rectF.top - i3) + height : rectF.bottom <= ((float) paddingTop) ? (rectF.bottom - paddingTop) - height : 0.0f;
            if (f2 != 0.0f) {
                scrollBy(0, Math.round(f2));
            }
        }
    }

    @Override // com.alensw.p038ui.view.C1342bp
    /* renamed from: c */
    public void mo4265c(MotionEvent motionEvent) {
        int m4255b = m4255b(motionEvent.getX(), motionEvent.getY());
        if (m4255b != this.f4400av) {
            m4255b = -1;
        }
        m4256b(m4255b, false);
        this.f4400av = -1;
        if (this.f4360H == -1 || !isShown()) {
            return;
        }
        performClick();
    }

    @Override // android.view.View
    protected int computeHorizontalScrollRange() {
        return this.f4363K;
    }

    @Override // android.view.View
    protected int computeVerticalScrollRange() {
        return this.f4364L;
    }

    /* renamed from: d */
    protected void m4266d() {
        float clientWidth = getClientWidth();
        float clientHeight = getClientHeight();
        int count = getCount();
        int round = Math.round(this.f4374V * this.f4365M);
        this.f4367O = round;
        this.f4366N = round;
        if (this.f4406c) {
            if (this.f4408e == 2) {
                this.f4356D = m4218a((clientHeight - this.f4366N) / this.f4370R);
                this.f4371S = Math.min(this.f4374V * 400.0f, clientWidth) - this.f4366N;
                this.f4372T = (clientHeight - (this.f4367O * (this.f4356D + 1))) / this.f4356D;
            } else {
                int i = this.f4370R;
                if (this.f4408e == 3) {
                    i = (int) (i + this.f4373U + this.f4380ab);
                }
                this.f4356D = m4218a((clientHeight - this.f4367O) / (i + this.f4367O));
                if (this.f4356D > 8 && (this.f4356D & 1) == 1) {
                    this.f4356D--;
                }
                this.f4372T = (clientHeight - (this.f4367O * (this.f4356D + 1))) / this.f4356D;
                this.f4371S = ((this.f4408e == 3 ? (this.f4372T - this.f4373U) - this.f4380ab : this.f4372T) * this.f4369Q) / this.f4370R;
            }
            this.f4355C = ((this.f4356D + count) - 1) / this.f4356D;
        } else {
            if (this.f4408e == 2) {
                this.f4355C = m4218a((clientWidth - this.f4366N) / (this.f4374V * 400.0f));
                this.f4371S = ((clientWidth - (this.f4366N * (this.f4355C + 1))) / this.f4355C) - this.f4366N;
                this.f4372T = this.f4370R;
            } else {
                this.f4355C = m4218a((clientWidth - this.f4366N) / (this.f4369Q + this.f4366N));
                if (this.f4355C > 8 && (this.f4355C & 1) == 1) {
                    this.f4355C--;
                }
                this.f4371S = (clientWidth - (this.f4366N * (this.f4355C + 1))) / this.f4355C;
                this.f4372T = (this.f4371S * this.f4370R) / this.f4369Q;
                if (this.f4408e == 3) {
                    this.f4372T += this.f4373U + this.f4380ab;
                }
            }
            this.f4356D = ((this.f4355C + count) - 1) / this.f4355C;
        }
        this.f4363K = Math.round(Math.max(((this.f4371S + this.f4366N) * this.f4355C) + this.f4366N, clientWidth));
        this.f4364L = Math.round(Math.max(((this.f4372T + this.f4367O) * this.f4356D) + this.f4367O, clientHeight));
    }

    @Override // com.alensw.p038ui.view.C1342bp
    /* renamed from: d */
    public void mo4267d(MotionEvent motionEvent) {
        this.f4376aA = motionEvent.getX();
        float y = motionEvent.getY();
        this.f4404az = y;
        this.f4377aB = y;
        if (this.f4360H == -1 || !isShown()) {
            return;
        }
        performLongClick();
        if (this.f4407d && isPressed() && isShown()) {
            m4394a(this.f4378aC);
        }
    }

    /* renamed from: d */
    public boolean m4268d(int i) {
        if (i >= this.f4357E && i < this.f4358F) {
            RectF rectF = this.f4414w;
            if (m4254a(i, rectF)) {
                C1310ak c1310ak = this.f4413v[i % this.f4413v.length];
                if (c1310ak != null) {
                    c1310ak.m4346a();
                }
                rectF.offset(getScrollX(), getScrollY());
                invalidate((int) rectF.left, (int) rectF.top, Math.round(rectF.right), Math.round(rectF.bottom));
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    protected C1310ak m4269e(int i) {
        int i2;
        C1310ak c1310ak = this.f4413v[i % this.f4413v.length];
        if (c1310ak == null) {
            C1310ak[] c1310akArr = this.f4413v;
            int length = i % this.f4413v.length;
            c1310ak = new C1310ak(this);
            c1310akArr[length] = c1310ak;
        }
        i2 = c1310ak.f4523f;
        boolean z = i2 != i;
        if (z || c1310ak.f4518a == null) {
            c1310ak.m4346a();
            c1310ak.f4523f = i;
            if (z) {
                c1310ak.f4524g = 255;
            }
            if (this.f4409r != null) {
                this.f4409r.mo3661a(i, c1310ak);
            }
        }
        return c1310ak;
    }

    @Override // com.alensw.p038ui.view.C1342bp
    /* renamed from: e */
    public String mo4270e() {
        int i = this.f4357E;
        RectF rectF = this.f4414w;
        if (m4254a(i, rectF)) {
            if (this.f4406c && rectF.right <= getPaddingLeft()) {
                i += this.f4356D;
            }
            if (!this.f4406c && rectF.bottom <= getPaddingTop()) {
                i += this.f4355C;
            }
        }
        if (this.f4409r == null || i < 0 || i >= this.f4409r.mo3656a()) {
            return null;
        }
        return this.f4409r.mo3657a(i);
    }

    public final int getCount() {
        if (this.f4409r != null) {
            return this.f4409r.mo3656a();
        }
        return 0;
    }

    public final int getFirstVisible() {
        return Math.max(this.f4357E, 0);
    }

    @Override // android.view.View
    public void getFocusedRect(Rect rect) {
        int paddingLeft = getPaddingLeft();
        int height = getHeight() / 2;
        rect.set(paddingLeft, height - 10, paddingLeft + 20, height + 10);
    }

    public final int getLastVisible() {
        return Math.min(this.f4358F, getCount());
    }

    public float getScrollPos() {
        return this.f4406c ? getScrollPosX() : getScrollPosY();
    }

    public final int getSelectedIndex() {
        return this.f4360H;
    }

    public final int getVisibleCount() {
        return this.f4358F - this.f4357E;
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        for (int i = 0; i < this.f4413v.length; i++) {
            if (this.f4413v[i] != null) {
                if (f4352a) {
                    this.f4413v[i].f4518a = null;
                }
                this.f4413v[i].m4346a();
                this.f4413v[i] = null;
            }
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = this.f4386ah != null;
        Animation animation = getAnimation();
        if (animation instanceof C1347bu) {
            RectF rectF = this.f4399au;
            rectF.set(0.0f, 0.0f, getWidth(), getHeight());
            boolean m4405a = ((C1347bu) animation).m4405a(rectF, rectF);
            if (m4405a) {
                rectF.offset(getScrollX(), getScrollY());
                canvas.save(2);
                canvas.clipRect(rectF, Region.Op.INTERSECT);
                z = m4405a;
                z2 = true;
            } else {
                z = m4405a;
                z2 = z4;
            }
        } else {
            z = false;
            z2 = z4;
        }
        int count = getCount();
        if (count != 0) {
            canvas.getClipBounds(this.f4398at);
            int paddingLeft = this.f4366N + getPaddingLeft();
            int paddingTop = this.f4367O + getPaddingTop();
            int max = Math.max(this.f4357E, 0);
            int min = Math.min(this.f4358F, count);
            int i = this.f4406c ? this.f4356D : this.f4355C;
            int i2 = max / i;
            float f = this.f4366N + this.f4371S;
            float f2 = this.f4367O + this.f4372T;
            RectF rectF2 = this.f4414w;
            if (this.f4406c) {
                rectF2.left = (i2 * f) + paddingLeft;
                rectF2.top = paddingTop;
            } else {
                rectF2.left = paddingLeft;
                rectF2.top = (i2 * f2) + paddingTop;
            }
            this.f4415x.setFilterBitmap(this.f4386ah == null && !m4397f());
            int i3 = max;
            boolean z5 = z2;
            while (i3 < min) {
                rectF2.right = rectF2.left + this.f4371S;
                rectF2.bottom = rectF2.top + this.f4372T;
                if (rectF2.intersects(r6.left, r6.top, r6.right, r6.bottom)) {
                    m4246a(canvas, i3, rectF2);
                    z3 = (this.f4415x.getAlpha() < 255) | z5;
                } else {
                    z3 = z5;
                }
                if (this.f4406c) {
                    rectF2.top += f2;
                } else {
                    rectF2.left += f;
                }
                if ((i3 + 1) % i == 0) {
                    if (this.f4406c) {
                        rectF2.top = paddingTop;
                        rectF2.left += f;
                    } else {
                        rectF2.left = paddingLeft;
                        rectF2.top += f2;
                    }
                }
                i3++;
                z5 = z3;
            }
            z2 = z5;
        } else if (this.f4411t != null && this.f4412u != null) {
            float clientWidth = getClientWidth();
            float f3 = this.f4374V * 20.0f;
            TextPaint textPaint = this.f4416y;
            textPaint.setTextAlign(Paint.Align.CENTER);
            textPaint.setTextSize(this.f4374V * 18.0f);
            textPaint.setColor(this.f4354B);
            String str = this.f4411t;
            int lineCount = this.f4412u.getLineCount();
            float paddingLeft2 = (clientWidth / 2.0f) + getPaddingLeft();
            int i4 = 0;
            int i5 = 0;
            float clientHeight = ((getClientHeight() - (lineCount * f3)) / 2.0f) + this.f4374V + getPaddingTop();
            while (i5 < lineCount) {
                int lineEnd = this.f4412u.getLineEnd(i5);
                canvas.drawText(str, i4, lineEnd, paddingLeft2, clientHeight - textPaint.descent(), (Paint) textPaint);
                i5++;
                clientHeight += f3;
                i4 = lineEnd;
            }
        }
        if (z) {
            canvas.restore();
        }
        if (z2) {
            m4398g();
        }
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        int min;
        int count = getCount();
        int i2 = this.f4406c ? this.f4356D : 1;
        int i3 = this.f4406c ? 1 : this.f4355C;
        int i4 = this.f4360H;
        if (i4 != -1) {
            switch (i) {
                case 19:
                    min = i4 - i3;
                    break;
                case ConnManagerParams.DEFAULT_MAX_TOTAL_CONNECTIONS /* 20 */:
                    min = i4 + i3;
                    break;
                case 21:
                    min = i4 - i2;
                    break;
                case 22:
                    min = i2 + i4;
                    break;
                default:
                    return super.onKeyDown(i, keyEvent);
            }
        } else {
            switch (i) {
                case 19:
                case ConnManagerParams.DEFAULT_MAX_TOTAL_CONNECTIONS /* 20 */:
                case 21:
                case 22:
                    int i5 = this.f4357E;
                    if (this.f4406c) {
                        if (m4254a(i5, this.f4414w) && this.f4414w.left < (-getPaddingLeft())) {
                            i5 += this.f4356D;
                        }
                    } else if (m4254a(i5, this.f4414w) && this.f4414w.top < (-getPaddingTop())) {
                        i5 += this.f4355C;
                    }
                    min = Math.min(count - 1, i5);
                    break;
                default:
                    return super.onKeyDown(i, keyEvent);
            }
        }
        if (min < 0 || min >= count) {
            min = -1;
        }
        m4256b(min, true);
        return min != -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0091  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float f;
        int max;
        super.onLayout(z, i, i2, i3, i4);
        int i5 = i4 - i2;
        if (i3 - i > 0 && i5 > 0) {
            int scrollRangeX = this.f4406c ? getScrollRangeX() : getScrollRangeY();
            int i6 = this.f4358F;
            float f2 = this.f4391am;
            m4266d();
            int count = getCount();
            if (this.f4389ak != 0 && this.f4389ak != count) {
                int scrollRangeX2 = this.f4406c ? getScrollRangeX() : getScrollRangeY();
                if (scrollRangeX2 > 0) {
                    f = (scrollRangeX * f2) / scrollRangeX2;
                    this.f4389ak = count;
                    setScrollPos(f);
                    if (m4253a()) {
                        this.f4390al = this.f4358F - i6;
                    }
                    max = Math.max(((((!this.f4406c ? this.f4356D : this.f4355C) + (this.f4358F - this.f4357E)) + 3) >> 2) << 2, 8);
                    if (this.f4413v.length < max) {
                        C1310ak[] c1310akArr = new C1310ak[max];
                        System.arraycopy(this.f4413v, 0, c1310akArr, 0, this.f4413v.length);
                        this.f4413v = c1310akArr;
                    }
                    m4244a(this.f4357E, this.f4358F, true);
                    this.f4647o.m4389c(this.f4640h);
                    m4257b();
                }
            }
            f = f2;
            this.f4389ak = count;
            setScrollPos(f);
            if (m4253a()) {
            }
            max = Math.max(((((!this.f4406c ? this.f4356D : this.f4355C) + (this.f4358F - this.f4357E)) + 3) >> 2) << 2, 8);
            if (this.f4413v.length < max) {
            }
            m4244a(this.f4357E, this.f4358F, true);
            this.f4647o.m4389c(this.f4640h);
            m4257b();
        }
        if (z) {
            m4233i();
        }
    }

    @Override // com.alensw.p038ui.view.C1342bp, android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        this.f4391am = getScrollPos();
        if (m4253a()) {
            this.f4390al = this.f4406c ? i - i3 : i2 - i4;
            m4244a(this.f4357E, this.f4358F, true);
        }
    }

    @Override // com.alensw.p038ui.view.C1342bp, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i <= 0 || i2 <= 0 || this.f4386ah == null || this.f4385ag != 0.0f) {
            return;
        }
        m4242a(true, this.f4387ai, this.f4386ah);
    }

    @Override // com.alensw.p038ui.view.C1342bp, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f4407d && this.f4360H != -1 && isPressed()) {
            switch (motionEvent.getAction()) {
                case 1:
                case 3:
                    this.f4402ax = -1;
                    this.f4403ay = -1;
                    this.f4404az = -1.0f;
                    this.f4376aA = -1.0f;
                    this.f4377aB = -1.0f;
                    removeCallbacks(this.f4378aC);
                    if (this.f4360H != m4255b(motionEvent.getX(), motionEvent.getY())) {
                        this.f4361I = Integer.MAX_VALUE;
                        this.f4362J = Integer.MIN_VALUE;
                    }
                    if (this.f4360H != -1) {
                        post(this.f4381ac);
                        break;
                    }
                    break;
                case 2:
                    this.f4376aA = motionEvent.getX();
                    this.f4377aB = motionEvent.getY();
                    break;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setEmptyText(String str) {
        this.f4411t = str;
        m4233i();
        if (getCount() == 0) {
            scrollTo(0, 0);
            this.f4391am = 0.0f;
            requestLayout();
        }
    }

    public void setHorizontal(boolean z) {
        if (!this.f4648p.m575f()) {
            this.f4648p.m568a(true);
        }
        if (this.f4406c != z) {
            this.f4406c = z;
            requestLayout();
        }
    }

    public void setMultiSelect(boolean z) {
        this.f4407d = z;
        m4257b();
    }

    public void setScrollPos(float f) {
        this.f4391am = f;
        if (this.f4406c) {
            setScrollPosX(f);
        } else {
            setScrollPosY(f);
        }
    }

    public void setSpaceWidth(int i) {
        this.f4365M = i;
        requestLayout();
    }

    public void setTextMode(int i) {
        m4245a(i, false);
    }
}
