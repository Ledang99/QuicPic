package com.alensw.cloud;

import android.content.Context;
import android.net.Uri;
import com.alensw.p023b.p026c.AbstractC0661e;
import java.io.DataInputStream;
import java.io.DataOutputStream;

/* renamed from: com.alensw.cloud.ae */
/* loaded from: classes.dex */
public class C0864ae extends AbstractC0661e {
    @Override // com.alensw.p023b.p026c.AbstractC0661e
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C0863ad mo2579b(DataInputStream dataInputStream) {
        return new C0863ad(Uri.parse(dataInputStream.readUTF()), Uri.parse(dataInputStream.readUTF()));
    }

    @Override // com.alensw.p023b.p026c.AbstractC0661e
    /* renamed from: a */
    public String mo2575a() {
        return "UrlItem";
    }

    @Override // com.alensw.p023b.p026c.AbstractC0661e
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo2576a(DataOutputStream dataOutputStream, C0863ad c0863ad) {
        dataOutputStream.writeUTF(c0863ad.f3137a.toString());
        dataOutputStream.writeUTF(c0863ad.f3138b.toString());
    }

    /* renamed from: a */
    public boolean m3283a(Context context, String str) {
        return m2578a(context.getFileStreamPath(str));
    }
}
