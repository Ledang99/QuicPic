package com.alensw.p038ui.view;

import android.os.Handler;
import android.os.Message;

/* renamed from: com.alensw.ui.view.bh */
/* loaded from: classes.dex */
class C1334bh implements Handler.Callback {

    /* renamed from: a */
    final /* synthetic */ C1329bc f4596a;

    C1334bh(C1329bc c1329bc) {
        this.f4596a = c1329bc;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        String str = (String) message.obj;
        if (str == null) {
            return true;
        }
        this.f4596a.m4376a(str, false);
        return true;
    }
}
