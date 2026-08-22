package com.alensw.transfer.p037a;

import java.net.DatagramPacket;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* renamed from: com.alensw.transfer.a.o */
/* loaded from: classes.dex */
public class C0979o {

    /* renamed from: a */
    InetAddress f3447a;

    /* renamed from: b */
    private byte f3448b;

    /* renamed from: c */
    private int f3449c;

    /* renamed from: d */
    private int f3450d;

    /* renamed from: e */
    private String f3451e;

    /* renamed from: f */
    private byte[] f3452f;

    /* renamed from: a */
    public static C0979o m3591a(DatagramPacket datagramPacket, boolean z) {
        ByteBuffer wrap = ByteBuffer.wrap(datagramPacket.getData(), datagramPacket.getOffset(), datagramPacket.getLength());
        wrap.order(ByteOrder.BIG_ENDIAN);
        long j = wrap.getLong();
        if (j != 5859263667320651776L) {
            throw new RuntimeException("unknown packet id: " + Long.toHexString(j));
        }
        C0979o c0979o = new C0979o();
        c0979o.f3448b = wrap.get();
        byte[] bArr = new byte[z ? 4 : 16];
        wrap.get(bArr);
        c0979o.f3447a = InetAddress.getByAddress(bArr);
        c0979o.f3449c = wrap.getInt();
        c0979o.f3450d = wrap.getInt();
        wrap.getLong();
        byte[] bArr2 = new byte[wrap.get()];
        wrap.get(bArr2);
        c0979o.f3451e = new String(bArr2, "UTF-8");
        c0979o.f3452f = new byte[wrap.getShort()];
        wrap.get(c0979o.f3452f);
        return c0979o;
    }

    /* renamed from: a */
    public ByteBuffer m3592a() {
        ByteBuffer allocate = ByteBuffer.allocate(1024);
        allocate.order(ByteOrder.BIG_ENDIAN);
        allocate.putLong(5859263667320651776L);
        allocate.put(this.f3448b);
        allocate.put(this.f3447a.getAddress());
        allocate.putInt(this.f3449c);
        allocate.putInt(this.f3450d);
        allocate.putLong(0L);
        byte[] bytes = this.f3451e.getBytes();
        int min = Math.min(127, bytes.length);
        allocate.put((byte) min);
        allocate.put(bytes, 0, min);
        if (this.f3452f != null) {
            int min2 = Math.min(511, this.f3452f.length);
            allocate.putShort((short) min2);
            allocate.put(this.f3452f, 0, min2);
        } else {
            allocate.putShort((short) 0);
        }
        return allocate;
    }

    /* renamed from: a */
    public void m3593a(byte b2) {
        this.f3448b = b2;
    }

    /* renamed from: a */
    public void m3594a(int i) {
        this.f3449c = i;
    }

    /* renamed from: a */
    public void m3595a(String str) {
        this.f3451e = str;
    }

    /* renamed from: a */
    public void m3596a(InetAddress inetAddress) {
        this.f3447a = inetAddress;
    }

    /* renamed from: b */
    public void m3597b(int i) {
        this.f3450d = i;
    }

    /* renamed from: b */
    public boolean m3598b() {
        return this.f3448b == 1;
    }

    /* renamed from: c */
    public boolean m3599c() {
        return this.f3448b == 0 && this.f3450d == 0;
    }

    /* renamed from: d */
    public int m3600d() {
        return this.f3449c;
    }

    /* renamed from: e */
    public int m3601e() {
        return this.f3450d;
    }

    /* renamed from: f */
    public String m3602f() {
        return this.f3451e;
    }

    /* renamed from: g */
    public InetAddress m3603g() {
        return this.f3447a;
    }

    public String toString() {
        Object[] objArr = new Object[5];
        objArr[0] = m3598b() ? "probe" : m3599c() ? "leave" : "update";
        objArr[1] = this.f3451e;
        objArr[2] = this.f3447a.getHostAddress();
        objArr[3] = Integer.valueOf(this.f3449c);
        objArr[4] = Integer.valueOf(this.f3450d);
        return String.format("Packet: %s, %s(%s:%d), %d", objArr);
    }
}
