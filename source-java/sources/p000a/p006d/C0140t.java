package p000a.p006d;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.Principal;
import java.util.Arrays;
import java.util.Random;
import org.apache.commons.codec.CharEncoding;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.apache.http.protocol.HTTP;
import p000a.p007e.C0147a;
import p000a.p007e.C0152b;
import p000a.p007e.C0153c;
import p000a.p007e.C0155e;
import p000a.p007e.C0156f;

/* renamed from: a.d.t */
/* loaded from: classes.dex */
public final class C0140t implements Serializable, Principal {

    /* renamed from: a */
    static String f644a;

    /* renamed from: b */
    static String f645b;

    /* renamed from: c */
    static String f646c;

    /* renamed from: h */
    String f654h;

    /* renamed from: i */
    String f655i;

    /* renamed from: j */
    String f656j;

    /* renamed from: k */
    byte[] f657k;

    /* renamed from: l */
    byte[] f658l;

    /* renamed from: m */
    boolean f659m = false;

    /* renamed from: n */
    byte[] f660n = null;

    /* renamed from: o */
    byte[] f661o = null;

    /* renamed from: p */
    private static final Random f651p = new Random();

    /* renamed from: q */
    private static C0155e f652q = C0155e.m381a();

    /* renamed from: r */
    private static final byte[] f653r = {75, 71, 83, 33, 64, 35, 36, 37};

    /* renamed from: d */
    public static final C0140t f647d = new C0140t("", "", "");

    /* renamed from: e */
    static final C0140t f648e = new C0140t("", "", "");

    /* renamed from: f */
    static final C0140t f649f = new C0140t("?", "GUEST", "");

    /* renamed from: g */
    static final C0140t f650g = new C0140t(null);

    public C0140t(String str) {
        this.f656j = null;
        this.f655i = null;
        this.f654h = null;
        if (str != null) {
            try {
                str = m322b(str);
            } catch (UnsupportedEncodingException e) {
            }
            int length = str.length();
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                char charAt = str.charAt(i2);
                if (charAt == ';') {
                    this.f654h = str.substring(0, i2);
                    i = i2 + 1;
                } else if (charAt == ':') {
                    this.f656j = str.substring(i2 + 1);
                    break;
                }
                i2++;
            }
            this.f655i = str.substring(i, i2);
        }
        m314a();
        if (this.f654h == null) {
            this.f654h = f644a;
        }
        if (this.f655i == null) {
            this.f655i = f645b;
        }
        if (this.f656j == null) {
            this.f656j = f646c;
        }
    }

    public C0140t(String str, String str2, String str3) {
        if (str2 != null) {
            int indexOf = str2.indexOf(64);
            if (indexOf > 0) {
                str = str2.substring(indexOf + 1);
                str2 = str2.substring(0, indexOf);
            } else {
                int indexOf2 = str2.indexOf(92);
                if (indexOf2 > 0) {
                    str = str2.substring(0, indexOf2);
                    str2 = str2.substring(indexOf2 + 1);
                }
            }
        }
        this.f654h = str;
        this.f655i = str2;
        this.f656j = str3;
        m314a();
        if (str == null) {
            this.f654h = f644a;
        }
        if (str2 == null) {
            this.f655i = f645b;
        }
        if (str3 == null) {
            this.f656j = f646c;
        }
    }

    /* renamed from: a */
    static void m314a() {
        if (f644a != null) {
            return;
        }
        f644a = "?";
        f645b = "GUEST";
        f646c = "";
    }

    /* renamed from: a */
    public static byte[] m315a(String str) {
        if (str == null) {
            throw new RuntimeException("Password parameter is required");
        }
        try {
            C0156f c0156f = new C0156f();
            c0156f.update(str.getBytes(CharEncoding.UTF_16LE));
            return c0156f.digest();
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    /* renamed from: a */
    public static byte[] m316a(String str, String str2, String str3) {
        try {
            C0156f c0156f = new C0156f();
            c0156f.update(str3.getBytes(CharEncoding.UTF_16LE));
            C0153c c0153c = new C0153c(c0156f.digest());
            c0153c.update(str2.toUpperCase().getBytes(CharEncoding.UTF_16LE));
            c0153c.update(str.getBytes(CharEncoding.UTF_16LE));
            return c0153c.digest();
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e.getMessage());
        }
    }

    /* renamed from: a */
    public static byte[] m317a(String str, String str2, String str3, byte[] bArr, byte[] bArr2) {
        try {
            byte[] bArr3 = new byte[16];
            byte[] bArr4 = new byte[24];
            C0156f c0156f = new C0156f();
            c0156f.update(str3.getBytes(CharEncoding.UTF_16LE));
            C0153c c0153c = new C0153c(c0156f.digest());
            c0153c.update(str2.toUpperCase().getBytes(CharEncoding.UTF_16LE));
            c0153c.update(str.toUpperCase().getBytes(CharEncoding.UTF_16LE));
            C0153c c0153c2 = new C0153c(c0153c.digest());
            c0153c2.update(bArr);
            c0153c2.update(bArr2);
            c0153c2.digest(bArr4, 0, 16);
            System.arraycopy(bArr2, 0, bArr4, 16, 8);
            return bArr4;
        } catch (Exception e) {
            C0155e c0155e = f652q;
            if (C0155e.f728a > 0) {
                e.printStackTrace(f652q);
            }
            return null;
        }
    }

    /* renamed from: a */
    public static byte[] m318a(String str, byte[] bArr) {
        byte[] bArr2 = new byte[14];
        byte[] bArr3 = new byte[21];
        byte[] bArr4 = new byte[24];
        try {
            byte[] bytes = str.toUpperCase().getBytes(AbstractC0141u.f367aa);
            int length = bytes.length;
            System.arraycopy(bytes, 0, bArr2, 0, length <= 14 ? length : 14);
            m323b(bArr2, f653r, bArr3);
            m323b(bArr3, bArr, bArr4);
            return bArr4;
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Try setting jcifs.encoding=US-ASCII", e);
        }
    }

    /* renamed from: a */
    public static byte[] m319a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[8];
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.MD5);
            messageDigest.update(bArr2);
            messageDigest.update(bArr3, 0, 8);
            System.arraycopy(messageDigest.digest(), 0, bArr4, 0, 8);
            byte[] bArr5 = new byte[21];
            System.arraycopy(bArr, 0, bArr5, 0, 16);
            byte[] bArr6 = new byte[24];
            m323b(bArr5, bArr4, bArr6);
            return bArr6;
        } catch (GeneralSecurityException e) {
            C0155e c0155e = f652q;
            if (C0155e.f728a > 0) {
                e.printStackTrace(f652q);
            }
            throw new RuntimeException(MessageDigestAlgorithms.MD5, e);
        }
    }

    /* renamed from: a */
    static byte[] m320a(byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2) {
        C0153c c0153c = new C0153c(bArr);
        c0153c.update(bArr2);
        c0153c.update(bArr3, i, i2);
        byte[] digest = c0153c.digest();
        byte[] bArr4 = new byte[digest.length + bArr3.length];
        System.arraycopy(digest, 0, bArr4, 0, digest.length);
        System.arraycopy(bArr3, 0, bArr4, digest.length, bArr3.length);
        return bArr4;
    }

    /* renamed from: a */
    public static byte[] m321a(byte[] bArr, byte[] bArr2, byte[] bArr3, long j, byte[] bArr4) {
        int length = bArr4 != null ? bArr4.length : 0;
        byte[] bArr5 = new byte[length + 28 + 4];
        C0152b.m375b(257, bArr5, 0);
        C0152b.m375b(0, bArr5, 4);
        C0152b.m372a(j, bArr5, 8);
        System.arraycopy(bArr3, 0, bArr5, 16, 8);
        C0152b.m375b(0, bArr5, 24);
        if (bArr4 != null) {
            System.arraycopy(bArr4, 0, bArr5, 28, length);
        }
        C0152b.m375b(0, bArr5, length + 28);
        return m320a(bArr, bArr2, bArr5, 0, bArr5.length);
    }

    /* renamed from: b */
    static String m322b(String str) {
        int i;
        byte[] bArr = new byte[1];
        if (str == null) {
            return null;
        }
        int length = str.length();
        char[] cArr = new char[length];
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        while (i3 < length) {
            switch (z) {
                case false:
                    char charAt = str.charAt(i3);
                    if (charAt != '%') {
                        cArr[i2] = charAt;
                        i2++;
                        i = i3;
                        break;
                    } else {
                        z = true;
                        i = i3;
                        break;
                    }
                case true:
                    bArr[0] = (byte) (Integer.parseInt(str.substring(i3, i3 + 2), 16) & 255);
                    cArr[i2] = new String(bArr, 0, 1, HTTP.ASCII).charAt(0);
                    i = i3 + 1;
                    i2++;
                    z = false;
                    break;
                default:
                    i = i3;
                    break;
            }
            i3 = i + 1;
        }
        return new String(cArr, 0, i2);
    }

    /* renamed from: b */
    private static void m323b(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] bArr4 = new byte[7];
        byte[] bArr5 = new byte[8];
        for (int i = 0; i < bArr.length / 7; i++) {
            System.arraycopy(bArr, i * 7, bArr4, 0, 7);
            new C0147a(bArr4).m364b(bArr2, bArr5);
            System.arraycopy(bArr5, 0, bArr3, i * 8, 8);
        }
    }

    /* renamed from: b */
    public static byte[] m324b(String str, byte[] bArr) {
        byte[] bArr2 = null;
        byte[] bArr3 = new byte[21];
        byte[] bArr4 = new byte[24];
        try {
            bArr2 = str.getBytes(CharEncoding.UTF_16LE);
        } catch (UnsupportedEncodingException e) {
            C0155e c0155e = f652q;
            if (C0155e.f728a > 0) {
                e.printStackTrace(f652q);
            }
        }
        C0156f c0156f = new C0156f();
        c0156f.update(bArr2);
        try {
            c0156f.digest(bArr3, 0, 16);
        } catch (Exception e2) {
            C0155e c0155e2 = f652q;
            if (C0155e.f728a > 0) {
                e2.printStackTrace(f652q);
            }
        }
        m323b(bArr3, bArr, bArr4);
        return bArr4;
    }

    /* renamed from: a */
    void m325a(byte[] bArr, byte[] bArr2, int i) {
        if (this.f659m) {
            return;
        }
        try {
            C0156f c0156f = new C0156f();
            c0156f.update(this.f656j.getBytes(CharEncoding.UTF_16LE));
            switch (3) {
                case 0:
                case 1:
                case 2:
                    c0156f.update(c0156f.digest());
                    c0156f.digest(bArr2, i, 16);
                    return;
                case 3:
                case 4:
                case 5:
                    if (this.f660n == null) {
                        this.f660n = new byte[8];
                        f651p.nextBytes(this.f660n);
                    }
                    C0153c c0153c = new C0153c(c0156f.digest());
                    c0153c.update(this.f655i.toUpperCase().getBytes(CharEncoding.UTF_16LE));
                    c0153c.update(this.f654h.toUpperCase().getBytes(CharEncoding.UTF_16LE));
                    byte[] digest = c0153c.digest();
                    C0153c c0153c2 = new C0153c(digest);
                    c0153c2.update(bArr);
                    c0153c2.update(this.f660n);
                    C0153c c0153c3 = new C0153c(digest);
                    c0153c3.update(c0153c2.digest());
                    c0153c3.digest(bArr2, i, 16);
                    return;
                default:
                    c0156f.update(c0156f.digest());
                    c0156f.digest(bArr2, i, 16);
                    return;
            }
        } catch (Exception e) {
            throw new C0084bc("", e);
        }
    }

    /* renamed from: a */
    public byte[] m326a(byte[] bArr) {
        if (this.f659m) {
            return this.f657k;
        }
        switch (3) {
            case 0:
            case 1:
                return m318a(this.f656j, bArr);
            case 2:
                return m324b(this.f656j, bArr);
            case 3:
            case 4:
            case 5:
                if (this.f660n == null) {
                    this.f660n = new byte[8];
                    f651p.nextBytes(this.f660n);
                }
                return m317a(this.f654h, this.f655i, this.f656j, bArr, this.f660n);
            default:
                return m318a(this.f656j, bArr);
        }
    }

    /* renamed from: b */
    public String m327b() {
        return this.f654h;
    }

    /* renamed from: b */
    public byte[] m328b(byte[] bArr) {
        if (this.f659m) {
            return this.f658l;
        }
        switch (3) {
            case 0:
            case 1:
            case 2:
                return m324b(this.f656j, bArr);
            case 3:
            case 4:
            case 5:
                return new byte[0];
            default:
                return m324b(this.f656j, bArr);
        }
    }

    /* renamed from: c */
    public String m329c() {
        return this.f655i;
    }

    /* renamed from: c */
    public byte[] m330c(byte[] bArr) {
        switch (3) {
            case 0:
            case 1:
            case 2:
                byte[] bArr2 = new byte[40];
                m325a(bArr, bArr2, 0);
                System.arraycopy(m328b(bArr), 0, bArr2, 16, 24);
                return bArr2;
            case 3:
            case 4:
            case 5:
                throw new C0084bc("NTLMv2 requires extended security (jcifs.smb.client.useExtendedSecurity must be true if jcifs.smb.lmCompatibility >= 3)");
            default:
                return null;
        }
    }

    /* renamed from: d */
    public String m331d() {
        return this.f656j;
    }

    @Override // java.security.Principal
    public boolean equals(Object obj) {
        if (obj instanceof C0140t) {
            C0140t c0140t = (C0140t) obj;
            if (c0140t.f654h.toUpperCase().equals(this.f654h.toUpperCase()) && c0140t.f655i.toUpperCase().equals(this.f655i.toUpperCase())) {
                if (this.f659m && c0140t.f659m) {
                    return Arrays.equals(this.f657k, c0140t.f657k) && Arrays.equals(this.f658l, c0140t.f658l);
                }
                if (!this.f659m && this.f656j.equals(c0140t.f656j)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.security.Principal
    public String getName() {
        return this.f654h.length() > 0 && !this.f654h.equals("?") ? this.f654h + "\\" + this.f655i : this.f655i;
    }

    @Override // java.security.Principal
    public int hashCode() {
        return getName().toUpperCase().hashCode();
    }

    @Override // java.security.Principal
    public String toString() {
        return getName();
    }
}
