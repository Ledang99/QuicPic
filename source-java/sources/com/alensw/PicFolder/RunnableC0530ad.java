package com.alensw.PicFolder;

import android.content.Intent;
import android.os.Bundle;
import com.alensw.p038ui.p041c.C1290z;

/* renamed from: com.alensw.PicFolder.ad */
/* loaded from: classes.dex */
class RunnableC0530ad implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Intent f2108a;

    /* renamed from: b */
    final /* synthetic */ GalleryActivity f2109b;

    RunnableC0530ad(GalleryActivity galleryActivity, Intent intent) {
        this.f2109b = galleryActivity;
        this.f2108a = intent;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f2109b.m4037a(C1290z.class, this.f2108a, (Bundle) null);
    }
}
