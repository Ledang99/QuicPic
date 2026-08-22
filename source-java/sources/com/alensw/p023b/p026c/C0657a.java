package com.alensw.p023b.p026c;

import java.io.DataInputStream;
import java.io.DataOutputStream;

/* renamed from: com.alensw.b.c.a */
/* loaded from: classes.dex */
public class C0657a extends AbstractC0663g {
    public C0657a(int i) {
        super(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alensw.p023b.p026c.AbstractC0663g
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Boolean mo2268b(DataInputStream dataInputStream) {
        return Boolean.valueOf(dataInputStream.readBoolean());
    }

    @Override // com.alensw.p023b.p026c.AbstractC0663g
    /* renamed from: a */
    protected String mo2263a() {
        return "Boolean";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alensw.p023b.p026c.AbstractC0663g
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo2266a(DataOutputStream dataOutputStream, Boolean bool) {
        dataOutputStream.writeBoolean(bool.booleanValue());
    }
}
