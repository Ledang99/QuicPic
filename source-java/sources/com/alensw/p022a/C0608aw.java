package com.alensw.p022a;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.os.Handler;
import android.util.Log;
import com.alensw.bean.CommonFolder;
import java.util.Arrays;

/* renamed from: com.alensw.a.aw */
/* loaded from: classes.dex */
class C0608aw extends ContentObserver {

    /* renamed from: a */
    final /* synthetic */ Object[] f2342a;

    /* renamed from: b */
    final /* synthetic */ C0607av f2343b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0608aw(C0607av c0607av, Handler handler, Object[] objArr) {
        super(handler);
        this.f2343b = c0607av;
        this.f2342a = objArr;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        ContentResolver contentResolver;
        boolean z2;
        Handler handler;
        CommonFolder commonFolder;
        ContentResolver contentResolver2;
        String str;
        super.onChange(z);
        contentResolver = this.f2343b.f2339i;
        contentResolver.unregisterContentObserver(this);
        z2 = this.f2343b.f2335e;
        if (z2) {
            commonFolder = this.f2343b.f2338h;
            contentResolver2 = this.f2343b.f2339i;
            r0 = Arrays.equals(this.f2342a, commonFolder.mo3034a(contentResolver2)) ? false : true;
            str = this.f2343b.f2331a;
            Log.d(str, "changed=" + r0);
        }
        handler = this.f2343b.f2340j;
        handler.post(new RunnableC0609ax(this, r0));
    }
}
