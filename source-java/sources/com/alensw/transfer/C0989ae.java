package com.alensw.transfer;

import android.os.Handler;
import com.alensw.transfer.p037a.C0984t;
import com.alensw.transfer.p037a.InterfaceC0974j;

/* renamed from: com.alensw.transfer.ae */
/* loaded from: classes.dex */
class C0989ae implements InterfaceC0974j {

    /* renamed from: a */
    final /* synthetic */ C0987ac f3498a;

    C0989ae(C0987ac c0987ac) {
        this.f3498a = c0987ac;
    }

    @Override // com.alensw.transfer.p037a.InterfaceC0974j
    /* renamed from: a */
    public void mo3584a() {
        Handler handler;
        handler = this.f3498a.f3482l;
        handler.post(new RunnableC0991ag(this));
    }

    @Override // com.alensw.transfer.p037a.InterfaceC0974j
    /* renamed from: a */
    public void mo3585a(C0984t c0984t) {
        Handler handler;
        handler = this.f3498a.f3482l;
        handler.post(new RunnableC0990af(this, c0984t));
    }

    @Override // com.alensw.transfer.p037a.InterfaceC0974j
    /* renamed from: b */
    public void mo3586b(C0984t c0984t) {
        Handler handler;
        handler = this.f3498a.f3482l;
        handler.post(new RunnableC0992ah(this, c0984t));
    }

    @Override // com.alensw.transfer.p037a.InterfaceC0974j
    /* renamed from: c */
    public void mo3587c(C0984t c0984t) {
        Handler handler;
        handler = this.f3498a.f3482l;
        handler.post(new RunnableC0993ai(this, c0984t));
    }
}
