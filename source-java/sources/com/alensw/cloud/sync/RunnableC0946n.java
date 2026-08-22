package com.alensw.cloud.sync;

import android.content.SharedPreferences;
import com.alensw.p023b.p035l.C0742b;

/* renamed from: com.alensw.cloud.sync.n */
/* loaded from: classes.dex */
class RunnableC0946n implements Runnable {

    /* renamed from: a */
    final /* synthetic */ boolean f3324a;

    /* renamed from: b */
    final /* synthetic */ ViewOnClickListenerC0945m f3325b;

    RunnableC0946n(ViewOnClickListenerC0945m viewOnClickListenerC0945m, boolean z) {
        this.f3325b = viewOnClickListenerC0945m;
        this.f3324a = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        SharedPreferences sharedPreferences;
        sharedPreferences = this.f3325b.f3323d.f3283g;
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putBoolean(this.f3325b.f3321b, this.f3324a);
        C0742b.m2978a(edit);
        this.f3325b.f3320a.setChecked(this.f3324a);
    }
}
