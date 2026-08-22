package p000a.p005c;

import java.io.IOException;
import java.net.UnknownHostException;
import org.apache.commons.codec.CharEncoding;
import p000a.p004b.C0042g;

/* renamed from: a.c.c */
/* loaded from: classes.dex */
public class C0052c extends AbstractC0050a {

    /* renamed from: b */
    private static final int f185b = 513;

    /* renamed from: c */
    private static final String f186c = null;

    /* renamed from: d */
    private static final byte[] f187d;

    /* renamed from: e */
    private byte[] f188e;

    /* renamed from: f */
    private String f189f;

    /* renamed from: g */
    private byte[] f190g;

    /* renamed from: h */
    private byte[] f191h;

    static {
        int i;
        byte[] bArr = new byte[0];
        if (f186c != null) {
            try {
                bArr = f186c.getBytes(CharEncoding.UTF_16LE);
            } catch (IOException e) {
            }
        }
        int length = bArr.length;
        byte[] bArr2 = new byte[0];
        try {
            String m104g = C0042g.m88a().m104g();
            if (m104g != null) {
                try {
                    bArr2 = m104g.getBytes(CharEncoding.UTF_16LE);
                } catch (IOException e2) {
                }
            }
        } catch (UnknownHostException e3) {
        }
        int length2 = bArr2.length;
        byte[] bArr3 = new byte[(length2 > 0 ? length2 + 4 : 0) + (length > 0 ? length + 4 : 0) + 4];
        if (length > 0) {
            m118b(bArr3, 0, 2);
            m118b(bArr3, 2, length);
            System.arraycopy(bArr, 0, bArr3, 4, length);
            i = length + 4;
        } else {
            i = 0;
        }
        if (length2 > 0) {
            m118b(bArr3, i, 1);
            int i2 = i + 2;
            m118b(bArr3, i2, length2);
            System.arraycopy(bArr2, 0, bArr3, i2 + 2, length2);
        }
        f187d = bArr3;
    }

    public C0052c() {
        this(m131e(), null, null);
    }

    public C0052c(int i, byte[] bArr, String str) {
        m121a(i);
        m134a(bArr);
        m133a(str);
        if (str != null) {
            m135b(m132f());
        }
    }

    public C0052c(byte[] bArr) {
        m130d(bArr);
    }

    /* renamed from: d */
    private void m130d(byte[] bArr) {
        for (int i = 0; i < 8; i++) {
            if (bArr[i] != f177a[i]) {
                throw new IOException("Not an NTLMSSP message.");
            }
        }
        if (m113a(bArr, 8) != 2) {
            throw new IOException("Not a Type 2 message.");
        }
        int a2 = m113a(bArr, 20);
        m121a(a2);
        byte[] c = m119c(bArr, 12);
        m133a(c.length != 0 ? new String(c, (a2 & 1) != 0 ? CharEncoding.UTF_16LE : m117b()) : null);
        int i2 = 24;
        while (true) {
            if (i2 >= 32) {
                break;
            }
            if (bArr[i2] != 0) {
                byte[] bArr2 = new byte[8];
                System.arraycopy(bArr, 24, bArr2, 0, 8);
                m134a(bArr2);
                break;
            }
            i2++;
        }
        int a3 = m113a(bArr, 16);
        if (a3 == 32 || bArr.length == 32) {
            return;
        }
        int i3 = 32;
        while (true) {
            if (i3 >= 40) {
                break;
            }
            if (bArr[i3] != 0) {
                byte[] bArr3 = new byte[8];
                System.arraycopy(bArr, 32, bArr3, 0, 8);
                m136c(bArr3);
                break;
            }
            i3++;
        }
        if (a3 == 40 || bArr.length == 40) {
            return;
        }
        byte[] c2 = m119c(bArr, 40);
        if (c2.length != 0) {
            m135b(c2);
        }
    }

    /* renamed from: e */
    public static int m131e() {
        return f185b;
    }

    /* renamed from: f */
    public static byte[] m132f() {
        return f187d;
    }

    /* renamed from: a */
    public void m133a(String str) {
        this.f189f = str;
    }

    /* renamed from: a */
    public void m134a(byte[] bArr) {
        this.f188e = bArr;
    }

    /* renamed from: b */
    public void m135b(byte[] bArr) {
        this.f191h = bArr;
    }

    /* renamed from: c */
    public void m136c(byte[] bArr) {
        this.f190g = bArr;
    }

    /* renamed from: c */
    public byte[] m137c() {
        return this.f188e;
    }

    /* renamed from: d */
    public byte[] m138d() {
        return this.f191h;
    }
}
