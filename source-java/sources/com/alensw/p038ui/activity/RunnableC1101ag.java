package com.alensw.p038ui.activity;

import com.alensw.PicFolder.R;

/* renamed from: com.alensw.ui.activity.ag */
/* loaded from: classes.dex */
class RunnableC1101ag implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C1099ae f3709a;

    RunnableC1101ag(C1099ae c1099ae) {
        this.f3709a = c1099ae;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3709a.f3706b.edit().remove("password").commit();
        this.f3709a.f3705a.setChecked(false);
        this.f3709a.f3705a.setSummary((CharSequence) null);
        this.f3709a.f3707c.m3756a(R.string.password_cleared);
    }
}
