package p000a.p005c;

import java.io.IOException;
import java.net.UnknownHostException;
import p000a.p004b.C0042g;

/* renamed from: a.c.b */
/* loaded from: classes.dex */
public class C0051b extends AbstractC0050a {

    /* renamed from: b */
    private static final int f180b = 513;

    /* renamed from: c */
    private static final String f181c = null;

    /* renamed from: d */
    private static final String f182d;

    /* renamed from: e */
    private String f183e;

    /* renamed from: f */
    private String f184f;

    static {
        String str = null;
        try {
            str = C0042g.m88a().m104g();
        } catch (UnknownHostException e) {
        }
        f182d = str;
    }

    public C0051b() {
        this(m122f(), m123g(), m124h());
    }

    public C0051b(int i, String str, String str2) {
        m121a(m122f() | i);
        m125a(str);
        m126b(str2 == null ? m124h() : str2);
    }

    /* renamed from: f */
    public static int m122f() {
        return f180b;
    }

    /* renamed from: g */
    public static String m123g() {
        return f181c;
    }

    /* renamed from: h */
    public static String m124h() {
        return f182d;
    }

    /* renamed from: a */
    public void m125a(String str) {
        this.f183e = str;
    }

    /* renamed from: b */
    public void m126b(String str) {
        this.f184f = str;
    }

    /* renamed from: c */
    public String m127c() {
        return this.f183e;
    }

    /* renamed from: d */
    public String m128d() {
        return this.f184f;
    }

    /* renamed from: e */
    public byte[] m129e() {
        int i;
        byte[] bArr;
        int i2;
        boolean z = true;
        boolean z2 = false;
        try {
            String m127c = m127c();
            String m128d = m128d();
            int a2 = m120a();
            byte[] bArr2 = new byte[0];
            if (m127c == null || m127c.length() == 0) {
                i = a2 & (-4097);
                bArr = bArr2;
            } else {
                bArr = m127c.toUpperCase().getBytes(m117b());
                i = a2 | 4096;
                z2 = true;
            }
            byte[] bArr3 = new byte[0];
            if (m128d == null || m128d.length() == 0) {
                boolean z3 = z2;
                i2 = i & (-8193);
                z = z3;
            } else {
                i2 = i | 8192;
                bArr3 = m128d.toUpperCase().getBytes(m117b());
            }
            byte[] bArr4 = new byte[z ? bArr.length + 32 + bArr3.length : 16];
            System.arraycopy(f177a, 0, bArr4, 0, 8);
            m114a(bArr4, 8, 1);
            m114a(bArr4, 12, i2);
            if (z) {
                m115a(bArr4, 16, 32, bArr);
                m115a(bArr4, 24, bArr.length + 32, bArr3);
            }
            return bArr4;
        } catch (IOException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }
}
