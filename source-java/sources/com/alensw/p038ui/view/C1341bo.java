package com.alensw.p038ui.view;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.PaintDrawable;

/* renamed from: com.alensw.ui.view.bo */
/* loaded from: classes.dex */
class C1341bo extends PaintDrawable {

    /* renamed from: a */
    final /* synthetic */ C1340bn f4631a;

    /* renamed from: b */
    private final Path f4632b = new Path();

    C1341bo(C1340bn c1340bn) {
        this.f4631a = c1340bn;
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int i;
        int i2;
        super.draw(canvas);
        Rect bounds = getBounds();
        float min = Math.min(bounds.width(), bounds.height()) / 6.0f;
        this.f4632b.reset();
        i = this.f4631a.f4610A;
        if (i == 1) {
            float exactCenterX = bounds.exactCenterX();
            this.f4632b.moveTo(exactCenterX - min, bounds.bottom);
            this.f4632b.lineTo(exactCenterX, bounds.bottom + min);
            this.f4632b.lineTo(min + exactCenterX, bounds.bottom);
        } else {
            i2 = this.f4631a.f4610A;
            if (i2 == 2) {
                float exactCenterY = bounds.exactCenterY();
                this.f4632b.moveTo(bounds.right, exactCenterY - min);
                this.f4632b.lineTo(bounds.right + min, exactCenterY);
                this.f4632b.lineTo(bounds.right, min + exactCenterY);
            }
        }
        canvas.drawPath(this.f4632b, getPaint());
    }
}
