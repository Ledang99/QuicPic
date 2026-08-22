package com.alensw.p038ui.activity;

import android.graphics.Canvas;
import android.graphics.Picture;
import com.p043b.p044a.C1397l;

/* renamed from: com.alensw.ui.activity.n */
/* loaded from: classes.dex */
final class C1145n extends C1397l {
    C1145n(Picture picture, int i, int i2) {
        super(picture, i, i2);
    }

    @Override // com.p043b.p044a.C1397l, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.save(1);
        canvas.scale(-1.0f, 1.0f, getBounds().exactCenterX(), 0.0f);
        super.draw(canvas);
        canvas.restore();
    }
}
