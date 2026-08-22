package com.alensw.p038ui.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.PaintDrawable;
import android.os.Build;
import android.util.TypedValue;
import com.alensw.p023b.p031h.C0706b;

/* renamed from: com.alensw.ui.view.bn */
/* loaded from: classes.dex */
public class C1340bn extends C1377v {

    /* renamed from: A */
    private int f4610A;

    /* renamed from: B */
    private int f4611B;

    /* renamed from: C */
    private int f4612C;

    /* renamed from: D */
    private boolean f4613D;

    /* renamed from: E */
    private String f4614E;

    /* renamed from: k */
    private final Matrix f4615k;

    /* renamed from: l */
    private final Paint f4616l;

    /* renamed from: m */
    private final Paint f4617m;

    /* renamed from: n */
    private final Rect f4618n;

    /* renamed from: o */
    private final Rect f4619o;

    /* renamed from: p */
    private final Bitmap f4620p;

    /* renamed from: q */
    private final C1342bp f4621q;

    /* renamed from: r */
    private final PaintDrawable f4622r;

    /* renamed from: s */
    private final int f4623s;

    /* renamed from: t */
    private final int f4624t;

    /* renamed from: u */
    private final int f4625u;

    /* renamed from: v */
    private final int f4626v;

    /* renamed from: w */
    private final int f4627w;

    /* renamed from: x */
    private final int f4628x;

    /* renamed from: y */
    private int f4629y;

    /* renamed from: z */
    private int f4630z;

    public C1340bn(Context context, C1342bp c1342bp) {
        super(context, c1342bp);
        this.f4615k = new Matrix();
        this.f4616l = new Paint(5);
        this.f4617m = new Paint(5);
        this.f4618n = new Rect();
        this.f4619o = new Rect();
        this.f4610A = 0;
        this.f4614E = "";
        this.f4621q = c1342bp;
        Resources resources = context.getResources();
        float f = resources.getDisplayMetrics().density;
        this.f4623s = (int) (f * 3.0f);
        this.f4624t = (int) (24.0f * f);
        this.f4616l.setColor(-7829368);
        this.f4625u = (int) (28.0f * f);
        this.f4626v = (int) (56.0f * f);
        this.f4620p = C0706b.m2773a(this.f4625u, this.f4626v, Bitmap.Config.ARGB_8888);
        if (this.f4620p != null) {
            Paint paint = new Paint(5);
            paint.setColor(-1);
            paint.setShadowLayer(2.0f * f, f, f, -1610612736);
            Canvas canvas = new Canvas(this.f4620p);
            RectF rectF = new RectF();
            rectF.set(this.f4625u - (18.0f * f), f * 6.0f, this.f4625u - (f * 4.0f), this.f4626v - (6.0f * f));
            canvas.drawRoundRect(rectF, f * 3.0f, f * 3.0f, paint);
            paint.clearShadowLayer();
            float width = rectF.width() / 4.0f;
            float centerX = rectF.centerX();
            float centerY = rectF.centerY();
            float f2 = centerY / 3.0f;
            Path path = new Path();
            path.moveTo(centerX - width, centerY - f2);
            path.lineTo(centerX + width, centerY - f2);
            path.lineTo(centerX, (centerY - f2) - width);
            path.moveTo(centerX - width, centerY + f2);
            path.lineTo(centerX + width, centerY + f2);
            path.lineTo(centerX, centerY + f2 + width);
            paint.setColor(-12303292);
            canvas.drawPath(path, paint);
        }
        this.f4617m.setColor(-1);
        this.f4617m.setTextSize(TypedValue.applyDimension(2, 16.0f, resources.getDisplayMetrics()));
        this.f4622r = new C1341bo(this);
        this.f4622r.setCornerRadius(f * 3.0f);
        this.f4628x = (int) (8.0f * f);
        this.f4627w = (int) (180.0f * f);
        this.f4612C = Math.round(this.f4617m.getTextSize() + (this.f4628x * 2));
    }

    @Override // com.alensw.p038ui.view.C1377v, com.alensw.p038ui.view.C1299a
    /* renamed from: a */
    public void mo4336a(int i) {
        if (i == 0) {
            this.f4613D = false;
        }
        super.mo4336a(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00a1  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m4387a(Canvas canvas) {
        int i;
        int i2 = 0;
        canvas.translate(this.f4621q.getScrollX(), this.f4621q.getScrollY());
        if (this.f4835f != 0) {
            if (this.f4494b == 1) {
                if (this.f4610A == 1) {
                    i = (((this.f4495c - this.f4496d) * this.f4839j.height()) / this.f4495c) + 0;
                } else if (this.f4610A == 2) {
                    i2 = (((this.f4495c - this.f4496d) * this.f4839j.width()) / this.f4495c) + 0;
                    i = 0;
                }
                if (this.f4613D && this.f4614E.length() > 0) {
                    this.f4619o.offset(i2, i);
                    this.f4622r.setBounds(this.f4619o);
                    this.f4622r.getPaint().setAlpha(this.f4496d);
                    this.f4622r.draw(canvas);
                    this.f4617m.setAlpha(this.f4496d);
                    canvas.save(2);
                    canvas.clipRect(this.f4619o.left, this.f4619o.top, this.f4619o.right - this.f4628x, this.f4619o.bottom);
                    canvas.drawText(this.f4614E, this.f4619o.left + this.f4628x, (this.f4619o.bottom - this.f4628x) - (this.f4617m.descent() / 2.0f), this.f4617m);
                    canvas.restore();
                }
                if (this.f4620p != null) {
                    this.f4615k.postTranslate(i2 + this.f4839j.left, i + this.f4839j.top);
                    canvas.save(1);
                    canvas.concat(this.f4615k);
                    this.f4616l.setAlpha(this.f4496d);
                    canvas.drawBitmap(this.f4620p, 0.0f, 0.0f, this.f4616l);
                    canvas.restore();
                    this.f4615k.postTranslate(-r1, -r0);
                }
            }
            i = 0;
            if (this.f4613D) {
                this.f4619o.offset(i2, i);
                this.f4622r.setBounds(this.f4619o);
                this.f4622r.getPaint().setAlpha(this.f4496d);
                this.f4622r.draw(canvas);
                this.f4617m.setAlpha(this.f4496d);
                canvas.save(2);
                canvas.clipRect(this.f4619o.left, this.f4619o.top, this.f4619o.right - this.f4628x, this.f4619o.bottom);
                canvas.drawText(this.f4614E, this.f4619o.left + this.f4628x, (this.f4619o.bottom - this.f4628x) - (this.f4617m.descent() / 2.0f), this.f4617m);
                canvas.restore();
            }
            if (this.f4620p != null) {
            }
        } else {
            this.f4616l.setAlpha(this.f4496d);
            canvas.drawRect(this.f4839j.left, this.f4839j.top, this.f4839j.right, this.f4839j.bottom, this.f4616l);
        }
        canvas.translate(-r6, -r7);
    }

    @Override // com.alensw.p038ui.view.C1377v
    /* renamed from: a */
    protected boolean mo4388a(int i, int i2) {
        boolean mo4388a = super.mo4388a(i, i2);
        this.f4613D = mo4388a;
        if (this.f4613D) {
            m4390d();
        }
        return mo4388a;
    }

    @Override // com.alensw.p038ui.view.C1299a
    /* renamed from: b */
    protected void mo4339b() {
        this.f4618n.set(this.f4839j);
        this.f4618n.union(this.f4619o);
        this.f4618n.offset(this.f4493a.getScrollX(), this.f4493a.getScrollY());
        if (Build.VERSION.SDK_INT >= 16) {
            this.f4493a.postInvalidateOnAnimation(this.f4618n.left, this.f4618n.top, this.f4618n.right, this.f4618n.bottom);
        } else {
            this.f4493a.invalidate(this.f4618n);
        }
    }

    /* renamed from: c */
    public void m4389c(boolean z) {
        int clientHeight;
        int scrollRangeY;
        int i = 0;
        int scrollMode = this.f4621q.getScrollMode();
        if (this.f4610A != scrollMode) {
            this.f4610A = scrollMode;
            this.f4615k.reset();
            if (this.f4610A == 1) {
                this.f4629y = this.f4626v;
                this.f4630z = this.f4625u;
                this.f4615k.preTranslate((-this.f4625u) / 2.0f, (-this.f4626v) / 2.0f);
                this.f4615k.postRotate(90.0f);
                this.f4615k.postTranslate(this.f4629y / 2.0f, this.f4630z / 2.0f);
                this.f4615k.postScale(-1.0f, 1.0f, this.f4629y / 2.0f, this.f4630z / 2.0f);
            } else {
                this.f4629y = this.f4625u;
                this.f4630z = this.f4626v;
            }
        }
        if (this.f4610A == 1) {
            this.f4835f = 1;
            clientHeight = this.f4621q.getClientWidth();
            scrollRangeY = this.f4621q.getScrollRangeX();
        } else if (this.f4610A != 2) {
            this.f4835f = 0;
            mo4337a(false);
            return;
        } else {
            this.f4835f = 2;
            clientHeight = this.f4621q.getClientHeight();
            scrollRangeY = this.f4621q.getScrollRangeY();
        }
        if (clientHeight < 0 || scrollRangeY < clientHeight * 3) {
            this.f4835f = 0;
            z = false;
        }
        this.f4495c = z ? 255 : 128;
        if (this.f4494b != 4) {
            if (this.f4610A == 1) {
                int clientWidth = this.f4621q.getClientWidth();
                float max = Math.max(0.0f, Math.min(1.0f, this.f4621q.getScrollPosX()));
                int max2 = z ? this.f4629y : clientWidth > 0 ? (int) Math.max((clientWidth / (this.f4621q.getScrollRangeX() + clientWidth)) * clientWidth, this.f4624t) : 0;
                this.f4839j.left = ((int) ((clientWidth - max2) * max)) + this.f4621q.getPaddingLeft();
                this.f4839j.right = max2 + this.f4839j.left;
                this.f4839j.bottom = (this.f4621q.getHeight() - this.f4621q.getPaddingBottom()) - (this.f4623s / 2);
                this.f4839j.top = this.f4839j.bottom - (z ? this.f4630z : this.f4623s);
            } else if (this.f4610A == 2) {
                int clientHeight2 = this.f4621q.getClientHeight();
                float max3 = Math.max(0.0f, Math.min(1.0f, this.f4621q.getScrollPosY()));
                if (z) {
                    i = this.f4630z;
                } else if (clientHeight2 > 0) {
                    i = (int) Math.max((clientHeight2 / (this.f4621q.getScrollRangeY() + clientHeight2)) * clientHeight2, this.f4624t);
                }
                this.f4839j.top = ((int) ((clientHeight2 - i) * max3)) + this.f4621q.getPaddingTop();
                this.f4839j.bottom = i + this.f4839j.top;
                this.f4839j.right = (this.f4621q.getWidth() - this.f4621q.getPaddingRight()) - (this.f4623s / 2);
                this.f4839j.left = this.f4839j.right - (z ? this.f4629y : this.f4623s);
            }
            mo4337a(true);
            this.f4621q.removeCallbacks(this.f4497e);
            this.f4621q.postDelayed(this.f4497e, 1000L);
        }
    }

    /* renamed from: d */
    protected void m4390d() {
        if (this.f4610A == 1) {
            int i = ((this.f4839j.left + this.f4839j.right) - this.f4611B) / 2;
            int i2 = this.f4611B + i;
            int height = this.f4839j.top - this.f4839j.height();
            this.f4619o.set(i, height - this.f4612C, i2, height);
        } else if (this.f4610A == 2) {
            int width = this.f4839j.left - this.f4839j.width();
            int i3 = width - this.f4611B;
            int i4 = ((this.f4839j.top + this.f4839j.bottom) - this.f4612C) / 2;
            this.f4619o.set(i3, i4, width, this.f4612C + i4);
        }
        if (this.f4610A == 1) {
            int paddingLeft = this.f4621q.getPaddingLeft();
            int width2 = this.f4621q.getWidth() - this.f4621q.getPaddingRight();
            if (this.f4619o.left < paddingLeft) {
                this.f4619o.offset(paddingLeft - this.f4619o.left, 0);
            } else if (this.f4619o.right > width2) {
                this.f4619o.offset(width2 - this.f4619o.right, 0);
            }
        }
    }

    @Override // com.alensw.p038ui.view.C1377v
    /* renamed from: e */
    protected void mo4391e(int i, int i2) {
        char charAt;
        float f = i / i2;
        if (this.f4610A == 1) {
            this.f4621q.setScrollPosX(f);
        } else if (this.f4610A == 2) {
            this.f4621q.setScrollPosY(f);
        }
        String mo4270e = this.f4621q.mo4270e();
        if (mo4270e != null && mo4270e.length() == 1 && (charAt = mo4270e.charAt(0)) >= 'a' && charAt <= 'z') {
            mo4270e = Character.toString((char) (charAt - ' '));
        }
        if (!this.f4614E.equals(mo4270e)) {
            if (mo4270e == null) {
                mo4270e = "";
            }
            this.f4614E = mo4270e;
            this.f4611B = Math.min(Math.round(this.f4617m.measureText(this.f4614E) + (this.f4628x * 2)), this.f4627w);
        }
        if (this.f4613D) {
            m4390d();
        }
    }

    /* renamed from: f */
    public void m4392f(int i, int i2) {
        this.f4617m.setColor(i);
        this.f4622r.getPaint().setColor(i2);
    }
}
