package com.alensw.p038ui.p041c;

import android.widget.Toast;
import com.alensw.PicFolder.QuickApp;

/* renamed from: com.alensw.ui.c.cc */
/* loaded from: classes.dex */
class RunnableC1216cc implements Runnable {

    /* renamed from: a */
    final /* synthetic */ RunnableC1215cb f4048a;

    RunnableC1216cc(RunnableC1215cb runnableC1215cb) {
        this.f4048a = runnableC1215cb;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f4048a.f4046a.m2390j() > 0) {
            QuickApp.f2076s.m2294f(this.f4048a.f4046a.m2373b(0));
        } else if (!this.f4048a.f4046a.m2396p()) {
            Toast.makeText(this.f4048a.f4047b.f4082C, "Create blank picture failed!", 1).show();
            return;
        }
        int m2505d = this.f4048a.f4047b.f4023l.m2505d(this.f4048a.f4046a);
        if (this.f4048a.f4047b.f4087H == 2) {
            this.f4048a.f4047b.f4021j.requestLayout();
            this.f4048a.f4047b.f4021j.m4258b(m2505d);
        }
    }
}
