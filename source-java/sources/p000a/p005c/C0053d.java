package p000a.p005c;

import java.io.IOException;
import java.net.UnknownHostException;
import java.security.SecureRandom;
import java.util.Arrays;
import org.apache.commons.codec.CharEncoding;
import p000a.p004b.C0042g;
import p000a.p006d.C0140t;
import p000a.p007e.C0153c;
import p000a.p007e.C0156f;
import p000a.p007e.C0157g;

/* renamed from: a.c.d */
/* loaded from: classes.dex */
public class C0053d extends AbstractC0050a {

    /* renamed from: f */
    private static final String f196f;

    /* renamed from: g */
    private static final int f197g;

    /* renamed from: i */
    private byte[] f199i;

    /* renamed from: j */
    private byte[] f200j;

    /* renamed from: k */
    private String f201k;

    /* renamed from: l */
    private String f202l;

    /* renamed from: m */
    private String f203m;

    /* renamed from: n */
    private byte[] f204n;

    /* renamed from: o */
    private byte[] f205o;

    /* renamed from: h */
    private static final SecureRandom f198h = new SecureRandom();

    /* renamed from: b */
    private static final int f192b = 513;

    /* renamed from: c */
    private static final String f193c = null;

    /* renamed from: d */
    private static final String f194d = null;

    /* renamed from: e */
    private static final String f195e = null;

    static {
        String str = null;
        try {
            str = C0042g.m88a().m104g();
        } catch (UnknownHostException e) {
        }
        f196f = str;
        f197g = 3;
    }

    public C0053d() {
        this.f204n = null;
        this.f205o = null;
        m121a(m144k());
        m148a(m145l());
        m150b(m146m());
        m152c(m147n());
    }

    public C0053d(C0052c c0052c, String str, String str2, String str3, String str4, int i) {
        this.f204n = null;
        this.f205o = null;
        m121a(m139a(c0052c) | i);
        m152c(str4 == null ? m147n() : str4);
        m148a(str2);
        m150b(str3);
        switch (f197g) {
            case 0:
            case 1:
                if ((m120a() & 524288) != 0) {
                    byte[] bArr = new byte[24];
                    f198h.nextBytes(bArr);
                    Arrays.fill(bArr, 8, 24, (byte) 0);
                    byte[] m315a = C0140t.m315a(str);
                    byte[] m319a = C0140t.m319a(m315a, c0052c.m137c(), bArr);
                    m149a(bArr);
                    m151b(m319a);
                    if ((m120a() & 16) == 16) {
                        byte[] bArr2 = new byte[16];
                        System.arraycopy(c0052c.m137c(), 0, bArr2, 0, 8);
                        System.arraycopy(bArr, 0, bArr2, 8, 8);
                        C0156f c0156f = new C0156f();
                        c0156f.update(m315a);
                        C0153c c0153c = new C0153c(c0156f.digest());
                        c0153c.update(bArr2);
                        byte[] digest = c0153c.digest();
                        if ((m120a() & 1073741824) == 0) {
                            this.f204n = digest;
                            m153c(this.f204n);
                            break;
                        } else {
                            this.f204n = new byte[16];
                            f198h.nextBytes(this.f204n);
                            byte[] bArr3 = new byte[16];
                            new C0157g(digest).m388a(this.f204n, 0, 16, bArr3, 0);
                            m153c(bArr3);
                            break;
                        }
                    }
                } else {
                    m149a(m140a(c0052c, str));
                    m151b(m143b(c0052c, str));
                    break;
                }
                break;
            case 2:
                byte[] m143b = m143b(c0052c, str);
                m149a(m143b);
                m151b(m143b);
                break;
            case 3:
            case 4:
            case 5:
                byte[] m316a = C0140t.m316a(str2, str3, str);
                byte[] bArr4 = new byte[8];
                f198h.nextBytes(bArr4);
                m149a(m141a(c0052c, str2, str3, str, bArr4));
                byte[] bArr5 = new byte[8];
                f198h.nextBytes(bArr5);
                m151b(m142a(c0052c, m316a, bArr5));
                if ((m120a() & 16) == 16) {
                    C0153c c0153c2 = new C0153c(m316a);
                    c0153c2.update(this.f200j, 0, 16);
                    byte[] digest2 = c0153c2.digest();
                    if ((m120a() & 1073741824) == 0) {
                        this.f204n = digest2;
                        m153c(this.f204n);
                        break;
                    } else {
                        this.f204n = new byte[16];
                        f198h.nextBytes(this.f204n);
                        byte[] bArr6 = new byte[16];
                        new C0157g(digest2).m388a(this.f204n, 0, 16, bArr6, 0);
                        m153c(bArr6);
                        break;
                    }
                }
                break;
            default:
                m149a(m140a(c0052c, str));
                m151b(m143b(c0052c, str));
                break;
        }
    }

    /* renamed from: a */
    public static int m139a(C0052c c0052c) {
        if (c0052c == null) {
            return f192b;
        }
        return ((c0052c.m120a() & 1) != 0 ? 1 : 2) | 512;
    }

    /* renamed from: a */
    public static byte[] m140a(C0052c c0052c, String str) {
        if (c0052c == null || str == null) {
            return null;
        }
        return C0140t.m318a(str, c0052c.m137c());
    }

    /* renamed from: a */
    public static byte[] m141a(C0052c c0052c, String str, String str2, String str3, byte[] bArr) {
        if (c0052c == null || str == null || str2 == null || str3 == null || bArr == null) {
            return null;
        }
        return C0140t.m317a(str, str2, str3, c0052c.m137c(), bArr);
    }

    /* renamed from: a */
    public static byte[] m142a(C0052c c0052c, byte[] bArr, byte[] bArr2) {
        if (c0052c == null || bArr == null || bArr2 == null) {
            return null;
        }
        return C0140t.m321a(bArr, c0052c.m137c(), bArr2, (System.currentTimeMillis() + 11644473600000L) * 10000, c0052c.m138d());
    }

    /* renamed from: b */
    public static byte[] m143b(C0052c c0052c, String str) {
        if (c0052c == null || str == null) {
            return null;
        }
        return C0140t.m324b(str, c0052c.m137c());
    }

    /* renamed from: k */
    public static int m144k() {
        return f192b;
    }

    /* renamed from: l */
    public static String m145l() {
        return f193c;
    }

    /* renamed from: m */
    public static String m146m() {
        return f194d;
    }

    /* renamed from: n */
    public static String m147n() {
        return f196f;
    }

    /* renamed from: a */
    public void m148a(String str) {
        this.f201k = str;
    }

    /* renamed from: a */
    public void m149a(byte[] bArr) {
        this.f199i = bArr;
    }

    /* renamed from: b */
    public void m150b(String str) {
        this.f202l = str;
    }

    /* renamed from: b */
    public void m151b(byte[] bArr) {
        this.f200j = bArr;
    }

    /* renamed from: c */
    public void m152c(String str) {
        this.f203m = str;
    }

    /* renamed from: c */
    public void m153c(byte[] bArr) {
        this.f205o = bArr;
    }

    /* renamed from: c */
    public byte[] m154c() {
        return this.f199i;
    }

    /* renamed from: d */
    public byte[] m155d() {
        return this.f200j;
    }

    /* renamed from: e */
    public String m156e() {
        return this.f201k;
    }

    /* renamed from: f */
    public String m157f() {
        return this.f202l;
    }

    /* renamed from: g */
    public String m158g() {
        return this.f203m;
    }

    /* renamed from: h */
    public byte[] m159h() {
        return this.f204n;
    }

    /* renamed from: i */
    public byte[] m160i() {
        return this.f205o;
    }

    /* renamed from: j */
    public byte[] m161j() {
        byte[] bArr;
        byte[] bArr2;
        byte[] bArr3;
        try {
            int a2 = m120a();
            boolean z = (a2 & 1) != 0;
            String b2 = z ? null : m117b();
            String m156e = m156e();
            if (m156e == null || m156e.length() == 0) {
                bArr = null;
            } else {
                bArr = z ? m156e.getBytes(CharEncoding.UTF_16LE) : m156e.getBytes(b2);
            }
            int length = bArr != null ? bArr.length : 0;
            String m157f = m157f();
            if (m157f == null || m157f.length() == 0) {
                bArr2 = null;
            } else {
                bArr2 = z ? m157f.getBytes(CharEncoding.UTF_16LE) : m157f.toUpperCase().getBytes(b2);
            }
            int length2 = bArr2 != null ? bArr2.length : 0;
            String m158g = m158g();
            if (m158g == null || m158g.length() == 0) {
                bArr3 = null;
            } else {
                bArr3 = z ? m158g.getBytes(CharEncoding.UTF_16LE) : m158g.toUpperCase().getBytes(b2);
            }
            int length3 = bArr3 != null ? bArr3.length : 0;
            byte[] m154c = m154c();
            int length4 = m154c != null ? m154c.length : 0;
            byte[] m155d = m155d();
            int length5 = m155d != null ? m155d.length : 0;
            byte[] m160i = m160i();
            byte[] bArr4 = new byte[(m160i != null ? m160i.length : 0) + length + 64 + length2 + length3 + length4 + length5];
            System.arraycopy(f177a, 0, bArr4, 0, 8);
            m114a(bArr4, 8, 3);
            m115a(bArr4, 12, 64, m154c);
            int i = length4 + 64;
            m115a(bArr4, 20, i, m155d);
            int i2 = length5 + i;
            m115a(bArr4, 28, i2, bArr);
            int i3 = i2 + length;
            m115a(bArr4, 36, i3, bArr2);
            int i4 = i3 + length2;
            m115a(bArr4, 44, i4, bArr3);
            m115a(bArr4, 52, i4 + length3, m160i);
            m114a(bArr4, 60, a2);
            return bArr4;
        } catch (IOException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }
}
