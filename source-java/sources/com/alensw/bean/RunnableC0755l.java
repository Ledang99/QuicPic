package com.alensw.bean;

import android.content.ContentResolver;
import com.alensw.p022a.C0613ba;

/* renamed from: com.alensw.bean.l */
/* loaded from: classes.dex */
class RunnableC0755l implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ContentResolver f2844a;

    /* renamed from: b */
    final /* synthetic */ MediaStoreFolder f2845b;

    RunnableC0755l(MediaStoreFolder mediaStoreFolder, ContentResolver contentResolver) {
        this.f2845b = mediaStoreFolder;
        this.f2844a = contentResolver;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2844a.notifyChange(C0613ba.m2269a('I'), null);
    }
}
