package com.alensw.p038ui.view;

import android.content.Context;
import android.graphics.PointF;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import org.apache.commons.logging.impl.SimpleLog;

/* renamed from: com.alensw.ui.view.w */
/* loaded from: classes.dex */
public class C1378w {

    /* renamed from: b */
    private boolean f4847b;

    /* renamed from: c */
    private boolean f4848c;

    /* renamed from: d */
    private boolean f4849d;

    /* renamed from: e */
    private boolean f4850e;

    /* renamed from: f */
    private float f4851f;

    /* renamed from: g */
    private float f4852g;

    /* renamed from: h */
    private float f4853h;

    /* renamed from: i */
    private float f4854i;

    /* renamed from: j */
    private float f4855j;

    /* renamed from: k */
    private float f4856k;

    /* renamed from: l */
    private float f4857l;

    /* renamed from: m */
    private float f4858m;

    /* renamed from: n */
    private float f4859n;

    /* renamed from: o */
    private MotionEvent f4860o;

    /* renamed from: p */
    private MotionEvent f4861p;

    /* renamed from: q */
    private VelocityTracker f4862q;

    /* renamed from: r */
    private final int f4863r;

    /* renamed from: s */
    private final int f4864s;

    /* renamed from: t */
    private final int f4865t;

    /* renamed from: u */
    private final float f4866u;

    /* renamed from: v */
    private final float f4867v;

    /* renamed from: w */
    private final float f4868w;

    /* renamed from: x */
    private final float f4869x;

    /* renamed from: y */
    private final Handler f4870y;

    /* renamed from: z */
    private final InterfaceC1380y f4871z;

    /* renamed from: a */
    private int f4846a = 0;

    /* renamed from: A */
    private final PointF f4840A = new PointF();

    /* renamed from: B */
    private final PointF f4841B = new PointF();

    /* renamed from: C */
    private final PointF f4842C = new PointF();

    /* renamed from: D */
    private final PointF f4843D = new PointF();

    /* renamed from: E */
    private boolean f4844E = false;

    /* renamed from: F */
    private final Runnable f4845F = new RunnableC1379x(this);

    public C1378w(Context context, InterfaceC1380y interfaceC1380y, Handler handler) {
        this.f4871z = interfaceC1380y;
        this.f4870y = handler == null ? new Handler() : handler;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.f4867v = scaledTouchSlop;
        this.f4866u = scaledTouchSlop;
        this.f4868w = viewConfiguration.getScaledDoubleTapSlop();
        this.f4863r = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f4864s = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f4865t = ViewConfiguration.getDoubleTapTimeout();
        this.f4869x = context.getResources().getDisplayMetrics().density * 2.0f;
    }

    /* renamed from: a */
    private float m4474a(float f) {
        this.f4856k = Math.abs(f) + this.f4867v;
        if (this.f4856k <= this.f4867v || this.f4857l <= 0.0f) {
            return 1.0f;
        }
        boolean z = this.f4856k >= this.f4857l;
        float abs = Math.abs(1.0f - (this.f4856k / this.f4857l)) * this.f4855j;
        return z ? 1.0f + abs : 1.0f - abs;
    }

    /* renamed from: a */
    public static float m4475a(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f3 - f, f4 - f2);
    }

    /* renamed from: a */
    private boolean m4476a(MotionEvent motionEvent, MotionEvent motionEvent2, MotionEvent motionEvent3) {
        return this.f4849d && motionEvent3.getEventTime() - motionEvent2.getEventTime() <= ((long) this.f4865t) && m4475a(motionEvent.getX(), motionEvent.getY(), motionEvent3.getX(), motionEvent3.getY()) < this.f4868w;
    }

    /* renamed from: b */
    public static float m4479b(float f, float f2, float f3, float f4) {
        return (float) Math.toDegrees(Math.atan2(f4 - f2, f3 - f));
    }

    /* renamed from: b */
    private void m4481b(MotionEvent motionEvent) {
        this.f4851f = motionEvent.getX(0);
        this.f4852g = motionEvent.getY(0);
        this.f4853h = motionEvent.getX(1);
        this.f4854i = motionEvent.getY(1);
        this.f4842C.set((this.f4851f + this.f4853h) / 2.0f, (this.f4852g + this.f4854i) / 2.0f);
        this.f4856k = m4475a(this.f4851f, this.f4852g, this.f4853h, this.f4854i);
        this.f4858m = m4479b(this.f4851f, this.f4852g, this.f4853h, this.f4854i);
    }

    /* renamed from: c */
    private boolean m4483c(float f, float f2, float f3, float f4) {
        return (this.f4851f - f) * (this.f4853h - f3) > 0.0f && (this.f4852g - f2) * (this.f4854i - f4) > 0.0f;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0025, code lost:
    
        return true;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0254  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m4485a(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (this.f4862q == null) {
            this.f4862q = VelocityTracker.obtain();
        }
        this.f4862q.addMovement(motionEvent);
        switch (action) {
            case 0:
                boolean z = this.f4844E;
                if (this.f4844E) {
                    this.f4870y.removeCallbacks(this.f4845F);
                    this.f4844E = false;
                }
                if (!z || this.f4860o == null || this.f4861p == null || !m4476a(this.f4860o, this.f4861p, motionEvent)) {
                    this.f4870y.postDelayed(this.f4845F, this.f4865t);
                    this.f4844E = true;
                } else {
                    this.f4847b = true;
                }
                this.f4848c = true;
                this.f4849d = true;
                this.f4846a = 1;
                this.f4840A.set(x, y);
                if (this.f4860o != null) {
                    this.f4860o.recycle();
                }
                this.f4860o = MotionEvent.obtain(motionEvent);
                this.f4871z.mo2145a(this.f4840A.x, this.f4840A.y);
                break;
            case 1:
                this.f4848c = false;
                if (this.f4846a == 3) {
                    this.f4871z.mo2152f(this.f4842C.x, this.f4842C.y);
                } else if (this.f4846a == 2) {
                    VelocityTracker velocityTracker = this.f4862q;
                    velocityTracker.computeCurrentVelocity(1000, this.f4863r);
                    float xVelocity = velocityTracker.getXVelocity();
                    float yVelocity = velocityTracker.getYVelocity();
                    if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) > this.f4864s) {
                        this.f4871z.mo2151e(xVelocity, yVelocity);
                    } else {
                        this.f4871z.mo2144a();
                    }
                } else if (this.f4847b) {
                    this.f4871z.mo2149c(this.f4840A.x, this.f4840A.y);
                }
                if (this.f4861p != null) {
                    this.f4861p.recycle();
                }
                this.f4861p = MotionEvent.obtain(motionEvent);
                if (this.f4862q != null) {
                    this.f4862q.recycle();
                    this.f4862q = null;
                }
                if (action == 3) {
                    this.f4846a = 0;
                }
                this.f4848c = false;
                this.f4847b = false;
                this.f4850e = false;
                break;
            case 2:
                if (this.f4846a != 4) {
                    if (this.f4846a != 3) {
                        if (this.f4846a != 2) {
                            if (this.f4846a == 1) {
                                float f = x - this.f4840A.x;
                                float f2 = y - this.f4840A.y;
                                if (!this.f4847b) {
                                    if (Math.max(Math.abs(f), Math.abs(f2)) > this.f4866u) {
                                        this.f4846a = 2;
                                        this.f4849d = false;
                                        this.f4841B.set(x, y);
                                        break;
                                    }
                                } else {
                                    this.f4842C.set(this.f4840A);
                                    m4474a(y);
                                    if (Math.abs(f2) > this.f4867v) {
                                        this.f4846a = 3;
                                        this.f4857l = this.f4856k;
                                        this.f4855j = (float) Math.sqrt((Math.abs(this.f4840A.y) + this.f4867v) / (this.f4867v * 2.0f));
                                        break;
                                    }
                                }
                            }
                        } else {
                            this.f4871z.mo2150d(x - this.f4841B.x, y - this.f4841B.y);
                            this.f4841B.set(x, y);
                            break;
                        }
                    } else {
                        if (this.f4871z.mo2146a(m4474a(y), this.f4842C.x, this.f4842C.y)) {
                            this.f4857l = this.f4856k;
                            break;
                        }
                    }
                } else {
                    float f3 = this.f4851f;
                    float f4 = this.f4852g;
                    float f5 = this.f4853h;
                    float f6 = this.f4854i;
                    if (motionEvent.getPointerCount() > 1) {
                        m4481b(motionEvent);
                    }
                    if (m4483c(f3, f4, f5, f6)) {
                        this.f4871z.mo2150d(this.f4842C.x - this.f4843D.x, this.f4842C.y - this.f4843D.y);
                        this.f4850e = false;
                    } else {
                        float abs = Math.abs(this.f4856k - this.f4857l);
                        if (this.f4857l > 0.0f && this.f4857l != this.f4856k && this.f4871z.mo2146a(this.f4856k / this.f4857l, this.f4842C.x, this.f4842C.y)) {
                            this.f4857l = this.f4856k;
                        }
                        if (!this.f4850e) {
                            if (abs > this.f4869x) {
                                this.f4859n = this.f4858m;
                            } else if (Math.abs(this.f4858m - this.f4859n) > 3.0f) {
                                this.f4850e = true;
                                this.f4859n = this.f4858m;
                            }
                        }
                        if (this.f4850e && this.f4859n != this.f4858m && this.f4871z.mo2148b(this.f4858m - this.f4859n, this.f4842C.x, this.f4842C.y)) {
                            this.f4859n = this.f4858m;
                        }
                    }
                    this.f4843D.set(this.f4842C.x, this.f4842C.y);
                    break;
                }
                break;
            case 3:
                if (this.f4862q != null) {
                }
                if (action == 3) {
                }
                this.f4848c = false;
                this.f4847b = false;
                this.f4850e = false;
                break;
            case 5:
                if (motionEvent.getPointerCount() > 1) {
                    m4481b(motionEvent);
                }
                if (this.f4856k > this.f4867v) {
                    this.f4846a = 4;
                    this.f4843D.set(this.f4842C.x, this.f4842C.y);
                    this.f4857l = this.f4856k;
                    this.f4859n = this.f4858m;
                }
                this.f4847b = false;
                break;
            case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                if (this.f4846a == 4) {
                    this.f4871z.mo2152f(this.f4842C.x, this.f4842C.y);
                    this.f4846a = 0;
                    this.f4857l = 0.0f;
                    this.f4850e = false;
                    break;
                }
                break;
        }
    }
}
