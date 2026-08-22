package com.alensw.cloud.sync;

import android.content.Context;
import com.alensw.p023b.p026c.AbstractC0663g;
import java.io.DataInputStream;
import java.io.DataOutputStream;

/* renamed from: com.alensw.cloud.sync.w */
/* loaded from: classes.dex */
public class C0955w extends AbstractC0663g {
    public C0955w() {
        super(8);
    }

    /* renamed from: a */
    public static boolean m3459a(Context context) {
        return context.getFileStreamPath("sync_task_list").length() > 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alensw.p023b.p026c.AbstractC0663g
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C0954v mo2268b(DataInputStream dataInputStream) {
        C0954v c0954v = new C0954v();
        c0954v.m3457a(dataInputStream);
        return c0954v;
    }

    @Override // com.alensw.p023b.p026c.AbstractC0663g
    /* renamed from: a */
    protected String mo2263a() {
        return "SyncTask";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alensw.p023b.p026c.AbstractC0663g
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo2266a(DataOutputStream dataOutputStream, C0954v c0954v) {
        c0954v.m3458a(dataOutputStream);
    }

    /* renamed from: b */
    public void m3462b(Context context) {
        m2608a(context.getFileStreamPath("sync_task_list"));
    }
}
