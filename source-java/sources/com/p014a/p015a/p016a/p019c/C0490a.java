package com.p014a.p015a.p016a.p019c;

import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.AbstractC0523m;
import com.p014a.p015a.p016a.EnumC0477a;
import com.p014a.p015a.p016a.p018b.C0483c;
import com.p014a.p015a.p016a.p018b.C0485e;
import com.p014a.p015a.p016a.p018b.C0488h;
import com.p014a.p015a.p016a.p020d.C0496a;
import com.p014a.p015a.p016a.p020d.C0499d;
import java.io.ByteArrayInputStream;
import java.io.CharConversionException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

/* renamed from: com.a.a.a.c.a */
/* loaded from: classes.dex */
public final class C0490a {

    /* renamed from: a */
    protected final C0483c f1785a;

    /* renamed from: b */
    protected final InputStream f1786b;

    /* renamed from: c */
    protected final byte[] f1787c;

    /* renamed from: e */
    protected boolean f1789e = true;

    /* renamed from: f */
    protected int f1790f = 0;

    /* renamed from: g */
    private int f1791g = 0;

    /* renamed from: h */
    private int f1792h = 0;

    /* renamed from: d */
    protected int f1788d = 0;

    /* renamed from: i */
    private final boolean f1793i = true;

    public C0490a(C0483c c0483c, InputStream inputStream) {
        this.f1785a = c0483c;
        this.f1786b = inputStream;
        this.f1787c = c0483c.m1686e();
    }

    /* renamed from: a */
    private void m1706a(String str) {
        throw new CharConversionException("Unsupported UCS-4 endianness (" + str + ") detected");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:5:0x000e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x003a  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean m1707b(int i) {
        int i2;
        switch (i) {
            case -16842752:
                m1706a("3412");
                i2 = i >>> 16;
                if (i2 != 65279) {
                    if (i2 != 65534) {
                        if ((i >>> 8) != 15711167) {
                            break;
                        } else {
                            this.f1791g += 3;
                            this.f1790f = 1;
                            this.f1789e = true;
                            break;
                        }
                    } else {
                        this.f1791g += 2;
                        this.f1790f = 2;
                        this.f1789e = false;
                        break;
                    }
                } else {
                    this.f1791g += 2;
                    this.f1790f = 2;
                    this.f1789e = true;
                    break;
                }
            case -131072:
                this.f1791g += 4;
                this.f1790f = 4;
                this.f1789e = false;
                break;
            case 65279:
                this.f1789e = true;
                this.f1791g += 4;
                this.f1790f = 4;
                break;
            case 65534:
                m1706a("2143");
                m1706a("3412");
                i2 = i >>> 16;
                if (i2 != 65279) {
                }
                break;
            default:
                i2 = i >>> 16;
                if (i2 != 65279) {
                }
                break;
        }
        return true;
    }

    /* renamed from: c */
    private boolean m1708c(int i) {
        if ((i >> 8) == 0) {
            this.f1789e = true;
        } else if ((16777215 & i) == 0) {
            this.f1789e = false;
        } else if (((-16711681) & i) == 0) {
            m1706a("3412");
        } else {
            if (((-65281) & i) != 0) {
                return false;
            }
            m1706a("2143");
        }
        this.f1790f = 4;
        return true;
    }

    /* renamed from: d */
    private boolean m1709d(int i) {
        if ((65280 & i) == 0) {
            this.f1789e = true;
        } else {
            if ((i & 255) != 0) {
                return false;
            }
            this.f1789e = false;
        }
        this.f1790f = 2;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0052, code lost:
    
        if (m1709d(r2 >>> 16) != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0076, code lost:
    
        if (m1709d(((r5.f1787c[r5.f1791g] & 255) << 8) | (r5.f1787c[r5.f1791g + 1] & 255)) != false) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public EnumC0477a m1710a() {
        EnumC0477a enumC0477a;
        boolean z = true;
        if (m1712a(4)) {
            int i = (this.f1787c[this.f1791g] << 24) | ((this.f1787c[this.f1791g + 1] & 255) << 16) | ((this.f1787c[this.f1791g + 2] & 255) << 8) | (this.f1787c[this.f1791g + 3] & 255);
            if (!m1707b(i)) {
                if (!m1708c(i)) {
                }
            }
        } else {
            if (m1712a(2)) {
            }
            z = false;
        }
        if (z) {
            switch (this.f1790f) {
                case 1:
                    enumC0477a = EnumC0477a.UTF8;
                    break;
                case 2:
                    if (!this.f1789e) {
                        enumC0477a = EnumC0477a.UTF16_LE;
                        break;
                    } else {
                        enumC0477a = EnumC0477a.UTF16_BE;
                        break;
                    }
                case 3:
                default:
                    throw new RuntimeException("Internal error");
                case 4:
                    if (!this.f1789e) {
                        enumC0477a = EnumC0477a.UTF32_LE;
                        break;
                    } else {
                        enumC0477a = EnumC0477a.UTF32_BE;
                        break;
                    }
            }
        } else {
            enumC0477a = EnumC0477a.UTF8;
        }
        this.f1785a.m1676a(enumC0477a);
        return enumC0477a;
    }

    /* renamed from: a */
    public AbstractC0518h m1711a(int i, AbstractC0523m abstractC0523m, C0496a c0496a, C0499d c0499d, boolean z, boolean z2) {
        if (m1710a() != EnumC0477a.UTF8 || !z) {
            return new C0493d(this.f1785a, i, m1713b(), abstractC0523m, c0499d.m1847a(z, z2));
        }
        return new C0494e(this.f1785a, i, this.f1786b, abstractC0523m, c0496a.m1823a(z, z2), this.f1787c, this.f1791g, this.f1792h, this.f1793i);
    }

    /* renamed from: a */
    protected boolean m1712a(int i) {
        int i2 = this.f1792h - this.f1791g;
        while (i2 < i) {
            int read = this.f1786b == null ? -1 : this.f1786b.read(this.f1787c, this.f1792h, this.f1787c.length - this.f1792h);
            if (read < 1) {
                return false;
            }
            this.f1792h += read;
            i2 = read + i2;
        }
        return true;
    }

    /* renamed from: b */
    public Reader m1713b() {
        EnumC0477a m1682b = this.f1785a.m1682b();
        switch (m1682b.m1607c()) {
            case 8:
            case 16:
                InputStream inputStream = this.f1786b;
                return new InputStreamReader(inputStream == null ? new ByteArrayInputStream(this.f1787c, this.f1791g, this.f1792h) : this.f1791g < this.f1792h ? new C0485e(this.f1785a, inputStream, this.f1787c, this.f1791g, this.f1792h) : inputStream, m1682b.m1605a());
            case 32:
                return new C0488h(this.f1785a, this.f1786b, this.f1787c, this.f1791g, this.f1792h, this.f1785a.m1682b().m1606b());
            default:
                throw new RuntimeException("Internal error");
        }
    }
}
