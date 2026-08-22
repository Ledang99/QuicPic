package com.alensw.p038ui.p041c;

import android.content.Context;
import android.widget.TextView;
import com.alensw.p023b.p027d.C0667c;
import com.alensw.p023b.p027d.InterfaceC0671g;

/* renamed from: com.alensw.ui.c.dh */
/* loaded from: classes.dex */
class C1248dh implements InterfaceC0671g {

    /* renamed from: a */
    final /* synthetic */ TextView f4144a;

    /* renamed from: b */
    final /* synthetic */ C1246df f4145b;

    C1248dh(C1246df c1246df, TextView textView) {
        this.f4145b = c1246df;
        this.f4144a = textView;
    }

    @Override // com.alensw.p023b.p027d.InterfaceC0671g
    /* renamed from: a */
    public void mo2649a(C0667c c0667c) {
        Context context;
        if (c0667c != null) {
            try {
                TextView textView = this.f4144a;
                context = this.f4145b.f4131d;
                textView.setText(c0667c.m2626a(context));
            } catch (Throwable th) {
            }
        }
    }
}
