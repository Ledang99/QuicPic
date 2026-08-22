package com.alensw.p038ui.view;

import android.content.Context;
import android.graphics.Canvas;
import android.support.v4.widget.C0207j;

/* renamed from: com.alensw.ui.view.au */
/* loaded from: classes.dex */
public class C1320au {

    /* renamed from: a */
    private final C1342bp f4554a;

    /* renamed from: b */
    private final C0207j f4555b;

    /* renamed from: c */
    private final C0207j f4556c;

    /* renamed from: d */
    private final C0207j f4557d;

    /* renamed from: e */
    private final C0207j f4558e;

    /* renamed from: f */
    private float f4559f;

    /* renamed from: g */
    private float f4560g;

    /* renamed from: h */
    private int f4561h;

    /* renamed from: i */
    private int f4562i;

    public C1320au(C1342bp c1342bp) {
        Context context = c1342bp.getContext();
        this.f4554a = c1342bp;
        this.f4555b = new C0207j(context);
        this.f4556c = new C0207j(context);
        this.f4557d = new C0207j(context);
        this.f4558e = new C0207j(context);
    }

    /* renamed from: a */
    public void m4355a(float f, float f2) {
        this.f4559f = f;
        this.f4560g = f2;
    }

    /* renamed from: a */
    public void m4356a(int i, int i2) {
        this.f4561h = i;
        this.f4562i = i2;
    }

    /* renamed from: a */
    public void m4357a(int i, int i2, int i3, int i4, int i5, int i6) {
        if (i == i3 && i2 == i4) {
            if (i5 > 0) {
                int i7 = this.f4561h + i3;
                if (i7 < 0) {
                    this.f4557d.m564a(this.f4561h / this.f4554a.getWidth(), this.f4560g / this.f4554a.getHeight());
                    if (!this.f4558e.m562a()) {
                        this.f4558e.m566b();
                    }
                } else if (i7 > i5) {
                    this.f4558e.m564a(this.f4561h / this.f4554a.getWidth(), 1.0f - (this.f4560g / this.f4554a.getHeight()));
                    if (!this.f4557d.m562a()) {
                        this.f4557d.m566b();
                    }
                }
                this.f4561h = 0;
            }
            if (i6 > 0) {
                int i8 = this.f4562i + i4;
                if (i8 < 0) {
                    this.f4555b.m564a(this.f4562i / this.f4554a.getHeight(), this.f4559f / this.f4554a.getWidth());
                    if (!this.f4556c.m562a()) {
                        this.f4556c.m566b();
                    }
                } else if (i8 > i6) {
                    this.f4556c.m564a(this.f4562i / this.f4554a.getHeight(), 1.0f - (this.f4559f / this.f4554a.getWidth()));
                    if (!this.f4555b.m562a()) {
                        this.f4555b.m566b();
                    }
                }
                this.f4562i = 0;
            }
        }
    }

    /* renamed from: a */
    public boolean m4358a() {
        return (this.f4555b.m562a() && this.f4556c.m562a() && this.f4557d.m562a() && this.f4558e.m562a()) ? false : true;
    }

    /* renamed from: a */
    public boolean m4359a(Canvas canvas) {
        boolean z;
        int scrollX = this.f4554a.getScrollX();
        int scrollY = this.f4554a.getScrollY();
        int width = this.f4554a.getWidth();
        int height = this.f4554a.getHeight();
        if (this.f4555b.m562a()) {
            z = false;
        } else {
            int save = canvas.save();
            canvas.translate(scrollX, this.f4554a.getPaddingTop() + Math.min(0, scrollY));
            this.f4555b.m561a(width, height);
            z = this.f4555b.m565a(canvas) | false;
            canvas.restoreToCount(save);
        }
        if (!this.f4556c.m562a()) {
            int save2 = canvas.save();
            canvas.translate((-width) + scrollX, (Math.max(this.f4554a.getScrollRangeY(), scrollY) + height) - this.f4554a.getPaddingBottom());
            canvas.rotate(180.0f, width, 0.0f);
            this.f4556c.m561a(width, height);
            z |= this.f4556c.m565a(canvas);
            canvas.restoreToCount(save2);
        }
        if (!this.f4557d.m562a()) {
            int save3 = canvas.save();
            canvas.rotate(270.0f);
            canvas.translate((-height) - scrollY, Math.min(0, scrollX) + this.f4554a.getPaddingLeft());
            this.f4557d.m561a(height, width);
            z |= this.f4557d.m565a(canvas);
            canvas.restoreToCount(save3);
        }
        if (this.f4558e.m562a()) {
            return z;
        }
        int save4 = canvas.save();
        canvas.rotate(90.0f);
        canvas.translate(scrollY, -((Math.max(this.f4554a.getScrollRangeX(), scrollX) + width) - this.f4554a.getPaddingRight()));
        this.f4558e.m561a(height, width);
        boolean m565a = z | this.f4558e.m565a(canvas);
        canvas.restoreToCount(save4);
        return m565a;
    }

    /* renamed from: b */
    public void m4360b() {
        this.f4555b.m566b();
        this.f4556c.m566b();
        this.f4557d.m566b();
        this.f4558e.m566b();
    }

    /* renamed from: b */
    public void m4361b(int i, int i2, int i3, int i4, int i5, int i6) {
        if (i6 > 0) {
            if (i2 < 0 && i4 >= 0) {
                this.f4555b.m560a((int) this.f4554a.f4648p.m574e());
                if (!this.f4556c.m562a()) {
                    this.f4556c.m566b();
                }
            } else if (i2 > i6 && i4 <= i6) {
                this.f4556c.m560a((int) this.f4554a.f4648p.m574e());
                if (!this.f4555b.m562a()) {
                    this.f4555b.m566b();
                }
            }
        }
        if (i5 > 0) {
            if (i < 0 && i3 >= 0) {
                this.f4557d.m560a((int) this.f4554a.f4648p.m574e());
                if (this.f4558e.m562a()) {
                    return;
                }
                this.f4558e.m566b();
                return;
            }
            if (i <= i5 || i3 > i5) {
                return;
            }
            this.f4558e.m560a((int) this.f4554a.f4648p.m574e());
            if (this.f4557d.m562a()) {
                return;
            }
            this.f4557d.m566b();
        }
    }
}
