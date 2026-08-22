package com.alensw.transfer.p037a;

import java.net.InetAddress;

/* renamed from: com.alensw.transfer.a.t */
/* loaded from: classes.dex */
public class C0984t {

    /* renamed from: a */
    protected long f3459a;

    /* renamed from: b */
    private String f3460b;

    /* renamed from: c */
    private InetAddress f3461c;

    /* renamed from: d */
    private int f3462d;

    /* renamed from: e */
    private final long f3463e = System.currentTimeMillis();

    public C0984t(String str, InetAddress inetAddress, int i) {
        this.f3460b = str;
        this.f3461c = inetAddress;
        this.f3462d = i;
    }

    /* renamed from: a */
    public String m3611a() {
        return this.f3460b;
    }

    /* renamed from: a */
    public void m3612a(int i) {
        this.f3462d = i;
    }

    /* renamed from: a */
    public void m3613a(String str) {
        this.f3460b = str;
    }

    /* renamed from: b */
    public InetAddress m3614b() {
        return this.f3461c;
    }

    /* renamed from: c */
    public int m3615c() {
        return this.f3462d;
    }

    /* renamed from: d */
    public long m3616d() {
        return this.f3463e;
    }

    public boolean equals(Object obj) {
        return (obj instanceof C0984t) && ((C0984t) obj).f3461c.equals(this.f3461c);
    }

    public int hashCode() {
        return this.f3461c.hashCode();
    }

    public String toString() {
        return "Peer info: " + this.f3460b + " " + this.f3461c.getHostAddress() + ":" + this.f3462d;
    }
}
