package com.alensw.PicFolder;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.alensw.PicFolder.ba */
/* loaded from: classes.dex */
class C0554ba implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    final /* synthetic */ QuickApp f2149a;

    C0554ba(QuickApp quickApp) {
        this.f2149a = quickApp;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        AtomicInteger atomicInteger;
        atomicInteger = this.f2149a.f2084C;
        atomicInteger.incrementAndGet();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        AtomicInteger atomicInteger;
        atomicInteger = this.f2149a.f2084C;
        if (atomicInteger.decrementAndGet() == 0) {
            this.f2149a.m2057d();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        AtomicInteger atomicInteger;
        atomicInteger = this.f2149a.f2085D;
        if (atomicInteger.incrementAndGet() == 1) {
            this.f2149a.m2052b();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        AtomicInteger atomicInteger;
        atomicInteger = this.f2149a.f2085D;
        if (atomicInteger.decrementAndGet() == 0) {
            this.f2149a.m2055c();
        }
    }
}
