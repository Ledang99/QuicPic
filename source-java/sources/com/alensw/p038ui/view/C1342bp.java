package com.alensw.p038ui.view;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.support.v4.widget.C0208k;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.alensw.p023b.p035l.C0742b;

/* renamed from: com.alensw.ui.view.bp */
/* loaded from: classes.dex */
public class C1342bp extends View {

    /* renamed from: f */
    public static final int[] f4633f = new int[0];

    /* renamed from: g */
    public static final int[] f4634g = {R.attr.state_enabled, R.attr.state_pressed};

    /* renamed from: a */
    private final Drawable.Callback f4635a;

    /* renamed from: b */
    private boolean f4636b;

    /* renamed from: c */
    private final Runnable f4637c;

    /* renamed from: d */
    private boolean f4638d;

    /* renamed from: e */
    private final GestureDetector.OnGestureListener f4639e;

    /* renamed from: h */
    protected boolean f4640h;

    /* renamed from: i */
    protected int f4641i;

    /* renamed from: j */
    protected int f4642j;

    /* renamed from: k */
    protected C1320au f4643k;

    /* renamed from: l */
    protected final int f4644l;

    /* renamed from: m */
    protected final Drawable f4645m;

    /* renamed from: n */
    protected final RippleDrawable f4646n;

    /* renamed from: o */
    protected final C1340bn f4647o;

    /* renamed from: p */
    protected final C0208k f4648p;

    /* renamed from: q */
    protected final GestureDetector f4649q;

    public C1342bp(Context context) {
        this(context, null);
    }

    @TargetApi(9)
    public C1342bp(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4635a = new C1343bq(this);
        this.f4637c = new RunnableC1344br(this);
        this.f4639e = new GestureDetectorOnGestureListenerC1345bs(this);
        this.f4644l = ViewConfiguration.getPressedStateDuration();
        this.f4645m = C0742b.m3004e(context);
        this.f4645m.setCallback(this.f4635a);
        this.f4646n = (Build.VERSION.SDK_INT < 21 || !(this.f4645m instanceof RippleDrawable)) ? null : (RippleDrawable) this.f4645m;
        this.f4649q = new GestureDetector(context, this.f4639e);
        this.f4647o = new C1340bn(context, this);
        this.f4648p = new C0208k(context);
        if (this.f4648p.m569a()) {
            try {
                this.f4643k = new C1320au(this);
            } catch (Throwable th) {
            }
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            this.f4641i = viewConfiguration.getScaledOverscrollDistance();
            this.f4642j = viewConfiguration.getScaledOverflingDistance();
        }
    }

    /* renamed from: a */
    public void m4393a(Canvas canvas, RectF rectF) {
        canvas.save(2);
        canvas.clipRect(rectF);
        this.f4645m.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        this.f4645m.draw(canvas);
        canvas.restore();
    }

    /* renamed from: a */
    public void mo4250a(MotionEvent motionEvent) {
    }

    /* renamed from: a */
    public void mo4251a(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
    }

    /* renamed from: a */
    public void m4394a(Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            postOnAnimation(runnable);
        } else {
            postDelayed(runnable, 16L);
        }
    }

    /* renamed from: a */
    public void m4395a(boolean z) {
        removeCallbacks(this.f4637c);
        if (!z) {
            postDelayed(this.f4637c, this.f4644l);
        } else if (this.f4645m.isStateful()) {
            this.f4645m.setState(f4634g);
        }
    }

    @TargetApi(9)
    /* renamed from: a */
    public boolean m4396a(int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
        boolean z2;
        boolean z3;
        int scrollRangeX = getScrollRangeX();
        int scrollRangeY = getScrollRangeY();
        if (this.f4648p.m569a()) {
            if (this.f4643k != null) {
                this.f4643k.m4356a(i, i2);
            }
            boolean overScrollBy = super.overScrollBy(i, i2, i3, i4, scrollRangeX, scrollRangeY, i5, i6, z);
            if (this.f4643k == null || !this.f4643k.m4358a()) {
                return overScrollBy;
            }
            m4398g();
            return overScrollBy;
        }
        int i7 = i3 + i;
        int i8 = i4 + i2;
        if (i7 < 0) {
            scrollRangeX = 0;
            z2 = true;
        } else if (i7 > scrollRangeX) {
            z2 = true;
        } else {
            scrollRangeX = i7;
            z2 = false;
        }
        if (i8 < 0) {
            scrollRangeY = 0;
            z3 = true;
        } else if (i8 > scrollRangeY) {
            z3 = true;
        } else {
            scrollRangeY = i8;
            z3 = false;
        }
        onOverScrolled(scrollRangeX, scrollRangeY, z2, z3);
        return z2 || z3;
    }

    /* renamed from: b */
    public void mo4259b(MotionEvent motionEvent) {
    }

    /* renamed from: b */
    public void mo4260b(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
    }

    /* renamed from: c */
    public void mo4263c(float f, float f2) {
    }

    /* renamed from: c */
    public void mo4265c(MotionEvent motionEvent) {
    }

    @Override // android.view.View
    public void computeScroll() {
        boolean z;
        int i = 0;
        if (this.f4648p.m571b()) {
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int m572c = this.f4648p.m572c();
            int m573d = this.f4648p.m573d();
            if (scrollX != m572c || scrollY != m573d) {
                m4396a(m572c - scrollX, m573d - scrollY, scrollX, scrollY, this.f4642j, this.f4642j, false);
            }
            if (this.f4643k != null) {
                this.f4643k.m4361b(m572c, m573d, scrollX, scrollY, getScrollRangeX(), getScrollRangeY());
            }
            m4398g();
            this.f4636b = false;
            return;
        }
        if (this.f4636b) {
            return;
        }
        int scrollRangeX = getScrollRangeX();
        int scrollRangeY = getScrollRangeY();
        int scrollX2 = getScrollX();
        int scrollY2 = getScrollY();
        if (scrollX2 < 0) {
            z = true;
            scrollX2 = 0;
        } else if (scrollX2 > scrollRangeX) {
            scrollX2 = scrollRangeX;
            z = true;
        } else {
            z = false;
        }
        if (scrollY2 < 0) {
            z = true;
        } else if (scrollY2 > scrollRangeY) {
            z = true;
            i = scrollRangeY;
        } else {
            i = scrollY2;
        }
        if (z) {
            scrollTo(scrollX2, i);
            this.f4636b = true;
        }
    }

    /* renamed from: d */
    public void mo4267d(MotionEvent motionEvent) {
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f4643k != null && this.f4643k.m4359a(canvas)) {
            m4398g();
        }
        if (this.f4647o.mo4338a()) {
            this.f4647o.m4387a(canvas);
        }
    }

    /* renamed from: e */
    public String mo4270e() {
        return null;
    }

    /* renamed from: f */
    public final boolean m4397f() {
        return !this.f4648p.m575f() || this.f4647o.m4472c();
    }

    /* renamed from: g */
    public void m4398g() {
        if (Build.VERSION.SDK_INT >= 16) {
            postInvalidateOnAnimation();
        } else {
            invalidate();
        }
    }

    public int getClientHeight() {
        return (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    public int getClientWidth() {
        return (getWidth() - getPaddingLeft()) - getPaddingRight();
    }

    public int getScrollMode() {
        int i = getScrollRangeX() > 0 ? 1 : 0;
        return getScrollRangeY() > 0 ? i | 2 : i;
    }

    public float getScrollPosX() {
        int scrollRangeX = getScrollRangeX();
        if (scrollRangeX > 0) {
            return getScrollX() / scrollRangeX;
        }
        return 0.0f;
    }

    public float getScrollPosY() {
        int scrollRangeY = getScrollRangeY();
        if (scrollRangeY > 0) {
            return getScrollY() / scrollRangeY;
        }
        return 0.0f;
    }

    public int getScrollRangeX() {
        return computeHorizontalScrollRange() - getClientWidth();
    }

    public int getScrollRangeY() {
        return computeVerticalScrollRange() - getClientHeight();
    }

    /* renamed from: h */
    public void m4399h() {
        if (Build.VERSION.SDK_INT >= 16) {
            postInvalidateOnAnimation();
        } else {
            postInvalidate();
        }
    }

    @Override // android.view.View
    @TargetApi(14)
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue;
        float f;
        if (Build.VERSION.SDK_INT < 14) {
            return true;
        }
        if ((motionEvent.getSource() & 2) != 0) {
            switch (motionEvent.getAction()) {
                case 8:
                    if (!isPressed()) {
                        if ((motionEvent.getMetaState() & 1) != 0) {
                            axisValue = motionEvent.getAxisValue(9);
                            f = 0.0f;
                        } else {
                            axisValue = motionEvent.getAxisValue(10);
                            f = -motionEvent.getAxisValue(9);
                        }
                        if (axisValue != 0.0f || f != 0.0f) {
                            mo4263c(axisValue, f);
                            return true;
                        }
                    }
                    break;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        int scrollRangeX = getScrollRangeX();
        int scrollRangeY = getScrollRangeY();
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        super.scrollTo(i, i2);
        if (this.f4643k != null) {
            this.f4643k.m4357a(i, i2, scrollX, scrollY, scrollRangeX, scrollRangeY);
        }
        if (this.f4648p.m575f()) {
            return;
        }
        if (z || z2) {
            this.f4648p.m570a(i, i2, 0, scrollRangeX, 0, scrollRangeY);
        }
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        if (i == i3 && i2 == i4) {
            return;
        }
        this.f4647o.m4389c(this.f4640h);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        if (i <= 0 || i2 <= 0) {
            return;
        }
        this.f4647o.m4389c(this.f4640h);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f4647o.m4469a(motionEvent)) {
            if (this.f4648p.m575f()) {
                return true;
            }
            this.f4648p.m568a(true);
            return true;
        }
        switch (motionEvent.getAction()) {
            case 0:
                this.f4638d = true;
                if (this.f4646n != null) {
                    this.f4646n.setHotspot(motionEvent.getX() + getScrollX(), motionEvent.getY() + getScrollY());
                    m4398g();
                    break;
                }
                break;
            case 1:
            case 3:
                if (this.f4638d) {
                    m4395a(true);
                    this.f4638d = false;
                }
                m4395a(false);
                if (this.f4643k != null) {
                    this.f4643k.m4360b();
                }
                if (this.f4648p.m570a(getScrollX(), getScrollY(), 0, getScrollRangeX(), 0, getScrollRangeY())) {
                    m4398g();
                    break;
                }
                break;
            case 2:
                this.f4638d = false;
                if (this.f4643k != null) {
                    this.f4643k.m4355a(motionEvent.getX(), motionEvent.getY());
                }
                if (this.f4646n != null) {
                    this.f4646n.setHotspot(motionEvent.getX() + getScrollX(), motionEvent.getY() + getScrollY());
                    m4398g();
                    break;
                }
                break;
        }
        return this.f4649q.onTouchEvent(motionEvent);
    }

    public void setFastScrollEnabled(boolean z) {
        this.f4640h = z;
    }

    public void setScrollPosX(float f) {
        int scrollRangeX = getScrollRangeX();
        if (scrollRangeX > 0) {
            scrollTo(Math.round(scrollRangeX * Math.max(0.0f, Math.min(1.0f, f))), 0);
        }
    }

    public void setScrollPosY(float f) {
        int scrollRangeY = getScrollRangeY();
        if (scrollRangeY > 0) {
            scrollTo(0, Math.round(scrollRangeY * Math.max(0.0f, Math.min(1.0f, f))));
        }
    }
}
