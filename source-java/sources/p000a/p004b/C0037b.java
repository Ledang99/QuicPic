package p000a.p004b;

import java.io.UnsupportedEncodingException;

/* renamed from: a.b.b */
/* loaded from: classes.dex */
public class C0037b {

    /* renamed from: b */
    public String f96b;

    /* renamed from: c */
    public String f97c;

    /* renamed from: d */
    public int f98d;

    /* renamed from: e */
    int f99e;

    /* renamed from: f */
    private static final String f95f = null;

    /* renamed from: a */
    static final String f94a = System.getProperty("file.encoding");

    C0037b() {
    }

    public C0037b(String str, int i, String str2) {
        this.f96b = (str.length() > 15 ? str.substring(0, 15) : str).toUpperCase();
        this.f98d = i;
        this.f97c = (str2 == null || str2.length() <= 0) ? f95f : str2;
        this.f99e = 0;
    }

    /* renamed from: a */
    int m64a(byte[] bArr, int i) {
        bArr[i] = 32;
        try {
            byte[] bytes = this.f96b.getBytes(f94a);
            int i2 = 0;
            while (i2 < bytes.length) {
                bArr[(i2 * 2) + 1 + i] = (byte) (((bytes[i2] & 240) >> 4) + 65);
                bArr[(i2 * 2) + 2 + i] = (byte) ((bytes[i2] & 15) + 65);
                i2++;
            }
            while (i2 < 15) {
                bArr[(i2 * 2) + 1 + i] = 67;
                bArr[(i2 * 2) + 2 + i] = 65;
                i2++;
            }
            bArr[i + 31] = (byte) (((this.f98d & 240) >> 4) + 65);
            bArr[i + 31 + 1] = (byte) ((this.f98d & 15) + 65);
        } catch (UnsupportedEncodingException e) {
        }
        return m66c(bArr, i + 33) + 33;
    }

    /* renamed from: b */
    int m65b(byte[] bArr, int i) {
        byte[] bArr2 = new byte[33];
        int i2 = 15;
        for (int i3 = 0; i3 < 15; i3++) {
            bArr2[i3] = (byte) (((bArr[((i3 * 2) + 1) + i] & 255) - 65) << 4);
            bArr2[i3] = (byte) (bArr2[i3] | ((byte) (((bArr[((i3 * 2) + 2) + i] & 255) - 65) & 15)));
            if (bArr2[i3] != 32) {
                i2 = i3 + 1;
            }
        }
        try {
            this.f96b = new String(bArr2, 0, i2, f94a);
        } catch (UnsupportedEncodingException e) {
        }
        this.f98d = ((bArr[i + 31] & 255) - 65) << 4;
        this.f98d |= ((bArr[(i + 31) + 1] & 255) - 65) & 15;
        return m67d(bArr, i + 33) + 33;
    }

    /* renamed from: c */
    int m66c(byte[] bArr, int i) {
        if (this.f97c == null) {
            bArr[i] = 0;
            return 1;
        }
        int i2 = i + 1;
        bArr[i] = 46;
        try {
            System.arraycopy(this.f97c.getBytes(f94a), 0, bArr, i2, this.f97c.length());
        } catch (UnsupportedEncodingException e) {
        }
        int length = i2 + this.f97c.length();
        bArr[length] = 0;
        int i3 = (length + 1) - 2;
        int length2 = i3 - this.f97c.length();
        int i4 = i3;
        int i5 = 0;
        while (true) {
            if (bArr[i4] == 46) {
                bArr[i4] = (byte) i5;
                i5 = 0;
            } else {
                i5++;
            }
            int i6 = i4 - 1;
            if (i4 <= length2) {
                return this.f97c.length() + 2;
            }
            i4 = i6;
        }
    }

    /* renamed from: d */
    int m67d(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = bArr[i] & 255;
        if (i3 == 0) {
            this.f97c = null;
            return 1;
        }
        try {
            StringBuffer stringBuffer = new StringBuffer(new String(bArr, i2, i3, f94a));
            int i4 = i2 + i3;
            while (true) {
                i2 = i4 + 1;
                int i5 = bArr[i4] & 255;
                if (i5 == 0) {
                    break;
                }
                stringBuffer.append('.').append(new String(bArr, i2, i5, f94a));
                i4 = i2 + i5;
            }
            this.f97c = stringBuffer.toString();
        } catch (UnsupportedEncodingException e) {
        }
        return i2 - i;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C0037b)) {
            return false;
        }
        C0037b c0037b = (C0037b) obj;
        return (this.f97c == null && c0037b.f97c == null) ? this.f96b.equals(c0037b.f96b) && this.f98d == c0037b.f98d : this.f96b.equals(c0037b.f96b) && this.f98d == c0037b.f98d && this.f97c.equals(c0037b.f97c);
    }

    public int hashCode() {
        int hashCode = this.f96b.hashCode() + (this.f98d * 65599) + (this.f99e * 65599);
        return (this.f97c == null || this.f97c.length() == 0) ? hashCode : hashCode + this.f97c.hashCode();
    }
}
