package com.p014a.p015a.p016a.p018b;

import java.io.CharConversionException;
import java.io.InputStream;

/* renamed from: com.a.a.a.b.h */
/* loaded from: classes.dex */
public class C0488h extends AbstractC0481a {

    /* renamed from: g */
    protected final boolean f1776g;

    /* renamed from: h */
    protected char f1777h;

    /* renamed from: i */
    protected int f1778i;

    /* renamed from: j */
    protected int f1779j;

    /* renamed from: k */
    protected final boolean f1780k;

    public C0488h(C0483c c0483c, InputStream inputStream, byte[] bArr, int i, int i2, boolean z) {
        super(c0483c, inputStream, bArr, i, i2);
        this.f1777h = (char) 0;
        this.f1778i = 0;
        this.f1779j = 0;
        this.f1776g = z;
        this.f1780k = inputStream != null;
    }

    /* renamed from: a */
    private void m1700a(int i, int i2) {
        throw new CharConversionException("Unexpected EOF in the middle of a 4-byte UTF-32 char: got " + i + ", needed " + i2 + ", at char #" + this.f1778i + ", byte #" + (this.f1779j + i) + ")");
    }

    /* renamed from: a */
    private void m1701a(int i, int i2, String str) {
        throw new CharConversionException("Invalid UTF-32 character 0x" + Integer.toHexString(i) + str + " at char #" + (this.f1778i + i2) + ", byte #" + ((this.f1779j + this.f1745d) - 1) + ")");
    }

    /* renamed from: a */
    private boolean m1702a(int i) {
        this.f1779j += this.f1746e - i;
        if (i > 0) {
            if (this.f1745d > 0) {
                for (int i2 = 0; i2 < i; i2++) {
                    this.f1744c[i2] = this.f1744c[this.f1745d + i2];
                }
                this.f1745d = 0;
            }
            this.f1746e = i;
        } else {
            this.f1745d = 0;
            int read = this.f1743b == null ? -1 : this.f1743b.read(this.f1744c);
            if (read < 1) {
                this.f1746e = 0;
                if (read < 0) {
                    if (!this.f1780k) {
                        return false;
                    }
                    m1663a();
                    return false;
                }
                m1665b();
            }
            this.f1746e = read;
        }
        while (this.f1746e < 4) {
            int read2 = this.f1743b == null ? -1 : this.f1743b.read(this.f1744c, this.f1746e, this.f1744c.length - this.f1746e);
            if (read2 < 1) {
                if (read2 < 0) {
                    if (this.f1780k) {
                        m1663a();
                    }
                    m1700a(this.f1746e, 4);
                }
                m1665b();
            }
            this.f1746e = read2 + this.f1746e;
        }
        return true;
    }

    @Override // com.p014a.p015a.p016a.p018b.AbstractC0481a, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public /* bridge */ /* synthetic */ void close() {
        super.close();
    }

    @Override // com.p014a.p015a.p016a.p018b.AbstractC0481a, java.io.Reader
    public /* bridge */ /* synthetic */ int read() {
        return super.read();
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        if (this.f1744c == null) {
            return -1;
        }
        if (i2 < 1) {
            return i2;
        }
        if (i < 0 || i + i2 > cArr.length) {
            m1664a(cArr, i, i2);
        }
        int i6 = i2 + i;
        if (this.f1777h != 0) {
            i3 = i + 1;
            cArr[i] = this.f1777h;
            this.f1777h = (char) 0;
        } else {
            int i7 = this.f1746e - this.f1745d;
            if (i7 < 4 && !m1702a(i7)) {
                return -1;
            }
            i3 = i;
        }
        while (true) {
            if (i3 >= i6) {
                i4 = i3;
                break;
            }
            int i8 = this.f1745d;
            if (this.f1776g) {
                i5 = (this.f1744c[i8 + 3] & 255) | (this.f1744c[i8] << 24) | ((this.f1744c[i8 + 1] & 255) << 16) | ((this.f1744c[i8 + 2] & 255) << 8);
            } else {
                i5 = (this.f1744c[i8 + 3] << 24) | (this.f1744c[i8] & 255) | ((this.f1744c[i8 + 1] & 255) << 8) | ((this.f1744c[i8 + 2] & 255) << 16);
            }
            this.f1745d += 4;
            if (i5 > 65535) {
                if (i5 > 1114111) {
                    m1701a(i5, i3 - i, "(above " + Integer.toHexString(1114111) + ") ");
                }
                int i9 = i5 - 65536;
                i4 = i3 + 1;
                cArr[i3] = (char) (55296 + (i9 >> 10));
                i5 = (i9 & 1023) | 56320;
                if (i4 >= i6) {
                    this.f1777h = (char) i5;
                    break;
                }
            } else {
                i4 = i3;
            }
            i3 = i4 + 1;
            cArr[i4] = (char) i5;
            if (this.f1745d >= this.f1746e) {
                i4 = i3;
                break;
            }
        }
        int i10 = i4 - i;
        this.f1778i += i10;
        return i10;
    }
}
