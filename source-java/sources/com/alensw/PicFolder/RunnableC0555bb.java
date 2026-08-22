package com.alensw.PicFolder;

import android.content.ContentResolver;
import com.alensw.p022a.C0598am;

/* renamed from: com.alensw.PicFolder.bb */
/* loaded from: classes.dex */
class RunnableC0555bb implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ContentResolver f2150a;

    /* renamed from: b */
    final /* synthetic */ QuickApp f2151b;

    RunnableC0555bb(QuickApp quickApp, ContentResolver contentResolver) {
        this.f2151b = quickApp;
        this.f2150a = contentResolver;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0598am.m2181a(this.f2150a);
    }
}
