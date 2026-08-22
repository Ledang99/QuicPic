package com.alensw.transfer;

import android.app.ActionBar;
import android.app.FragmentTransaction;
import android.support.v4.p011a.C0187p;

/* renamed from: com.alensw.transfer.g */
/* loaded from: classes.dex */
class C1027g implements ActionBar.TabListener {

    /* renamed from: a */
    final /* synthetic */ ActionBar.Tab f3572a;

    /* renamed from: b */
    final /* synthetic */ TransferActivity f3573b;

    C1027g(TransferActivity transferActivity, ActionBar.Tab tab) {
        this.f3573b = transferActivity;
        this.f3572a = tab;
    }

    @Override // android.app.ActionBar.TabListener
    public void onTabReselected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
    }

    @Override // android.app.ActionBar.TabListener
    public void onTabSelected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
        C0187p c0187p;
        int i = tab == this.f3572a ? 0 : 1;
        c0187p = this.f3573b.f3372b;
        c0187p.setCurrentItem(i);
    }

    @Override // android.app.ActionBar.TabListener
    public void onTabUnselected(ActionBar.Tab tab, FragmentTransaction fragmentTransaction) {
    }
}
