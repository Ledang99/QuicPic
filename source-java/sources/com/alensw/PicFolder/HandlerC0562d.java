package com.alensw.PicFolder;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.alensw.cloud.oauth.C0889a;
import com.alensw.cloud.oauth.C0904b;

/* renamed from: com.alensw.PicFolder.d */
/* loaded from: classes.dex */
class HandlerC0562d extends Handler {

    /* renamed from: a */
    final /* synthetic */ Context f2174a;

    /* renamed from: b */
    final /* synthetic */ C0561c f2175b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    HandlerC0562d(C0561c c0561c, Looper looper, Context context) {
        super(looper);
        this.f2175b = c0561c;
        this.f2174a = context;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        Object obj;
        C0889a c0889a;
        if (this.f2175b.f2168c.m3348a().equals((String) message.obj)) {
            C0904b c0904b = new C0904b();
            if (c0904b.m3392a(this.f2174a)) {
                obj = this.f2175b.f2172g;
                synchronized (obj) {
                    int a2 = c0904b.m2572a((Object) this.f2175b.f2168c);
                    if (a2 != -1 && (c0889a = (C0889a) c0904b.m2573a(a2)) != null) {
                        this.f2175b.f2170e.m3242a(c0889a.f3196g);
                    }
                }
            }
        }
    }
}
