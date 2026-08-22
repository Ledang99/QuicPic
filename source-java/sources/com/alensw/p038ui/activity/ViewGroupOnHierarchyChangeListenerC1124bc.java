package com.alensw.p038ui.activity;

import android.view.View;
import android.view.ViewGroup;

/* renamed from: com.alensw.ui.activity.bc */
/* loaded from: classes.dex */
class ViewGroupOnHierarchyChangeListenerC1124bc implements ViewGroup.OnHierarchyChangeListener {

    /* renamed from: a */
    final /* synthetic */ C1122ba f3788a;

    ViewGroupOnHierarchyChangeListenerC1124bc(C1122ba c1122ba) {
        this.f3788a = c1122ba;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View view, View view2) {
        if (view2 instanceof ViewGroup) {
            this.f3788a.m3844a((ViewGroup) view2);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
    }
}
