package com.alensw.transfer;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.util.Log;

/* renamed from: com.alensw.transfer.k */
/* loaded from: classes.dex */
class ServiceConnectionC1031k implements ServiceConnection {

    /* renamed from: a */
    final /* synthetic */ TransferActivity f3577a;

    ServiceConnectionC1031k(TransferActivity transferActivity) {
        this.f3577a = transferActivity;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        TransferService transferService;
        C0964a c0964a;
        TransferService transferService2;
        C0964a c0964a2;
        TransferService transferService3;
        this.f3577a.f3371a = ((BinderC1022bk) iBinder).m3666a();
        transferService = this.f3577a.f3371a;
        transferService.m3513c();
        c0964a = this.f3577a.f3375e;
        transferService2 = this.f3577a.f3371a;
        c0964a.mo3522a(transferService2);
        c0964a2 = this.f3577a.f3376f;
        transferService3 = this.f3577a.f3371a;
        c0964a2.mo3522a(transferService3);
        Log.d("TransferActivity", "transfer service connected");
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.f3577a.f3371a = null;
        Log.d("TransferActivity", "transfer service disconnected");
    }
}
