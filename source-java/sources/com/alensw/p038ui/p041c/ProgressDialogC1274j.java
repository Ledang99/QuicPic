package com.alensw.p038ui.p041c;

import android.app.Activity;
import com.alensw.PicFolder.R;
import com.alensw.p022a.C0613ba;
import com.alensw.p022a.C0623e;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;
import java.io.File;

/* renamed from: com.alensw.ui.c.j */
/* loaded from: classes.dex */
class ProgressDialogC1274j extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ C0623e f4226a;

    /* renamed from: b */
    final /* synthetic */ C0613ba f4227b;

    /* renamed from: c */
    final /* synthetic */ String f4228c;

    /* renamed from: e */
    final /* synthetic */ Runnable f4229e;

    /* renamed from: f */
    final /* synthetic */ C1159a f4230f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1274j(C1159a c1159a, Activity activity, String str, int i, C0623e c0623e, C0613ba c0613ba, String str2, Runnable runnable) {
        super(activity, str, i);
        this.f4230f = c1159a;
        this.f4226a = c0623e;
        this.f4227b = c0613ba;
        this.f4228c = str2;
        this.f4229e = runnable;
    }

    /* renamed from: a */
    private void m4141a(Object obj) {
        this.f4230f.f3851b.post(new RunnableC1275k(this, obj));
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    protected void mo3653a() {
        try {
            File m2969a = C0742b.m2969a(new File(this.f4226a, "test"), "tmp");
            if (!C0742b.m2994b(m2969a)) {
                throw new RuntimeException("test write failed!");
            }
            C0742b.m2999c(m2969a);
            if (!this.f4227b.m2292d(this.f4228c)) {
                m3730a("Hide from the media store failed!\nPlease try again later.");
            } else if (this.f4227b.m2291c()) {
                m4141a(Integer.valueOf(R.string.can_not_operate_now));
            } else {
                this.f4226a.f2422f = C0742b.m2984a((File) this.f4226a, true) ? 1 : 0;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: b */
    protected void mo3654b() {
        if (!this.f4226a.m2369a(true)) {
            this.f4230f.m3879a(this.f4226a.getPath());
        } else if (this.f4229e != null) {
            this.f4229e.run();
        }
    }
}
