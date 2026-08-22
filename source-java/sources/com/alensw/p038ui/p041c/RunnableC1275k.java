package com.alensw.p038ui.p041c;

import android.widget.Toast;

/* renamed from: com.alensw.ui.c.k */
/* loaded from: classes.dex */
class RunnableC1275k implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Object f4231a;

    /* renamed from: b */
    final /* synthetic */ ProgressDialogC1274j f4232b;

    RunnableC1275k(ProgressDialogC1274j progressDialogC1274j, Object obj) {
        this.f4232b = progressDialogC1274j;
        this.f4231a = obj;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f4231a instanceof String) {
            Toast.makeText(this.f4232b.f4230f.f4082C, (String) this.f4231a, 1).show();
        } else {
            Toast.makeText(this.f4232b.f4230f.f4082C, ((Integer) this.f4231a).intValue(), 1).show();
        }
    }
}
