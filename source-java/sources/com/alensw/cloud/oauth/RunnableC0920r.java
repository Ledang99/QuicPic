package com.alensw.cloud.oauth;

import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.alensw.cloud.oauth.r */
/* loaded from: classes.dex */
class RunnableC0920r implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f3260a;

    /* renamed from: b */
    final /* synthetic */ BasicAuthActivity f3261b;

    RunnableC0920r(BasicAuthActivity basicAuthActivity, String str) {
        this.f3261b = basicAuthActivity;
        this.f3260a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        ConcurrentHashMap concurrentHashMap;
        concurrentHashMap = this.f3261b.f3186h;
        concurrentHashMap.put(this.f3260a, true);
        this.f3261b.m3333b();
    }
}
