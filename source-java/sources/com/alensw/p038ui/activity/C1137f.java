package com.alensw.p038ui.activity;

import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.Rect;
import com.p043b.p044a.C1397l;

/* renamed from: com.alensw.ui.activity.f */
/* loaded from: classes.dex */
class C1137f extends C1397l {

    /* renamed from: a */
    final /* synthetic */ boolean f3810a;

    /* renamed from: b */
    final /* synthetic */ C1136e f3811b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1137f(C1136e c1136e, Picture picture, int i, int i2, boolean z) {
        super(picture, i, i2);
        this.f3811b = c1136e;
        this.f3810a = z;
    }

    @Override // com.p043b.p044a.C1397l, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save(1);
        canvas.rotate(this.f3810a ? 270.0f : 90.0f, bounds.exactCenterX(), bounds.centerY());
        super.draw(canvas);
        canvas.restore();
    }
}
