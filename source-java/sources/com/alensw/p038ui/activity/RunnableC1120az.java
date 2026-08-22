package com.alensw.p038ui.activity;

/* renamed from: com.alensw.ui.activity.az */
/* loaded from: classes.dex */
class RunnableC1120az implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ActivityC1109ao f3771a;

    RunnableC1120az(ActivityC1109ao activityC1109ao) {
        this.f3771a = activityC1109ao;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f3771a.mo1994a(false);
        this.f3771a.f3730I.removeCallbacks(this);
    }
}
