package com.alensw.p038ui.activity;

import com.alensw.p038ui.p039a.InterfaceC1084s;
import org.apache.http.message.TokenParser;

/* renamed from: com.alensw.ui.activity.ak */
/* loaded from: classes.dex */
class C1105ak implements InterfaceC1084s {

    /* renamed from: a */
    final /* synthetic */ C1104aj f3720a;

    C1105ak(C1104aj c1104aj) {
        this.f3720a = c1104aj;
    }

    @Override // com.alensw.p038ui.p039a.InterfaceC1084s
    /* renamed from: a */
    public void mo3652a(String str) {
        this.f3720a.f3715b.edit().putString("slideshow_interval", str).commit();
        this.f3720a.f3717d.setSummary(str + TokenParser.f5042SP + this.f3720a.f3718e);
    }
}
