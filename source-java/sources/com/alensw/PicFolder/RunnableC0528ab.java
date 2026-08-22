package com.alensw.PicFolder;

/* renamed from: com.alensw.PicFolder.ab */
/* loaded from: classes.dex */
class RunnableC0528ab implements Runnable {

    /* renamed from: a */
    final /* synthetic */ GalleryActivity f2102a;

    RunnableC0528ab(GalleryActivity galleryActivity) {
        this.f2102a = galleryActivity;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f2102a.m4043d() == 0) {
            this.f2102a.finish();
        }
    }
}
