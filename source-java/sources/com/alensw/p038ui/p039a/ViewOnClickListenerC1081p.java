package com.alensw.p038ui.p039a;

import android.content.Context;
import android.view.View;
import android.widget.ArrayAdapter;
import com.alensw.p038ui.view.TitleView;

/* renamed from: com.alensw.ui.a.p */
/* loaded from: classes.dex */
final class ViewOnClickListenerC1081p implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ Context f3666a;

    /* renamed from: b */
    final /* synthetic */ int f3667b;

    /* renamed from: c */
    final /* synthetic */ ArrayAdapter f3668c;

    /* renamed from: d */
    final /* synthetic */ TitleView f3669d;

    ViewOnClickListenerC1081p(Context context, int i, ArrayAdapter arrayAdapter, TitleView titleView) {
        this.f3666a = context;
        this.f3667b = i;
        this.f3668c = arrayAdapter;
        this.f3669d = titleView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1071f.m3741a(C1071f.m3735a(this.f3666a, this.f3667b, this.f3668c, new DialogInterfaceOnClickListenerC1082q(this)));
    }
}
