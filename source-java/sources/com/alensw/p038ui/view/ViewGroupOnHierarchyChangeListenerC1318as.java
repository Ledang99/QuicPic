package com.alensw.p038ui.view;

import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;

/* renamed from: com.alensw.ui.view.as */
/* loaded from: classes.dex */
class ViewGroupOnHierarchyChangeListenerC1318as implements ViewGroup.OnHierarchyChangeListener {

    /* renamed from: a */
    final /* synthetic */ int f4550a;

    /* renamed from: b */
    final /* synthetic */ int f4551b;

    /* renamed from: c */
    final /* synthetic */ RunnableC1317ar f4552c;

    ViewGroupOnHierarchyChangeListenerC1318as(RunnableC1317ar runnableC1317ar, int i, int i2) {
        this.f4552c = runnableC1317ar;
        this.f4550a = i;
        this.f4551b = i2;
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewAdded(View view, View view2) {
        if (view2 instanceof CheckedTextView) {
            ModernListPreference.m4301a((CheckedTextView) view2, this.f4550a, this.f4551b, this.f4552c.f4548b);
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public void onChildViewRemoved(View view, View view2) {
    }
}
