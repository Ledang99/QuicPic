package com.alensw.p023b.p035l;

import android.content.Context;
import android.widget.Toast;

/* renamed from: com.alensw.b.l.c */
/* loaded from: classes.dex */
final class RunnableC0743c implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f2789a;

    /* renamed from: b */
    final /* synthetic */ String f2790b;

    RunnableC0743c(Context context, String str) {
        this.f2789a = context;
        this.f2790b = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Toast.makeText(this.f2789a, this.f2790b, 1).show();
        } catch (Throwable th) {
        }
    }
}
