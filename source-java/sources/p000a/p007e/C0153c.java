package p000a.p007e;

import java.security.MessageDigest;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;

/* renamed from: a.e.c */
/* loaded from: classes.dex */
public class C0153c extends MessageDigest implements Cloneable {

    /* renamed from: a */
    private MessageDigest f721a;

    /* renamed from: b */
    private byte[] f722b;

    /* renamed from: c */
    private byte[] f723c;

    private C0153c(C0153c c0153c) {
        super("HMACT64");
        this.f722b = new byte[64];
        this.f723c = new byte[64];
        this.f722b = c0153c.f722b;
        this.f723c = c0153c.f723c;
        this.f721a = (MessageDigest) c0153c.f721a.clone();
    }

    public C0153c(byte[] bArr) {
        super("HMACT64");
        this.f722b = new byte[64];
        this.f723c = new byte[64];
        int min = Math.min(bArr.length, 64);
        for (int i = 0; i < min; i++) {
            this.f722b[i] = (byte) (bArr[i] ^ 54);
            this.f723c[i] = (byte) (bArr[i] ^ 92);
        }
        while (min < 64) {
            this.f722b[min] = 54;
            this.f723c[min] = 92;
            min++;
        }
        try {
            this.f721a = MessageDigest.getInstance(MessageDigestAlgorithms.MD5);
            engineReset();
        } catch (Exception e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    @Override // java.security.MessageDigest, java.security.MessageDigestSpi
    public Object clone() {
        try {
            return new C0153c(this);
        } catch (CloneNotSupportedException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    @Override // java.security.MessageDigestSpi
    protected int engineDigest(byte[] bArr, int i, int i2) {
        byte[] digest = this.f721a.digest();
        this.f721a.update(this.f723c);
        this.f721a.update(digest);
        try {
            return this.f721a.digest(bArr, i, i2);
        } catch (Exception e) {
            throw new IllegalStateException();
        }
    }

    @Override // java.security.MessageDigestSpi
    protected byte[] engineDigest() {
        byte[] digest = this.f721a.digest();
        this.f721a.update(this.f723c);
        return this.f721a.digest(digest);
    }

    @Override // java.security.MessageDigestSpi
    protected int engineGetDigestLength() {
        return this.f721a.getDigestLength();
    }

    @Override // java.security.MessageDigestSpi
    protected void engineReset() {
        this.f721a.reset();
        this.f721a.update(this.f722b);
    }

    @Override // java.security.MessageDigestSpi
    protected void engineUpdate(byte b2) {
        this.f721a.update(b2);
    }

    @Override // java.security.MessageDigestSpi
    protected void engineUpdate(byte[] bArr, int i, int i2) {
        this.f721a.update(bArr, i, i2);
    }
}
