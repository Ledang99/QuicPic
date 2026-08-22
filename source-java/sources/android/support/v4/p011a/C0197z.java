package android.support.v4.p011a;

import android.database.DataSetObserver;

/* renamed from: android.support.v4.a.z */
/* loaded from: classes.dex */
class C0197z extends DataSetObserver {

    /* renamed from: a */
    final /* synthetic */ C0187p f848a;

    private C0197z(C0187p c0187p) {
        this.f848a = c0187p;
    }

    /* synthetic */ C0197z(C0187p c0187p, C0188q c0188q) {
        this(c0187p);
    }

    @Override // android.database.DataSetObserver
    public void onChanged() {
        this.f848a.m493b();
    }

    @Override // android.database.DataSetObserver
    public void onInvalidated() {
        this.f848a.m493b();
    }
}
