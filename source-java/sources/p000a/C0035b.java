package p000a;

import java.net.InetAddress;
import java.net.UnknownHostException;
import p000a.p004b.C0042g;

/* renamed from: a.b */
/* loaded from: classes.dex */
class C0035b extends Thread {

    /* renamed from: a */
    C0049c f82a;

    /* renamed from: b */
    String f83b;

    /* renamed from: c */
    String f84c;

    /* renamed from: d */
    int f85d;

    /* renamed from: e */
    C0042g f86e;

    /* renamed from: f */
    InetAddress f87f;

    /* renamed from: g */
    UnknownHostException f88g;

    C0035b(C0049c c0049c, String str, int i, String str2, InetAddress inetAddress) {
        super("JCIFS-QueryThread: " + str);
        this.f86e = null;
        this.f82a = c0049c;
        this.f83b = str;
        this.f85d = i;
        this.f84c = str2;
        this.f87f = inetAddress;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            try {
                this.f86e = C0042g.m93a(this.f83b, this.f85d, this.f84c, this.f87f);
                synchronized (this.f82a) {
                    C0049c c0049c = this.f82a;
                    c0049c.f176a--;
                    this.f82a.notify();
                }
            } catch (UnknownHostException e) {
                this.f88g = e;
                synchronized (this.f82a) {
                    C0049c c0049c2 = this.f82a;
                    c0049c2.f176a--;
                    this.f82a.notify();
                }
            } catch (Exception e2) {
                this.f88g = new UnknownHostException(e2.getMessage());
                synchronized (this.f82a) {
                    C0049c c0049c3 = this.f82a;
                    c0049c3.f176a--;
                    this.f82a.notify();
                }
            }
        } catch (Throwable th) {
            synchronized (this.f82a) {
                C0049c c0049c4 = this.f82a;
                c0049c4.f176a--;
                this.f82a.notify();
                throw th;
            }
        }
    }
}
