package p000a.p006d;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import p000a.p007e.C0154d;
import p000a.p007e.C0155e;

/* renamed from: a.d.v */
/* loaded from: classes.dex */
public class C0142v implements InterfaceC0083bb {

    /* renamed from: a */
    static C0155e f687a = C0155e.m381a();

    /* renamed from: b */
    private MessageDigest f688b;

    /* renamed from: c */
    private byte[] f689c;

    /* renamed from: d */
    private boolean f690d;

    /* renamed from: e */
    private int f691e;

    /* renamed from: f */
    private int f692f;

    public C0142v(byte[] bArr, boolean z) {
        this.f690d = false;
        try {
            this.f688b = MessageDigest.getInstance(MessageDigestAlgorithms.MD5);
            this.f689c = bArr;
            this.f690d = z;
            this.f691e = 0;
            this.f692f = 0;
            C0155e c0155e = f687a;
            if (C0155e.f728a >= 5) {
                f687a.println("macSigningKey:");
                C0154d.m380a(f687a, bArr, 0, bArr.length);
            }
        } catch (NoSuchAlgorithmException e) {
            C0155e c0155e2 = f687a;
            if (C0155e.f728a > 0) {
                e.printStackTrace(f687a);
            }
            throw new C0084bc(MessageDigestAlgorithms.MD5, e);
        }
    }

    /* renamed from: a */
    public void m352a(byte[] bArr, int i, int i2) {
        C0155e c0155e = f687a;
        if (C0155e.f728a >= 5) {
            f687a.println("update: " + this.f691e + " " + i + ":" + i2);
            C0154d.m380a(f687a, bArr, i, Math.min(i2, 256));
            f687a.flush();
        }
        if (i2 == 0) {
            return;
        }
        this.f688b.update(bArr, i, i2);
        this.f691e++;
    }

    /* renamed from: a */
    void m353a(byte[] bArr, int i, int i2, AbstractC0141u abstractC0141u, AbstractC0141u abstractC0141u2) {
        abstractC0141u.f684x = this.f692f;
        if (abstractC0141u2 != null) {
            abstractC0141u2.f684x = this.f692f + 1;
            abstractC0141u2.f685y = false;
        }
        try {
            m352a(this.f689c, 0, this.f689c.length);
            int i3 = i + 14;
            for (int i4 = 0; i4 < 8; i4++) {
                bArr[i3 + i4] = 0;
            }
            AbstractC0141u.m333b(this.f692f, bArr, i3);
            m352a(bArr, i, i2);
            System.arraycopy(m355a(), 0, bArr, i3, 8);
            if (this.f690d) {
                this.f690d = false;
                System.arraycopy("BSRSPYL ".getBytes(), 0, bArr, i3, 8);
            }
        } catch (Exception e) {
            C0155e c0155e = f687a;
            if (C0155e.f728a > 0) {
                e.printStackTrace(f687a);
            }
        } finally {
            this.f692f += 2;
        }
    }

    /* renamed from: a */
    boolean m354a(byte[] bArr, int i, AbstractC0141u abstractC0141u) {
        m352a(this.f689c, 0, this.f689c.length);
        m352a(bArr, i, 14);
        byte[] bArr2 = new byte[8];
        AbstractC0141u.m333b(abstractC0141u.f684x, bArr2, 0);
        m352a(bArr2, 0, bArr2.length);
        int i2 = i + 14 + 8;
        if (abstractC0141u.f667g == 46) {
            C0069ao c0069ao = (C0069ao) abstractC0141u;
            m352a(bArr, i2, ((abstractC0141u.f670j - c0069ao.f262D) - 14) - 8);
            m352a(c0069ao.f264b, c0069ao.f265c, c0069ao.f262D);
        } else {
            m352a(bArr, i2, (abstractC0141u.f670j - 14) - 8);
        }
        byte[] m355a = m355a();
        for (int i3 = 0; i3 < 8; i3++) {
            if (m355a[i3] != bArr[i + 14 + i3]) {
                C0155e c0155e = f687a;
                if (C0155e.f728a >= 2) {
                    f687a.println("signature verification failure");
                    C0154d.m380a(f687a, m355a, 0, 8);
                    C0154d.m380a(f687a, bArr, i + 14, 8);
                }
                abstractC0141u.f685y = true;
                return true;
            }
        }
        abstractC0141u.f685y = false;
        return false;
    }

    /* renamed from: a */
    public byte[] m355a() {
        byte[] digest = this.f688b.digest();
        C0155e c0155e = f687a;
        if (C0155e.f728a >= 5) {
            f687a.println("digest: ");
            C0154d.m380a(f687a, digest, 0, digest.length);
            f687a.flush();
        }
        this.f691e = 0;
        return digest;
    }
}
