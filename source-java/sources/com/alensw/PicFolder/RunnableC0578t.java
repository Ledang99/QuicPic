package com.alensw.PicFolder;

import android.graphics.Bitmap;
import com.alensw.p023b.p031h.C0714j;

/* renamed from: com.alensw.PicFolder.t */
/* loaded from: classes.dex */
class RunnableC0578t implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C0575q f2238a;

    RunnableC0578t(C0575q c0575q) {
        this.f2238a = c0575q;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0714j a2 = this.f2238a.m4436a(Bitmap.Config.RGB_565);
        if (a2 != null) {
            this.f2238a.f2218h = false;
            this.f2238a.m2129a(a2);
            a2.m2866m();
        }
    }
}
