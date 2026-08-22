package com.alensw.transfer;

import android.support.v4.p011a.AbstractC0181j;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: com.alensw.transfer.l */
/* loaded from: classes.dex */
class C1032l extends AbstractC0181j {

    /* renamed from: a */
    final /* synthetic */ TransferActivity f3578a;

    C1032l(TransferActivity transferActivity) {
        this.f3578a = transferActivity;
    }

    @Override // android.support.v4.p011a.AbstractC0181j
    /* renamed from: a */
    public int mo437a() {
        return 2;
    }

    @Override // android.support.v4.p011a.AbstractC0181j
    /* renamed from: a */
    public Object mo440a(ViewGroup viewGroup, int i) {
        C0964a c0964a;
        C0964a c0964a2;
        C0964a c0964a3;
        C0964a c0964a4;
        if (i == 0) {
            c0964a3 = this.f3578a.f3375e;
            viewGroup.addView(c0964a3.m3532h());
            c0964a4 = this.f3578a.f3375e;
            return c0964a4.m3532h();
        }
        if (i != 1) {
            return null;
        }
        c0964a = this.f3578a.f3376f;
        viewGroup.addView(c0964a.m3532h());
        c0964a2 = this.f3578a.f3376f;
        return c0964a2.m3532h();
    }

    @Override // android.support.v4.p011a.AbstractC0181j
    /* renamed from: a */
    public void mo446a(ViewGroup viewGroup, int i, Object obj) {
        super.mo446a(viewGroup, i, obj);
        viewGroup.removeView((View) obj);
    }

    @Override // android.support.v4.p011a.AbstractC0181j
    /* renamed from: a */
    public boolean mo447a(View view, Object obj) {
        return view == obj;
    }
}
