package com.alensw.p038ui.p041c;

import android.content.Intent;
import java.util.HashSet;

/* renamed from: com.alensw.ui.c.ap */
/* loaded from: classes.dex */
class C1175ap implements InterfaceC1277m {

    /* renamed from: a */
    final /* synthetic */ HashSet f3884a;

    /* renamed from: b */
    final /* synthetic */ C1290z f3885b;

    C1175ap(C1290z c1290z, HashSet hashSet) {
        this.f3885b = c1290z;
        this.f3884a = hashSet;
    }

    @Override // com.alensw.p038ui.p041c.InterfaceC1277m
    /* renamed from: a */
    public void mo3277a(Intent intent) {
        this.f3885b.m4184a(this.f3884a, intent.getData());
    }
}
