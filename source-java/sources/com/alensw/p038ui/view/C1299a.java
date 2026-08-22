package com.alensw.p038ui.view;

import android.content.Context;
import android.view.View;

/* renamed from: com.alensw.ui.view.a */
/* loaded from: classes.dex */
class C1299a {

    /* renamed from: a */
    protected View f4493a;

    /* renamed from: f */
    private boolean f4498f;

    /* renamed from: g */
    private RunnableC1346bt f4499g;

    /* renamed from: b */
    protected int f4494b = 0;

    /* renamed from: c */
    protected int f4495c = 240;

    /* renamed from: d */
    protected int f4496d = 0;

    /* renamed from: e */
    protected Runnable f4497e = new RunnableC1326b(this);

    /* renamed from: h */
    private Runnable f4500h = new RunnableC1353c(this);

    public C1299a(Context context, View view) {
        this.f4493a = view;
    }

    /* renamed from: a */
    public void mo4336a(int i) {
        switch (i) {
            case 0:
                mo4340b(0);
                mo4339b();
                break;
            case 1:
                mo4341b(false);
                break;
            case 2:
                mo4341b(true);
                break;
            case 3:
                mo4340b(this.f4495c);
                mo4339b();
                break;
        }
        this.f4494b = i;
    }

    /* renamed from: a */
    public void mo4337a(boolean z) {
        if (z && this.f4494b <= 1) {
            mo4336a(2);
        } else {
            if (z || this.f4494b < 2) {
                return;
            }
            mo4336a(1);
        }
    }

    /* renamed from: a */
    public boolean mo4338a() {
        return this.f4494b != 0;
    }

    /* renamed from: b */
    protected void mo4339b() {
    }

    /* renamed from: b */
    public void mo4340b(int i) {
        if (this.f4496d != i) {
            this.f4496d = i;
            mo4339b();
        }
    }

    /* renamed from: b */
    public void mo4341b(boolean z) {
        if (this.f4499g != null) {
            this.f4499g.mo4403c();
        }
        this.f4498f = z;
        if (this.f4499g == null) {
            this.f4499g = new C1359d(this, this.f4493a, null);
        }
        this.f4499g.m4402a(300L, true);
    }
}
