package com.alensw.transfer;

import android.app.Activity;
import android.content.SharedPreferences;
import android.os.Build;
import android.preference.PreferenceManager;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.InterfaceC1084s;
import com.alensw.transfer.p037a.C0984t;

/* renamed from: com.alensw.transfer.ar */
/* loaded from: classes.dex */
class C1002ar implements InterfaceC1084s {

    /* renamed from: a */
    final /* synthetic */ Activity f3516a;

    /* renamed from: b */
    final /* synthetic */ C0987ac f3517b;

    C1002ar(C0987ac c0987ac, Activity activity) {
        this.f3517b = c0987ac;
        this.f3516a = activity;
    }

    @Override // com.alensw.p038ui.p039a.InterfaceC1084s
    /* renamed from: a */
    public void mo3652a(String str) {
        String str2;
        String str3;
        C0984t c0984t;
        C0984t c0984t2;
        String str4;
        str2 = this.f3517b.f3472b;
        if (str2.equals(str)) {
            return;
        }
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(this.f3516a).edit();
        if (str.length() > 0) {
            this.f3517b.f3472b = str;
            edit.putString("transfer_name", str);
        } else {
            this.f3517b.f3472b = Build.MODEL;
            edit.remove("transfer_name");
        }
        C0742b.m2978a(edit);
        TransferActivity transferActivity = (TransferActivity) this.f3516a;
        str3 = this.f3517b.f3472b;
        transferActivity.m3806a(str3);
        c0984t = this.f3517b.f3475e;
        if (c0984t != null) {
            c0984t2 = this.f3517b.f3475e;
            str4 = this.f3517b.f3472b;
            c0984t2.m3613a(str4);
        }
    }
}
