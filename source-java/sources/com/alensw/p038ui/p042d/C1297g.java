package com.alensw.p038ui.p042d;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;

/* renamed from: com.alensw.ui.d.g */
/* loaded from: classes.dex */
public class C1297g extends C1291a {

    /* renamed from: g */
    public static final float[][] f4326g = {new float[]{36.23f, 30.41f}, new float[]{67.11f, 48.24f}, new float[]{36.23f, 66.07f}};

    /* renamed from: h */
    public static final float[][] f4327h = {new float[]{32.53f, 32.53f}, new float[]{43.91f, 32.53f}, new float[]{43.91f, 63.47f}, new float[]{32.53f, 63.47f}};

    /* renamed from: i */
    public static final float[][] f4328i = {new float[]{28.0f, 34.0f}, new float[]{51.0f, 47.0f}, new float[]{51.0f, 34.0f}, new float[]{74.0f, 48.0f}, new float[]{51.0f, 62.0f}, new float[]{51.0f, 49.0f}, new float[]{28.0f, 62.0f}};

    /* renamed from: j */
    public static final float[][] f4329j = {new float[]{28.8f, 67.2f}, new float[]{40.0f, 40.0f}, new float[]{67.2f, 28.8f}, new float[]{56.0f, 56.0f}};

    /* renamed from: l */
    public boolean f4330l = true;

    /* renamed from: m */
    private int f4331m;

    public C1297g(int i) {
        this.f4331m = i;
    }

    @Override // com.alensw.p038ui.p042d.C1291a
    /* renamed from: a */
    protected Object mo4199a(float f, float f2) {
        float min = Math.min(f, f2) / 96.0f;
        float f3 = f / 2.0f;
        float f4 = f2 / 2.0f;
        float f5 = 40.0f * min;
        Path path = this.f4315k;
        if (this.f4330l) {
            path.addCircle(f3, f4, f5, Path.Direction.CW);
            path.addCircle(f3, f4, f5 - (4.0f * min), Path.Direction.CCW);
        }
        if (this.f4331m == 0) {
            m4205a(path, f4326g, min, true);
        } else if (this.f4331m == 1) {
            float f6 = 52.09f - f4327h[0][0];
            m4205a(path, f4327h, min, true);
            for (float[] fArr : f4327h) {
                fArr[0] = fArr[0] + f6;
            }
            m4205a(path, f4327h, min, true);
            for (float[] fArr2 : f4327h) {
                fArr2[0] = fArr2[0] - f6;
            }
        } else if (this.f4331m == 2) {
            m4205a(path, f4328i, min, true);
        } else if (this.f4331m == 3) {
            for (float[] fArr3 : f4328i) {
                fArr3[0] = 96.0f - fArr3[0];
            }
            m4205a(path, f4328i, min, true);
            for (float[] fArr4 : f4328i) {
                fArr4[0] = 96.0f - fArr4[0];
            }
        } else if (this.f4331m == 4) {
            m4205a(path, f4329j, min, true);
            path.addCircle(f3, f4, 4.0f * min, Path.Direction.CCW);
        }
        this.f4305a = this.f4330l ? 0.0f : 6.0f;
        return this.f4315k;
    }

    /* renamed from: a */
    public void m4213a(int i) {
        if (this.f4331m != i) {
            this.f4331m = i;
            this.f4307c = true;
        }
    }

    @Override // com.alensw.p038ui.p042d.C1291a
    /* renamed from: a */
    protected void mo4201a(Canvas canvas, Paint paint, float f, float f2) {
        float f3 = f / 2.0f;
        float f4 = f2 / 2.0f;
        float min = (Math.min(f, f2) / 96.0f) * 40.0f;
        if (this.f4330l) {
            int color = paint.getColor();
            paint.setColor(1610612736);
            canvas.drawCircle(f3, f4, min, paint);
            paint.setColor(color);
        }
    }

    @Override // com.alensw.p038ui.p042d.C1291a, android.graphics.drawable.shapes.Shape
    protected void onResize(float f, float f2) {
        if (this.f4330l) {
            return;
        }
        super.onResize(f, f2);
    }
}
