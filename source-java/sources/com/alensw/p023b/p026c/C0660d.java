package com.alensw.p023b.p026c;

import java.io.DataInputStream;
import java.io.DataOutputStream;

/* renamed from: com.alensw.b.c.d */
/* loaded from: classes.dex */
public class C0660d extends AbstractC0663g {
    public C0660d(int i) {
        super(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alensw.p023b.p026c.AbstractC0663g
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Integer mo2268b(DataInputStream dataInputStream) {
        return Integer.valueOf(dataInputStream.readInt());
    }

    @Override // com.alensw.p023b.p026c.AbstractC0663g
    /* renamed from: a */
    protected String mo2263a() {
        return "Integer";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alensw.p023b.p026c.AbstractC0663g
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo2266a(DataOutputStream dataOutputStream, Integer num) {
        dataOutputStream.writeInt(num.intValue());
    }
}
