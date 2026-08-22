package com.alensw.p038ui.p042d;

import android.graphics.Canvas;
import android.graphics.Paint;

/* renamed from: com.alensw.ui.d.f */
/* loaded from: classes.dex */
public class C1296f extends C1291a {

    /* renamed from: g */
    private float f4323g;

    /* renamed from: h */
    private float f4324h;

    /* renamed from: i */
    private String f4325i;

    public C1296f(String str) {
        this.f4325i = str;
    }

    @Override // com.alensw.p038ui.p042d.C1291a
    /* renamed from: a */
    protected Object mo4199a(float f, float f2) {
        this.f4305a = 6.0f;
        return this.f4325i;
    }

    @Override // com.alensw.p038ui.p042d.C1291a
    /* renamed from: a */
    protected void mo4201a(Canvas canvas, Paint paint, float f, float f2) {
        float min = (Math.min(f, f2) / 96.0f) * 72.0f;
        paint.setTextAlign(Paint.Align.CENTER);
        paint.setTextSize(min);
        this.f4323g = f / 2.0f;
        this.f4324h = ((min / 2.0f) + (f2 / 2.0f)) - ((paint.descent() * 3.0f) / 4.0f);
        canvas.translate(this.f4323g, this.f4324h);
    }

    @Override // com.alensw.p038ui.p042d.C1291a
    /* renamed from: b */
    protected void mo4203b(Canvas canvas, Paint paint, float f, float f2) {
        canvas.translate(-this.f4323g, -this.f4324h);
    }
}
