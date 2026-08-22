package com.alensw.p038ui.p041c;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;

/* renamed from: com.alensw.ui.c.cu */
/* loaded from: classes.dex */
public class C1234cu {

    /* renamed from: C */
    protected ActivityC1237cx f4082C;

    /* renamed from: D */
    protected View f4083D;

    /* renamed from: E */
    protected Intent f4084E;

    /* renamed from: F */
    protected CharSequence f4085F;

    /* renamed from: G */
    protected CharSequence f4086G;

    /* renamed from: H */
    protected int f4087H;

    /* renamed from: I */
    protected boolean f4088I;

    /* renamed from: J */
    protected boolean f4089J;

    /* renamed from: K */
    protected final ViewTreeObserver.OnGlobalLayoutListener f4090K = new ViewTreeObserverOnGlobalLayoutListenerC1235cv(this);

    /* renamed from: A */
    public boolean m4019A() {
        return this.f4088I;
    }

    /* renamed from: B */
    public CharSequence m4020B() {
        return this.f4085F;
    }

    /* renamed from: C */
    public CharSequence m4021C() {
        return this.f4086G;
    }

    /* renamed from: D */
    public View m4022D() {
        return this.f4083D;
    }

    /* renamed from: E */
    public void m4023E() {
        if (this.f4082C.m4043d() > 1) {
            this.f4082C.m4042c(this);
        } else {
            this.f4082C.finish();
        }
    }

    /* renamed from: F */
    public Resources m4024F() {
        return this.f4082C.getResources();
    }

    /* renamed from: G */
    public RectF m4025G() {
        int left = this.f4083D.getLeft();
        int top = this.f4083D.getTop();
        int width = this.f4083D.getWidth();
        int height = this.f4083D.getHeight();
        if (width <= 0 || height <= 0) {
            View rootView = this.f4083D.getRootView();
            left = rootView.getLeft();
            top = rootView.getTop();
            width = rootView.getWidth();
            height = rootView.getHeight();
        }
        return new RectF(left, top, width + left, height + top);
    }

    /* renamed from: a */
    public long mo3860a(boolean z, RectF rectF) {
        RectF m4025G = m4025G();
        Animation m4036a = this.f4082C.m4036a(z, ActivityC1237cx.f3726G, rectF, m4025G);
        long duration = m4036a.getDuration();
        if (duration > 0) {
            if (z) {
                this.f4083D.startAnimation(m4036a);
            } else {
                this.f4083D.post(new RunnableC1236cw(this, m4036a));
            }
        }
        return duration;
    }

    /* renamed from: a */
    public void mo3861a() {
    }

    /* renamed from: a */
    public void mo3939a(int i, int i2, int i3, int i4) {
    }

    /* renamed from: a */
    public void mo3940a(int i, int i2, Intent intent) {
    }

    /* renamed from: a */
    public void mo3865a(Bundle bundle) {
    }

    /* renamed from: a */
    public boolean mo3943a(int i, Menu menu) {
        return true;
    }

    /* renamed from: a */
    public boolean mo3944a(KeyEvent keyEvent, boolean z) {
        return false;
    }

    /* renamed from: a */
    public boolean mo3945a(Menu menu) {
        return true;
    }

    /* renamed from: a */
    public boolean mo3946a(MenuItem menuItem) {
        return false;
    }

    /* renamed from: a */
    public boolean mo3947a(MotionEvent motionEvent) {
        return false;
    }

    /* renamed from: b */
    public void mo3881b() {
    }

    /* renamed from: b */
    public void mo3971b(Intent intent) {
    }

    /* renamed from: b */
    public void mo3949b(Bundle bundle) {
    }

    /* renamed from: b */
    public void m4026b(View view) {
        this.f4083D = view;
        this.f4083D.getViewTreeObserver().addOnGlobalLayoutListener(this.f4090K);
    }

    /* renamed from: b */
    public void m4027b(CharSequence charSequence) {
        this.f4085F = charSequence;
        if (this.f4087H == 2) {
            this.f4082C.setTitle(charSequence);
        }
    }

    /* renamed from: b */
    public boolean mo3950b(Menu menu) {
        return true;
    }

    /* renamed from: c */
    public void m4028c(CharSequence charSequence) {
        this.f4086G = charSequence;
        if (this.f4087H == 2) {
            this.f4082C.m3806a(charSequence);
        }
    }

    /* renamed from: c */
    public void m4029c(boolean z) {
        this.f4089J = z;
        if (this.f4087H == 2) {
            this.f4082C.m3824i(z);
        }
    }

    /* renamed from: c */
    protected boolean mo3973c(Menu menu) {
        return false;
    }

    /* renamed from: d */
    protected boolean mo3975d(Menu menu) {
        return false;
    }

    /* renamed from: e */
    public void m4030e(int i) {
        switch (i) {
            case 0:
                if (this.f4087H == 2) {
                    m4030e(1);
                }
                if (this.f4087H == 1) {
                    mo3952g();
                    this.f4087H = 0;
                    break;
                }
                break;
            case 1:
                if (this.f4087H != 0) {
                    if (this.f4087H == 2) {
                        this.f4087H = 1;
                        mo3881b();
                        break;
                    }
                } else {
                    this.f4087H = 1;
                    break;
                }
                break;
            case 2:
                if (this.f4087H == 1) {
                    this.f4087H = 2;
                    mo3861a();
                    break;
                }
                break;
        }
    }

    /* renamed from: e */
    public void mo3951e(Menu menu) {
    }

    /* renamed from: f */
    public View m4031f(int i) {
        return this.f4083D.findViewById(i);
    }

    /* renamed from: f */
    public boolean mo4003f() {
        return true;
    }

    /* renamed from: g */
    public String m4032g(int i) {
        return this.f4082C.getString(i);
    }

    /* renamed from: g */
    public void mo3952g() {
        if (this.f4083D != null) {
            this.f4083D.getViewTreeObserver().removeGlobalOnLayoutListener(this.f4090K);
        }
    }

    /* renamed from: h */
    public RectF mo3978h() {
        RectF m4025G = m4025G();
        m4025G.inset(m4025G.width() / 4.0f, m4025G.height() / 4.0f);
        return m4025G;
    }

    /* renamed from: h */
    public void m4033h(int i) {
        m4026b(this.f4082C.getLayoutInflater().inflate(i, (ViewGroup) null));
    }

    /* renamed from: i */
    public void mo3979i() {
    }

    /* renamed from: j */
    protected Uri[] mo3953j() {
        return null;
    }

    /* renamed from: k */
    protected void mo3980k() {
    }
}
