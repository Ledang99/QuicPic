package p000a.p006d;

import java.io.UnsupportedEncodingException;
import org.apache.commons.logging.impl.SimpleLog;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.LangUtils;

/* renamed from: a.d.au */
/* loaded from: classes.dex */
class C0075au extends AbstractC0081b {

    /* renamed from: G */
    private static byte[] f332G = {1, 1, 1, 1, 1, 1, 1, 1, 0};

    /* renamed from: D */
    private String f333D;

    /* renamed from: E */
    private byte[] f334E;

    /* renamed from: F */
    private int f335F;

    /* renamed from: b */
    String f336b;

    /* renamed from: c */
    private C0092bk f337c;

    /* renamed from: d */
    private boolean f338d;

    C0075au(C0092bk c0092bk, String str, String str2, AbstractC0141u abstractC0141u) {
        super(abstractC0141u);
        this.f338d = false;
        this.f337c = c0092bk;
        this.f336b = str;
        this.f333D = str2;
        this.f667g = (byte) 117;
    }

    @Override // p000a.p006d.AbstractC0081b
    /* renamed from: a */
    int mo167a(byte b2) {
        switch (b2 & 255) {
            case 0:
                return f332G[2];
            case 1:
                return f332G[4];
            case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                return f332G[3];
            case SimpleLog.LOG_LEVEL_OFF /* 7 */:
                return f332G[6];
            case 8:
                return f332G[8];
            case 16:
                return f332G[0];
            case LangUtils.HASH_OFFSET /* 37 */:
                return f332G[7];
            case 45:
                return f332G[5];
            default:
                return 0;
        }
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: n */
    int mo163n(byte[] bArr, int i) {
        if (this.f337c.f432e.f462s.f476g != 0 || (!this.f337c.f433f.f659m && this.f337c.f433f.f656j.length() <= 0)) {
            this.f335F = 1;
        } else {
            if (!this.f337c.f432e.f462s.f477h) {
                throw new RuntimeException("Plain text passwords are disabled");
            }
            this.f334E = this.f337c.f433f.m326a(this.f337c.f432e.f462s.f485p);
            this.f335F = this.f334E.length;
        }
        int i2 = i + 1;
        bArr[i] = this.f338d ? (byte) 1 : (byte) 0;
        bArr[i2] = 0;
        m332a(this.f335F, bArr, i2 + 1);
        return 4;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: o */
    int mo164o(byte[] bArr, int i) {
        int i2;
        if (this.f337c.f432e.f462s.f476g != 0 || (!this.f337c.f433f.f659m && this.f337c.f433f.f656j.length() <= 0)) {
            i2 = i + 1;
            bArr[i] = 0;
        } else {
            System.arraycopy(this.f334E, 0, bArr, i, this.f335F);
            i2 = this.f335F + i;
        }
        int a2 = i2 + m343a(this.f336b, bArr, i2);
        try {
            System.arraycopy(this.f333D.getBytes(HTTP.ASCII), 0, bArr, a2, this.f333D.length());
            int length = a2 + this.f333D.length();
            bArr[length] = 0;
            return (length + 1) - i;
        } catch (UnsupportedEncodingException e) {
            return 0;
        }
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: p */
    int mo165p(byte[] bArr, int i) {
        return 0;
    }

    @Override // p000a.p006d.AbstractC0141u
    /* renamed from: q */
    int mo166q(byte[] bArr, int i) {
        return 0;
    }
}
