package com.alensw.p038ui.activity;

import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.Rect;
import com.p043b.p044a.C1397l;

/* renamed from: com.alensw.ui.activity.c */
/* loaded from: classes.dex */
final class C1134c extends C1397l {
    C1134c(Picture picture, int i, int i2) {
        super(picture, i, i2);
    }

    @Override // com.p043b.p044a.C1397l, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save(1);
        canvas.rotate(90.0f, bounds.exactCenterX(), bounds.centerY());
        super.draw(canvas);
        canvas.restore();
    }
}
