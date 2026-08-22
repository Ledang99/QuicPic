package com.alensw.p023b.p026c;

import java.io.DataInputStream;
import java.io.DataOutputStream;

/* renamed from: com.alensw.b.c.h */
/* loaded from: classes.dex */
public class C0664h extends AbstractC0663g {
    public C0664h(int i) {
        super(i);
    }

    @Override // com.alensw.p023b.p026c.AbstractC0663g
    /* renamed from: a */
    protected String mo2263a() {
        return "String";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alensw.p023b.p026c.AbstractC0663g
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public String mo2268b(DataInputStream dataInputStream) {
        return dataInputStream.readUTF();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alensw.p023b.p026c.AbstractC0663g
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo2266a(DataOutputStream dataOutputStream, String str) {
        dataOutputStream.writeUTF(str);
    }
}
