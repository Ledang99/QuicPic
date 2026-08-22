package com.alensw.cloud.sync;

import java.io.DataInputStream;
import java.io.DataOutputStream;

/* renamed from: com.alensw.cloud.sync.t */
/* loaded from: classes.dex */
public class C0952t {

    /* renamed from: b */
    public int f3333b;

    /* renamed from: c */
    public int f3334c;

    /* renamed from: d */
    public long f3335d;

    /* renamed from: e */
    public long f3336e;

    /* renamed from: f */
    public long f3337f;

    /* renamed from: g */
    public int f3338g;

    /* renamed from: h */
    public int f3339h;

    /* renamed from: i */
    public int f3340i;

    /* renamed from: k */
    public int f3342k;

    /* renamed from: a */
    public int f3332a = 0;

    /* renamed from: j */
    public int f3341j = 0;

    /* renamed from: l */
    public String f3343l = "";

    /* renamed from: a */
    public void m3448a(DataInputStream dataInputStream) {
        dataInputStream.readShort();
        this.f3332a = 0;
        this.f3333b = dataInputStream.readInt();
        this.f3334c = dataInputStream.readInt();
        this.f3335d = dataInputStream.readLong();
        this.f3336e = dataInputStream.readLong();
        this.f3337f = dataInputStream.readLong();
        this.f3338g = dataInputStream.readInt();
        this.f3339h = dataInputStream.readInt();
        this.f3340i = dataInputStream.readInt();
        this.f3341j = dataInputStream.readInt();
        this.f3342k = dataInputStream.readInt();
        this.f3343l = dataInputStream.readUTF();
    }

    /* renamed from: a */
    public void m3449a(DataOutputStream dataOutputStream) {
        dataOutputStream.writeShort(1);
        dataOutputStream.writeInt(this.f3333b);
        dataOutputStream.writeInt(this.f3334c);
        dataOutputStream.writeLong(this.f3335d);
        dataOutputStream.writeLong(this.f3336e);
        dataOutputStream.writeLong(this.f3337f);
        dataOutputStream.writeInt(this.f3338g);
        dataOutputStream.writeInt(this.f3339h);
        dataOutputStream.writeInt(this.f3340i);
        dataOutputStream.writeInt(this.f3341j);
        dataOutputStream.writeInt(this.f3342k);
        dataOutputStream.writeUTF(this.f3343l);
    }

    /* renamed from: a */
    public void m3450a(boolean z) {
        this.f3341j = z ? 1 : 0;
        this.f3342k = 0;
        this.f3343l = "";
    }

    /* renamed from: a */
    public boolean m3451a() {
        return (this.f3338g + this.f3339h) + this.f3340i == 0;
    }

    /* renamed from: b */
    public boolean m3452b() {
        return this.f3341j == 1;
    }
}
