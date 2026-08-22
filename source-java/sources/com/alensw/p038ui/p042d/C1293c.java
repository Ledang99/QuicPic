package com.alensw.p038ui.p042d;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.drawable.shapes.Shape;

/* renamed from: com.alensw.ui.d.c */
/* loaded from: classes.dex */
public class C1293c extends Shape {

    /* renamed from: k */
    protected final Path f4315k = new Path();

    /* renamed from: a */
    public static void m4205a(Path path, float[][] fArr, float f, boolean z) {
        path.moveTo(fArr[0][0] * f, fArr[0][1] * f);
        for (int i = 1; i < fArr.length; i++) {
            path.lineTo(fArr[i][0] * f, fArr[i][1] * f);
        }
        if (z) {
            path.close();
        }
    }

    @Override // android.graphics.drawable.shapes.Shape
    public void draw(Canvas canvas, Paint paint) {
        canvas.drawPath(this.f4315k, paint);
    }
}
