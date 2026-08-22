package com.alensw.p022a;

import android.database.Cursor;
import com.alensw.bean.CommonFolder;

/* renamed from: com.alensw.a.ay */
/* loaded from: classes.dex */
class RunnableC0610ay implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Cursor f2346a;

    /* renamed from: b */
    final /* synthetic */ boolean f2347b;

    /* renamed from: c */
    final /* synthetic */ C0607av f2348c;

    RunnableC0610ay(C0607av c0607av, Cursor cursor, boolean z) {
        this.f2348c = c0607av;
        this.f2346a = cursor;
        this.f2347b = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001b  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        boolean z;
        InterfaceC0611az interfaceC0611az;
        CommonFolder commonFolder;
        if (this.f2346a == null) {
            commonFolder = this.f2348c.f2338h;
            if (commonFolder.m3046n()) {
                z = false;
                interfaceC0611az = this.f2348c.f2337g;
                interfaceC0611az.mo2261b(!z ? this.f2348c.f2338h : null, this.f2347b ? false : true);
            }
        }
        z = true;
        interfaceC0611az = this.f2348c.f2337g;
        interfaceC0611az.mo2261b(!z ? this.f2348c.f2338h : null, this.f2347b ? false : true);
    }
}
