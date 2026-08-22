package com.alensw.p038ui.activity;

import android.preference.Preference;
import android.preference.PreferenceScreen;
import java.util.Stack;

/* renamed from: com.alensw.ui.activity.be */
/* loaded from: classes.dex */
class C1126be implements Preference.OnPreferenceClickListener {

    /* renamed from: a */
    final /* synthetic */ PreferenceScreen f3792a;

    /* renamed from: b */
    final /* synthetic */ C1122ba f3793b;

    C1126be(C1122ba c1122ba, PreferenceScreen preferenceScreen) {
        this.f3793b = c1122ba;
        this.f3792a = preferenceScreen;
    }

    @Override // android.preference.Preference.OnPreferenceClickListener
    public boolean onPreferenceClick(Preference preference) {
        Stack stack;
        stack = this.f3793b.f3783g;
        stack.push(this.f3793b.getPreferenceScreen());
        this.f3793b.mo3759a(this.f3792a);
        return true;
    }
}
