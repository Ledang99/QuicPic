package com.alensw.PicFolder;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.alensw.p038ui.p041c.C1192bf;
import com.alensw.p038ui.p041c.C1212bz;
import com.alensw.p038ui.p041c.C1256dp;
import java.io.File;

/* renamed from: com.alensw.PicFolder.ac */
/* loaded from: classes.dex */
class RunnableC0529ac implements Runnable {

    /* renamed from: a */
    final /* synthetic */ boolean f2103a;

    /* renamed from: b */
    final /* synthetic */ Intent f2104b;

    /* renamed from: c */
    final /* synthetic */ boolean f2105c;

    /* renamed from: d */
    final /* synthetic */ File f2106d;

    /* renamed from: e */
    final /* synthetic */ GalleryActivity f2107e;

    RunnableC0529ac(GalleryActivity galleryActivity, boolean z, Intent intent, boolean z2, File file) {
        this.f2107e = galleryActivity;
        this.f2103a = z;
        this.f2104b = intent;
        this.f2105c = z2;
        this.f2106d = file;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f2103a) {
            this.f2107e.m4037a(C1212bz.class, this.f2104b, (Bundle) null);
        }
        if (this.f2103a || this.f2105c) {
            this.f2107e.m4037a(C1192bf.class, GalleryActivity.m1984a((String) null, Uri.fromFile(this.f2106d), this.f2104b), (Bundle) null);
        }
        if (this.f2105c) {
            return;
        }
        this.f2107e.m4037a(C1256dp.class, GalleryActivity.m1984a((String) null, Uri.fromFile(this.f2106d), this.f2104b), (Bundle) null);
    }
}
