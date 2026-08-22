package com.alensw.p038ui.view;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.animation.Animation;
import com.alensw.p023b.p031h.C0714j;
import org.apache.http.conn.params.ConnManagerParams;

@SuppressLint({"Instantiatable"})
/* loaded from: classes.dex */
public class PictureView extends C1365j {

    /* renamed from: a */
    private final C1378w f4460a;

    /* renamed from: b */
    private final RectF f4461b;

    /* renamed from: c */
    private boolean f4462c;

    /* renamed from: d */
    private int f4463d;

    /* renamed from: e */
    private final InterfaceC1380y f4464e;

    public PictureView(Context context) {
        this(context, null);
    }

    public PictureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4461b = new RectF();
        this.f4464e = new C1328bb(this);
        this.f4460a = new C1378w(context, this.f4464e, getHandler());
    }

    /* renamed from: b */
    private RectF m4311b() {
        Animation animation = getAnimation();
        if (animation instanceof C1347bu) {
            RectF rectF = this.f4461b;
            rectF.set(0.0f, 0.0f, this.f4726C, this.f4727D);
            rectF.intersect(this.f4739P);
            rectF.offset(0.0f, this.f4463d);
            if (((C1347bu) animation).m4405a(rectF, rectF)) {
                return rectF;
            }
        }
        return null;
    }

    /* renamed from: a */
    public void m4312a() {
        if (Build.VERSION.SDK_INT >= 16) {
            postInvalidateOnAnimation();
        } else {
            invalidate();
        }
    }

    @Override // com.alensw.p038ui.view.C1365j
    /* renamed from: a */
    public void mo4313a(C0714j c0714j, boolean z) {
        super.mo4313a(c0714j, z);
        this.f4462c = c0714j != null;
        if (this.f4462c) {
            m4311b();
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        if (this.f4462c) {
            RectF m4311b = m4311b();
            r0 = m4311b != null;
            if (r0) {
                canvas.save(2);
                canvas.clipRect(m4311b, Region.Op.INTERSECT);
            }
        }
        if (this.f4463d != 0) {
            canvas.translate(0.0f, this.f4463d);
        }
        super.draw(canvas);
        if (this.f4463d != 0) {
            canvas.translate(0.0f, -this.f4463d);
        }
        if (r0) {
            canvas.restore();
            m4312a();
        }
    }

    @Override // android.view.View
    public void getFocusedRect(Rect rect) {
        int paddingLeft = getPaddingLeft();
        int i = this.f4727D / 2;
        rect.set(paddingLeft, i - 10, paddingLeft + 20, i + 10);
    }

    @Override // android.view.View
    @TargetApi(14)
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 14) {
            return true;
        }
        if ((motionEvent.getSource() & 2) != 0) {
            switch (motionEvent.getAction()) {
                case 8:
                    float axisValue = motionEvent.getAxisValue(9);
                    if (axisValue != 0.0f) {
                        m4445a((Math.signum(axisValue) * this.f4752ae) / 2.0f);
                        return true;
                    }
                    break;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        float f = this.f4755ah * 2.0f;
        switch (i) {
            case 19:
                m4463h();
                if (this.f4739P.top < -1.0f && m4458d(0.0f, f)) {
                    return true;
                }
                break;
            case ConnManagerParams.DEFAULT_MAX_TOTAL_CONNECTIONS /* 20 */:
                m4463h();
                if (this.f4739P.bottom - this.f4727D > 1.0f && m4458d(0.0f, -f)) {
                    return true;
                }
                if (getTransScale() > 1.0f && m4457d(false) < 1.0f) {
                    return true;
                }
                break;
            case 21:
            case 22:
                m4463h();
                if (i != 21) {
                    f = -f;
                }
                if (m4458d(f, 0.0f)) {
                    return true;
                }
                break;
            case 23:
            case 66:
                if (this.f4734K != null && isShown()) {
                    this.f4734K.mo3958a(this.f4726C / 2, this.f4727D / 2);
                    break;
                }
                break;
            case 92:
            case 93:
                m4463h();
                if (i != 92) {
                    f = -f;
                }
                if (m4445a(f)) {
                    return true;
                }
                break;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.alensw.p038ui.view.C1365j, android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        m4463h();
        if (Build.VERSION.SDK_INT < 16) {
            int[] iArr = new int[2];
            getLocationOnScreen(iArr);
            this.f4463d = -iArr[1];
            i2 += iArr[1];
        }
        super.onSizeChanged(i, i2, i3, i4);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return this.f4460a.m4485a(motionEvent);
    }
}
