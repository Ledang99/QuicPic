package com.alensw.p038ui.view;

import android.net.Uri;
import android.widget.ImageView;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p022a.InterfaceC0595aj;
import com.alensw.p023b.p024a.AbstractC0647c;
import com.alensw.p023b.p031h.C0712h;

/* renamed from: com.alensw.ui.view.aa */
/* loaded from: classes.dex */
class RunnableC1300aa implements InterfaceC0595aj, Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC1381z f4501a;

    /* renamed from: b */
    private final ImageView f4502b;

    /* renamed from: c */
    private final Uri f4503c;

    /* renamed from: d */
    private C0712h f4504d;

    public RunnableC1300aa(AbstractC1381z abstractC1381z, ImageView imageView, Uri uri) {
        this.f4501a = abstractC1381z;
        this.f4502b = imageView;
        this.f4503c = uri;
    }

    @Override // com.alensw.p022a.InterfaceC0595aj
    /* renamed from: a */
    public void mo2170a(Object obj, C0712h c0712h) {
        this.f4504d = (C0712h) c0712h.mo2865l();
        QuickApp.f2080w.m2517a(obj, (AbstractC0647c) c0712h.mo2865l());
        this.f4502b.post(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f4501a.m4487a(this.f4503c) == this.f4502b) {
            AbstractC1381z.m4486a(this.f4502b, this.f4504d);
        }
        if (this.f4504d != null) {
            this.f4504d.m2866m();
        }
        this.f4504d = null;
    }
}
