package com.alensw.p038ui.view;

import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;

/* renamed from: com.alensw.ui.view.v */
/* loaded from: classes.dex */
public class C1377v extends C1299a {

    /* renamed from: f */
    protected int f4835f;

    /* renamed from: g */
    protected int f4836g;

    /* renamed from: h */
    protected boolean f4837h;

    /* renamed from: i */
    protected boolean f4838i;

    /* renamed from: j */
    protected Rect f4839j;

    public C1377v(Context context, View view) {
        super(context, view);
        this.f4835f = 0;
        this.f4839j = new Rect();
    }

    @Override // com.alensw.p038ui.view.C1299a
    /* renamed from: a */
    public /* bridge */ /* synthetic */ void mo4336a(int i) {
        super.mo4336a(i);
    }

    @Override // com.alensw.p038ui.view.C1299a
    /* renamed from: a */
    public /* bridge */ /* synthetic */ void mo4337a(boolean z) {
        super.mo4337a(z);
    }

    @Override // com.alensw.p038ui.view.C1299a
    /* renamed from: a */
    public /* bridge */ /* synthetic */ boolean mo4338a() {
        return super.mo4338a();
    }

    /* renamed from: a */
    protected boolean mo4388a(int i, int i2) {
        boolean contains = this.f4839j.contains(i, i2);
        if (contains) {
            if (this.f4835f == 1) {
                this.f4836g = i - this.f4839j.left;
            } else if (this.f4835f == 2) {
                this.f4836g = i2 - this.f4839j.top;
            }
            mo4336a(4);
        } else if (this.f4837h) {
            if (this.f4835f == 1 && i2 >= this.f4839j.top && i2 < this.f4839j.bottom && i >= this.f4493a.getPaddingLeft() && i < this.f4493a.getWidth() - this.f4493a.getPaddingRight()) {
                this.f4838i = true;
                contains = true;
            } else if (this.f4835f == 2 && i >= this.f4839j.left && i < this.f4839j.right && i2 >= this.f4493a.getPaddingTop() && i2 < this.f4493a.getHeight() - this.f4493a.getPaddingBottom()) {
                this.f4838i = true;
                contains = true;
            }
        }
        if (contains) {
            this.f4493a.removeCallbacks(this.f4497e);
        }
        return contains;
    }

    /* renamed from: a */
    public boolean m4469a(MotionEvent motionEvent) {
        boolean z;
        if (this.f4494b == 0 || this.f4835f == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        switch (action) {
            case 0:
                if (mo4388a(x, y)) {
                    return true;
                }
                break;
            case 1:
                if (this.f4494b == 4) {
                    m4471c(x, y);
                    z = true;
                } else if (this.f4838i) {
                    m4473d(x, y);
                    this.f4838i = false;
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    mo4336a(3);
                    this.f4493a.removeCallbacks(this.f4497e);
                    this.f4493a.postDelayed(this.f4497e, 1000L);
                    return true;
                }
                break;
            case 2:
                if (this.f4494b != 4) {
                    if (this.f4838i) {
                        mo4388a(this.f4839j.centerX(), this.f4839j.centerY());
                        this.f4838i = false;
                        break;
                    }
                } else {
                    m4470b(x, y);
                    return true;
                }
                break;
        }
        return false;
    }

    @Override // com.alensw.p038ui.view.C1299a
    /* renamed from: b */
    public /* bridge */ /* synthetic */ void mo4340b(int i) {
        super.mo4340b(i);
    }

    /* renamed from: b */
    protected void m4470b(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int height;
        int width = this.f4839j.width();
        int height2 = this.f4839j.height();
        if (this.f4835f == 1) {
            i3 = this.f4839j.left;
            int paddingLeft = this.f4493a.getPaddingLeft();
            int i6 = i - this.f4836g;
            i4 = i6;
            i5 = paddingLeft;
            height = ((this.f4493a.getWidth() - paddingLeft) - this.f4493a.getPaddingRight()) - width;
        } else {
            if (this.f4835f != 2) {
                return;
            }
            i3 = this.f4839j.top;
            int paddingTop = this.f4493a.getPaddingTop();
            int i7 = i2 - this.f4836g;
            i4 = i7;
            i5 = paddingTop;
            height = ((this.f4493a.getHeight() - paddingTop) - this.f4493a.getPaddingBottom()) - height2;
        }
        if (i4 < i5) {
            i4 = i5;
        } else if (i4 > height + i5) {
            i4 = height + i5;
        }
        if (Math.abs(i4 - i3) < 2 || height < 2) {
            return;
        }
        if (this.f4835f == 1) {
            this.f4839j.set(i4, this.f4839j.top, width + i4, this.f4839j.bottom);
        } else if (this.f4835f == 2) {
            this.f4839j.set(this.f4839j.left, i4, this.f4839j.right, height2 + i4);
        }
        mo4391e(i4 - i5, height);
    }

    @Override // com.alensw.p038ui.view.C1299a
    /* renamed from: b */
    public /* bridge */ /* synthetic */ void mo4341b(boolean z) {
        super.mo4341b(z);
    }

    /* renamed from: c */
    protected void m4471c(int i, int i2) {
    }

    /* renamed from: c */
    public boolean m4472c() {
        return this.f4835f == 4;
    }

    /* renamed from: d */
    protected void m4473d(int i, int i2) {
        int paddingTop;
        int height;
        int i3;
        int width = this.f4839j.width();
        int height2 = this.f4839j.height();
        if (this.f4835f == 1) {
            paddingTop = this.f4493a.getPaddingLeft();
            height = ((this.f4493a.getWidth() - paddingTop) - this.f4493a.getPaddingRight()) - width;
            i3 = i;
        } else {
            if (this.f4835f != 2) {
                return;
            }
            paddingTop = this.f4493a.getPaddingTop();
            height = ((this.f4493a.getHeight() - paddingTop) - this.f4493a.getPaddingBottom()) - height2;
            i3 = i2;
        }
        if (i3 < paddingTop) {
            i3 = paddingTop;
        } else if (i3 > height + paddingTop) {
            i3 = height + paddingTop;
        }
        mo4391e(i3 - paddingTop, height);
    }

    /* renamed from: e */
    protected void mo4391e(int i, int i2) {
    }
}
