package com.alensw.p038ui.view;

import android.os.Build;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

/* renamed from: com.alensw.ui.view.bt */
/* loaded from: classes.dex */
public class RunnableC1346bt implements Runnable {

    /* renamed from: a */
    private boolean f4653a;

    /* renamed from: b */
    private long f4654b;

    /* renamed from: c */
    private long f4655c;

    /* renamed from: d */
    private final View f4656d;

    /* renamed from: e */
    private final Interpolator f4657e;

    public RunnableC1346bt(View view, Interpolator interpolator) {
        this.f4656d = view;
        this.f4657e = interpolator;
    }

    /* renamed from: a */
    public static void m4400a(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, 16L);
        }
    }

    /* renamed from: e */
    private boolean m4401e() {
        float f;
        boolean z;
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        if (this.f4655c > 0) {
            float min = Math.min(this.f4655c, currentAnimationTimeMillis - this.f4654b);
            f = min / this.f4655c;
            if (this.f4657e != null) {
                f = this.f4657e.getInterpolation(f);
            }
            z = min >= ((float) this.f4655c);
        } else {
            f = -1.0f;
            z = false;
        }
        if (z) {
            mo2077a(1.0f);
            mo4403c();
            mo2079b();
        } else {
            if (this.f4653a) {
                m4400a(this.f4656d, this);
            }
            mo2077a(f);
        }
        return !z;
    }

    /* renamed from: a */
    public void mo2076a() {
    }

    /* renamed from: a */
    public void mo2077a(float f) {
    }

    /* renamed from: a */
    public void m4402a(long j, boolean z) {
        this.f4653a = z || Build.VERSION.SDK_INT >= 16;
        this.f4654b = AnimationUtils.currentAnimationTimeMillis();
        this.f4655c = j;
        mo2076a();
        if (this.f4653a) {
            m4400a(this.f4656d, this);
        } else {
            this.f4656d.invalidate();
        }
    }

    /* renamed from: b */
    public void mo2079b() {
    }

    /* renamed from: c */
    public void mo4403c() {
        if (this.f4653a) {
            this.f4656d.removeCallbacks(this);
        }
    }

    /* renamed from: d */
    public void m4404d() {
        if (this.f4653a) {
            return;
        }
        m4401e();
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f4653a) {
            m4401e();
        }
    }
}
