package com.alensw.cloud.sync;

import android.content.Context;
import com.alensw.p023b.p026c.AbstractC0663g;
import java.io.DataInputStream;
import java.io.DataOutputStream;

/* renamed from: com.alensw.cloud.sync.u */
/* loaded from: classes.dex */
public class C0953u extends AbstractC0663g {
    public C0953u() {
        super(8);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alensw.p023b.p026c.AbstractC0663g
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C0952t mo2268b(DataInputStream dataInputStream) {
        C0952t c0952t = new C0952t();
        c0952t.m3448a(dataInputStream);
        return c0952t;
    }

    @Override // com.alensw.p023b.p026c.AbstractC0663g
    /* renamed from: a */
    protected String mo2263a() {
        return "SyncStatus";
    }

    /* renamed from: a */
    public void m3454a(Context context) {
        m2608a(context.getFileStreamPath("sync_status_list"));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alensw.p023b.p026c.AbstractC0663g
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo2266a(DataOutputStream dataOutputStream, C0952t c0952t) {
        c0952t.m3449a(dataOutputStream);
    }
}
