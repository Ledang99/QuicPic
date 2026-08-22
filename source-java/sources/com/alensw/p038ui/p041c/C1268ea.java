package com.alensw.p038ui.p041c;

import android.net.Uri;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p022a.C0600ao;
import com.alensw.p022a.C0623e;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.view.PictureView;

/* renamed from: com.alensw.ui.c.ea */
/* loaded from: classes.dex */
class C1268ea implements InterfaceC1279o {

    /* renamed from: a */
    final /* synthetic */ C1256dp f4212a;

    C1268ea(C1256dp c1256dp) {
        this.f4212a = c1256dp;
    }

    @Override // com.alensw.p038ui.p041c.InterfaceC1279o
    /* renamed from: a */
    public void mo3990a(String str, String str2, int i) {
        Uri uri;
        C0623e c0623e;
        C0623e c0623e2;
        PictureView pictureView;
        Uri uri2;
        C1246df c1246df;
        C1246df c1246df2;
        Uri uri3;
        C0600ao c0600ao = QuickApp.f2078u;
        uri = this.f4212a.f4185o;
        c0600ao.m2227a(uri, true);
        c0623e = this.f4212a.f4183m;
        c0623e.f2419c = i;
        C1256dp c1256dp = this.f4212a;
        c0623e2 = this.f4212a.f4183m;
        c1256dp.f4185o = c0623e2.m2379d(i);
        pictureView = this.f4212a.f4176f;
        uri2 = this.f4212a.f4185o;
        pictureView.setPictureUri(uri2);
        c1246df = this.f4212a.f4186p;
        if (c1246df != null) {
            c1246df2 = this.f4212a.f4186p;
            uri3 = this.f4212a.f4185o;
            c1246df2.m4073a(uri3);
        }
        this.f4212a.m4027b((CharSequence) C0742b.m2997c(str2));
    }
}
