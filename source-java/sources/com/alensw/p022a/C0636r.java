package com.alensw.p022a;

import com.alensw.p023b.p026c.C0660d;
import java.io.DataInputStream;

/* renamed from: com.alensw.a.r */
/* loaded from: classes.dex */
class C0636r extends C0660d {

    /* renamed from: a */
    final /* synthetic */ C0635q f2448a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0636r(C0635q c0635q, int i) {
        super(i);
        this.f2448a = c0635q;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alensw.p023b.p026c.C0660d, com.alensw.p023b.p026c.AbstractC0663g
    /* renamed from: a */
    public Integer mo2268b(DataInputStream dataInputStream) {
        int readInt = dataInputStream.readInt();
        if (((readInt >> 16) & 255) != 0) {
            int i = (readInt & 240) >> 4;
            int i2 = readInt & 15;
            if (i2 == 3) {
                i2 = 5;
            } else if (i2 == 1) {
                i2 = 6;
            }
            readInt = C0623e.m2353a(i, i2);
        }
        return Integer.valueOf(readInt);
    }
}
