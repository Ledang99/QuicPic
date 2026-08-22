package com.alensw.PicFolder;

import com.alensw.cloud.C0862ac;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0678e;

/* renamed from: com.alensw.PicFolder.a */
/* loaded from: classes.dex */
class C0526a extends C0862ac {

    /* renamed from: a */
    final /* synthetic */ CloudProvider f2096a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0526a(CloudProvider cloudProvider, int i) {
        super(i);
        this.f2096a = cloudProvider;
    }

    @Override // com.alensw.cloud.C0862ac
    /* renamed from: a */
    protected long mo2067a(String str, String str2, C0682i c0682i) {
        C0561c m1953g;
        m1953g = this.f2096a.m1953g(str);
        String m1949d = CloudProvider.m1949d(str);
        this.f2096a.mo1964a(str, str2, c0682i, (InterfaceC0678e) null);
        return m1953g.f2169d.m3183a(m1949d, "_size", 0L);
    }
}
