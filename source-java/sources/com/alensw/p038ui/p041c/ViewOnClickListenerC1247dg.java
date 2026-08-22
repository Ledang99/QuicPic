package com.alensw.p038ui.p041c;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.alensw.p038ui.activity.C1094a;

/* renamed from: com.alensw.ui.c.dg */
/* loaded from: classes.dex */
class ViewOnClickListenerC1247dg implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ float[] f4141a;

    /* renamed from: b */
    final /* synthetic */ TextView f4142b;

    /* renamed from: c */
    final /* synthetic */ C1246df f4143c;

    ViewOnClickListenerC1247dg(C1246df c1246df, float[] fArr, TextView textView) {
        this.f4143c = c1246df;
        this.f4141a = fArr;
        this.f4142b = textView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Context context;
        context = this.f4143c.f4131d;
        C1094a.m3772a(context, this.f4141a[0], this.f4141a[1], this.f4142b);
    }
}
