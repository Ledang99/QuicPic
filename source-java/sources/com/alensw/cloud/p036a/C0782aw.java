package com.alensw.cloud.p036a;

import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import java.io.InputStream;

/* renamed from: com.alensw.cloud.a.aw */
/* loaded from: classes.dex */
public class C0782aw extends C0811by {

    /* renamed from: f */
    final /* synthetic */ C0778as f2935f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0782aw(C0778as c0778as, int i, InterfaceC0679f interfaceC0679f) {
        super(c0778as, i, interfaceC0679f);
        this.f2935f = c0778as;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0782aw(C0778as c0778as, String str, InterfaceC0679f interfaceC0679f) {
        super(c0778as, str, interfaceC0679f);
        this.f2935f = c0778as;
    }

    @Override // com.alensw.cloud.p036a.C0811by, com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2687a(int i, String str, String str2, long j, InputStream inputStream) {
        if (i == 202) {
            this.f2935f.mo3147a(i, C0675b.m2656a(inputStream, str2, this.f2569i));
        } else {
            super.mo2687a(i, str, str2, j, inputStream);
        }
    }
}
