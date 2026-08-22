package com.alensw.PicFolder;

import android.support.p009a.p010a.C0158a;
import android.view.View;
import android.view.animation.Interpolator;
import com.alensw.p038ui.view.RunnableC1346bt;

/* renamed from: com.alensw.PicFolder.af */
/* loaded from: classes.dex */
class C0532af extends RunnableC1346bt {

    /* renamed from: a */
    final /* synthetic */ boolean f2111a;

    /* renamed from: b */
    final /* synthetic */ GalleryActivity f2112b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0532af(GalleryActivity galleryActivity, View view, Interpolator interpolator, boolean z) {
        super(view, interpolator);
        this.f2112b = galleryActivity;
        this.f2111a = z;
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: a */
    public void mo2076a() {
        C0158a c0158a;
        c0158a = this.f2112b.f2001h;
        c0158a.m394a(this.f2111a ? 1.0f : 0.0f);
    }

    @Override // com.alensw.p038ui.view.RunnableC1346bt
    /* renamed from: a */
    public void mo2077a(float f) {
        C0158a c0158a;
        if (this.f2111a) {
            f = 1.0f - f;
        }
        c0158a = this.f2112b.f2001h;
        c0158a.m394a(f);
    }
}
