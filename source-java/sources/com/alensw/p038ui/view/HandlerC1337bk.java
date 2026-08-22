package com.alensw.p038ui.view;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.alensw.cloud.EnumC0963z;

/* renamed from: com.alensw.ui.view.bk */
/* loaded from: classes.dex */
class HandlerC1337bk extends Handler {

    /* renamed from: a */
    final /* synthetic */ C1329bc f4600a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HandlerC1337bk(C1329bc c1329bc, Looper looper) {
        super(looper);
        this.f4600a = c1329bc;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        this.f4600a.m4378b((String) message.obj, message.arg1 != EnumC0963z.FLICKR.ordinal());
    }
}
