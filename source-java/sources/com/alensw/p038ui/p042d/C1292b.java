package com.alensw.p038ui.p042d;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;

/* renamed from: com.alensw.ui.d.b */
/* loaded from: classes.dex */
public class C1292b extends C1291a {

    /* renamed from: g */
    public static final float[][] f4311g = {new float[]{8.0f, 38.0f}, new float[]{14.0f, 38.0f}, new float[]{14.0f, 26.0f}, new float[]{88.0f, 26.0f}, new float[]{88.0f, 70.0f}, new float[]{14.0f, 70.0f}, new float[]{14.0f, 58.0f}, new float[]{8.0f, 58.0f}};

    /* renamed from: h */
    protected boolean f4312h;

    /* renamed from: i */
    protected int f4313i;

    /* renamed from: j */
    protected RectF f4314j = new RectF();

    @Override // com.alensw.p038ui.p042d.C1291a
    /* renamed from: a */
    protected Object mo4199a(float f, float f2) {
        float min = Math.min(f, f2) / 96.0f;
        float f3 = 6.0f * min;
        Path path = this.f4315k;
        RectF rectF = this.f4314j;
        m4205a(path, f4311g, min, true);
        float[] fArr = f4311g[2];
        float[] fArr2 = f4311g[4];
        rectF.set(fArr[0] * min, fArr[1] * min, fArr2[0] * min, min * fArr2[1]);
        rectF.inset(f3, f3);
        path.addRect(rectF, Path.Direction.CCW);
        rectF.inset(f3 / 2.0f, f3 / 2.0f);
        return this.f4315k;
    }

    /* renamed from: a */
    public void m4204a(int i, boolean z) {
        this.f4312h = z;
        this.f4313i = i;
        this.f4307c = true;
    }

    @Override // com.alensw.p038ui.p042d.C1291a
    /* renamed from: b */
    protected void mo4203b(Canvas canvas, Paint paint, float f, float f2) {
        RectF rectF = this.f4314j;
        rectF.left = rectF.right - ((rectF.width() * this.f4313i) / 100.0f);
        int color = paint.getColor();
        if (this.f4312h) {
            paint.setColor(-1727987968);
        }
        canvas.drawRect(rectF, paint);
        paint.setColor(color);
    }
}
