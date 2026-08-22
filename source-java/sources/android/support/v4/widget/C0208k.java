package android.support.v4.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.widget.OverScroller;
import android.widget.Scroller;

/* renamed from: android.support.v4.widget.k */
/* loaded from: classes.dex */
public class C0208k {

    /* renamed from: a */
    private OverScroller f896a;

    /* renamed from: b */
    private Scroller f897b;

    @TargetApi(9)
    public C0208k(Context context) {
        if (Build.VERSION.SDK_INT >= 9) {
            this.f896a = new OverScroller(context);
        } else {
            this.f897b = new Scroller(context);
        }
    }

    /* renamed from: a */
    public void m567a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        if (this.f896a != null) {
            this.f896a.fling(i, i2, i3, i4, i5, i6, i7, i8, i9, i10);
        } else {
            this.f897b.fling(i, i2, i3, i4, i5, i6, i7, i8);
        }
    }

    /* renamed from: a */
    public void m568a(boolean z) {
        if (this.f896a != null) {
            this.f896a.forceFinished(z);
        } else {
            this.f897b.forceFinished(z);
        }
    }

    /* renamed from: a */
    public boolean m569a() {
        return this.f896a != null;
    }

    /* renamed from: a */
    public boolean m570a(int i, int i2, int i3, int i4, int i5, int i6) {
        if (this.f896a != null) {
            return this.f896a.springBack(i, i2, i3, i4, i5, i6);
        }
        this.f897b.abortAnimation();
        return true;
    }

    /* renamed from: b */
    public boolean m571b() {
        return this.f896a != null ? this.f896a.computeScrollOffset() : this.f897b.computeScrollOffset();
    }

    /* renamed from: c */
    public int m572c() {
        return this.f896a != null ? this.f896a.getCurrX() : this.f897b.getCurrX();
    }

    /* renamed from: d */
    public int m573d() {
        return this.f896a != null ? this.f896a.getCurrY() : this.f897b.getCurrY();
    }

    /* renamed from: e */
    public float m574e() {
        if (this.f896a != null) {
            return this.f896a.getCurrVelocity();
        }
        if (Build.VERSION.SDK_INT >= 14) {
            return this.f897b.getCurrVelocity();
        }
        return 0.0f;
    }

    /* renamed from: f */
    public boolean m575f() {
        return this.f896a != null ? this.f896a.isFinished() : this.f897b.isFinished();
    }

    /* renamed from: g */
    public void m576g() {
        if (this.f896a != null) {
            this.f896a.abortAnimation();
        } else {
            this.f897b.abortAnimation();
        }
    }
}
