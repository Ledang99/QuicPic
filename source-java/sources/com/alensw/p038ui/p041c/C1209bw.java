package com.alensw.p038ui.p041c;

import android.content.SharedPreferences;
import com.alensw.p038ui.p039a.InterfaceC1084s;

/* renamed from: com.alensw.ui.c.bw */
/* loaded from: classes.dex */
class C1209bw implements InterfaceC1084s {

    /* renamed from: a */
    final /* synthetic */ SharedPreferences f4006a;

    /* renamed from: b */
    final /* synthetic */ C1192bf f4007b;

    C1209bw(C1192bf c1192bf, SharedPreferences sharedPreferences) {
        this.f4007b = c1192bf;
        this.f4006a = sharedPreferences;
    }

    @Override // com.alensw.p038ui.p039a.InterfaceC1084s
    /* renamed from: a */
    public void mo3652a(String str) {
        if (str == null || str.length() <= 0) {
            return;
        }
        this.f4006a.edit().putString("name_format", str).commit();
        this.f4007b.m3977g(str);
    }
}
