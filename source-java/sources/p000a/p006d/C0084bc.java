package p000a.p006d;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import p000a.p007e.C0154d;

/* renamed from: a.d.bc */
/* loaded from: classes.dex */
public class C0084bc extends IOException implements InterfaceC0127g {

    /* renamed from: a */
    private int f371a;

    /* renamed from: b */
    private Throwable f372b;

    C0084bc() {
    }

    C0084bc(int i, Throwable th) {
        super(m187a(i));
        this.f371a = m188b(i);
        this.f372b = th;
    }

    public C0084bc(int i, boolean z) {
        super(z ? m189c(i) : m187a(i));
        this.f371a = z ? i : m188b(i);
    }

    C0084bc(String str) {
        super(str);
        this.f371a = -1073741823;
    }

    C0084bc(String str, Throwable th) {
        super(str);
        this.f372b = th;
        this.f371a = -1073741823;
    }

    /* renamed from: a */
    static String m187a(int i) {
        return "0x" + C0154d.m378a(i, 8);
    }

    /* renamed from: b */
    static int m188b(int i) {
        if (((-1073741824) & i) != 0) {
            return i;
        }
        int length = f611l.length - 1;
        int i2 = 0;
        while (length >= i2) {
            int i3 = (i2 + length) / 2;
            if (i > f611l[i3][0]) {
                i2 = i3 + 1;
            } else {
                if (i >= f611l[i3][0]) {
                    return f611l[i3][1];
                }
                length = i3 - 1;
            }
        }
        return -1073741823;
    }

    /* renamed from: c */
    static String m189c(int i) {
        return "0x" + C0154d.m378a(i, 8);
    }

    /* renamed from: a */
    public int m190a() {
        return this.f371a;
    }

    /* renamed from: b */
    public Throwable m191b() {
        return this.f372b;
    }

    @Override // java.lang.Throwable
    public String toString() {
        if (this.f372b == null) {
            return super.toString();
        }
        StringWriter stringWriter = new StringWriter();
        this.f372b.printStackTrace(new PrintWriter(stringWriter));
        return super.toString() + "\n" + stringWriter;
    }
}
