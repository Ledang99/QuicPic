package com.alensw.p038ui.p039a;

import android.app.Activity;
import com.alensw.p023b.p034k.InterfaceCallableC0740k;

/* renamed from: com.alensw.ui.a.aq */
/* loaded from: classes.dex */
class C1064aq implements InterfaceCallableC0740k {

    /* renamed from: a */
    final /* synthetic */ AbstractProgressDialogC1062ao f3644a;

    C1064aq(AbstractProgressDialogC1062ao abstractProgressDialogC1062ao) {
        this.f3644a = abstractProgressDialogC1062ao;
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: a */
    public void mo2094a() {
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: b */
    public void mo2095b() {
        Activity activity;
        activity = this.f3644a.f3642a;
        activity.runOnUiThread(new RunnableC1065ar(this));
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public Void call() {
        this.f3644a.mo3653a();
        return null;
    }
}
