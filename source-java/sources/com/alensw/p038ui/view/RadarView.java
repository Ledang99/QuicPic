package com.alensw.p038ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import com.alensw.p038ui.activity.ActivityC1109ao;

/* loaded from: classes.dex */
public class RadarView extends View {

    /* renamed from: a */
    private float f4465a;

    /* renamed from: b */
    private float f4466b;

    /* renamed from: c */
    private float f4467c;

    /* renamed from: d */
    private float f4468d;

    /* renamed from: e */
    private Shader f4469e;

    /* renamed from: f */
    private final int[] f4470f;

    /* renamed from: g */
    private final Matrix f4471g;

    /* renamed from: h */
    private final Paint f4472h;

    public RadarView(Context context) {
        this(context, null);
    }

    public RadarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4470f = new int[8];
        this.f4471g = new Matrix();
        this.f4472h = new Paint(1);
        int m3797d = ActivityC1109ao.m3797d(context);
        for (int i = 0; i < this.f4470f.length - 1; i++) {
            this.f4470f[i] = m3797d;
        }
        this.f4470f[this.f4470f.length - 1] = -1;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        this.f4471g.setRotate(this.f4468d, this.f4465a, this.f4466b);
        this.f4469e.setLocalMatrix(this.f4471g);
        canvas.drawCircle(this.f4465a, this.f4466b, this.f4467c, this.f4472h);
        this.f4468d += 3.0f;
        if (this.f4468d >= 360.0f) {
            this.f4468d = 0.0f;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            postInvalidateOnAnimation();
        } else {
            postInvalidateDelayed(16L);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        this.f4465a = i / 2.0f;
        this.f4466b = i2 / 2.0f;
        this.f4467c = Math.min(i, i2) / 2.0f;
        this.f4469e = new SweepGradient(this.f4465a, this.f4466b, this.f4470f, (float[]) null);
        this.f4472h.setShader(this.f4469e);
        invalidate();
    }
}
