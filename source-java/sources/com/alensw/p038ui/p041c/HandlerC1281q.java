package com.alensw.p038ui.p041c;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* renamed from: com.alensw.ui.c.q */
/* loaded from: classes.dex */
class HandlerC1281q extends Handler {

    /* renamed from: a */
    final /* synthetic */ C1280p f4251a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HandlerC1281q(C1280p c1280p, Looper looper) {
        super(looper);
        this.f4251a = c1280p;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        this.f4251a.m4162a((String) message.obj, false);
    }
}
