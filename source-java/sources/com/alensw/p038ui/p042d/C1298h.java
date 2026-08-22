package com.alensw.p038ui.p042d;

import android.graphics.Path;
import android.graphics.RectF;

/* renamed from: com.alensw.ui.d.h */
/* loaded from: classes.dex */
public class C1298h extends C1291a {

    /* renamed from: g */
    private boolean f4332g;

    /* renamed from: j */
    private RectF f4335j = new RectF();

    /* renamed from: h */
    private float f4333h = (float) Math.cos(0.9075711965560913d);

    /* renamed from: i */
    private float f4334i = (float) Math.sin(0.9075711965560913d);

    public C1298h(boolean z) {
        this.f4332g = true;
        this.f4332g = z;
    }

    @Override // com.alensw.p038ui.p042d.C1291a
    /* renamed from: a */
    protected Object mo4199a(float f, float f2) {
        float min = Math.min(f, f2) / 96.0f;
        float f3 = 44.0f * min;
        float f4 = 32.0f * min;
        float f5 = 16.0f * min;
        float f6 = 5.0f * min;
        float f7 = 2.0f * min;
        Path path = this.f4315k;
        RectF rectF = this.f4335j;
        path.addCircle(f3, f3, f4 - f6, Path.Direction.CCW);
        rectF.set(f3 - f4, f3 - f4, 0.0f, 0.0f);
        rectF.right = rectF.left + (2.0f * f4);
        rectF.bottom = rectF.top + (2.0f * f4);
        float f8 = (this.f4333h * f4) + f3;
        float f9 = (f4 * this.f4334i) + f3;
        float f10 = (2.0f * f6) + f8;
        float f11 = (f6 * 2.0f) + f9;
        path.moveTo(f8, f9);
        path.arcTo(rectF, 52.0f, 346.0f);
        path.lineTo(f11, f10);
        path.lineTo(f10, f11);
        path.close();
        if (this.f4332g) {
            path.moveTo(f3 - f5, f3 - f7);
            int i = 1;
            while (true) {
                int i2 = i;
                if (i2 >= 12) {
                    break;
                }
                float f12 = i2 % 6;
                float f13 = (f12 < 3.0f ? -1 : 1) * ((f12 == 0.0f || f12 == 5.0f) ? f5 : f7);
                float f14 = -((f12 == 2.0f || f12 == 3.0f) ? f5 : f7);
                int i3 = i2 < 6 ? 1 : -1;
                path.lineTo((f13 * i3) + f3, (i3 * f14) + f3);
                i = i2 + 1;
            }
            path.close();
        } else {
            rectF.set(f3 - f5, f3 - f7, 0.0f, 0.0f);
            rectF.right = (f5 * 2.0f) + rectF.left;
            rectF.bottom = (f7 * 2.0f) + rectF.top;
            path.addRect(rectF, Path.Direction.CW);
        }
        this.f4305a = 6.0f;
        return this.f4315k;
    }
}
