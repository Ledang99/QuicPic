package com.alensw.cloud.sync;

import java.io.DataInputStream;
import java.io.DataOutputStream;

/* renamed from: com.alensw.cloud.sync.v */
/* loaded from: classes.dex */
public class C0954v {

    /* renamed from: c */
    public String f3344c;

    /* renamed from: d */
    public String f3345d;

    /* renamed from: e */
    public String f3346e;

    /* renamed from: f */
    public boolean f3347f;

    /* renamed from: a */
    public static String m3456a() {
        return C0939g.m3432b();
    }

    /* renamed from: a */
    public void m3457a(DataInputStream dataInputStream) {
        dataInputStream.readShort();
        this.f3344c = dataInputStream.readUTF();
        this.f3345d = dataInputStream.readUTF();
        this.f3346e = dataInputStream.readUTF();
        this.f3347f = dataInputStream.readBoolean();
    }

    /* renamed from: a */
    public void m3458a(DataOutputStream dataOutputStream) {
        dataOutputStream.writeShort(1);
        dataOutputStream.writeUTF(this.f3344c);
        dataOutputStream.writeUTF(this.f3345d);
        dataOutputStream.writeUTF(this.f3346e);
        dataOutputStream.writeBoolean(this.f3347f);
    }
}
