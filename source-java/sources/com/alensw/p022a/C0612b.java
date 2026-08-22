package com.alensw.p022a;

import com.alensw.p023b.p026c.AbstractC0663g;
import java.io.DataInputStream;
import java.io.DataOutputStream;

/* renamed from: com.alensw.a.b */
/* loaded from: classes.dex */
class C0612b extends AbstractC0663g {
    public C0612b(int i) {
        super(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alensw.p023b.p026c.AbstractC0663g
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C0585a mo2268b(DataInputStream dataInputStream) {
        return new C0585a(dataInputStream.readInt(), -1);
    }

    @Override // com.alensw.p023b.p026c.AbstractC0663g
    /* renamed from: a */
    protected String mo2263a() {
        return "Integer";
    }

    /* renamed from: a */
    public void m2264a(C0623e c0623e) {
        super.m2606a(c0623e.getPath(), new C0585a(c0623e.f2421e, c0623e.m2389i()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alensw.p023b.p026c.AbstractC0663g
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo2266a(DataOutputStream dataOutputStream, C0585a c0585a) {
        dataOutputStream.writeInt(c0585a.f2259a);
    }

    /* renamed from: a */
    public boolean m2267a(String str, int i) {
        C0585a c0585a = (C0585a) super.m2610b(str);
        return (c0585a != null && c0585a.f2259a == i && c0585a.f2260b == 0) ? false : true;
    }
}
