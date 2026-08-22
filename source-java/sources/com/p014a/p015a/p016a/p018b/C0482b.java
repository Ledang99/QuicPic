package com.p014a.p015a.p016a.p018b;

import java.util.Arrays;
import org.apache.http.message.TokenParser;

/* renamed from: com.a.a.a.b.b */
/* loaded from: classes.dex */
public final class C0482b {

    /* renamed from: a */
    static final int[] f1748a;

    /* renamed from: b */
    static final int[] f1749b;

    /* renamed from: c */
    static final int[] f1750c;

    /* renamed from: d */
    static final int[] f1751d;

    /* renamed from: e */
    static final int[] f1752e;

    /* renamed from: f */
    static final int[] f1753f;

    /* renamed from: g */
    static final int[] f1754g;

    /* renamed from: h */
    static final int[] f1755h;

    /* renamed from: i */
    private static final char[] f1756i = "0123456789ABCDEF".toCharArray();

    /* renamed from: j */
    private static final byte[] f1757j;

    static {
        int length = f1756i.length;
        f1757j = new byte[length];
        for (int i = 0; i < length; i++) {
            f1757j[i] = (byte) f1756i[i];
        }
        int[] iArr = new int[256];
        for (int i2 = 0; i2 < 32; i2++) {
            iArr[i2] = -1;
        }
        iArr[34] = 1;
        iArr[92] = 1;
        f1748a = iArr;
        int[] iArr2 = new int[f1748a.length];
        System.arraycopy(f1748a, 0, iArr2, 0, iArr2.length);
        for (int i3 = 128; i3 < 256; i3++) {
            iArr2[i3] = (i3 & 224) == 192 ? 2 : (i3 & 240) == 224 ? 3 : (i3 & 248) == 240 ? 4 : -1;
        }
        f1749b = iArr2;
        int[] iArr3 = new int[256];
        Arrays.fill(iArr3, -1);
        for (int i4 = 33; i4 < 256; i4++) {
            if (Character.isJavaIdentifierPart((char) i4)) {
                iArr3[i4] = 0;
            }
        }
        iArr3[64] = 0;
        iArr3[35] = 0;
        iArr3[42] = 0;
        iArr3[45] = 0;
        iArr3[43] = 0;
        f1750c = iArr3;
        int[] iArr4 = new int[256];
        System.arraycopy(f1750c, 0, iArr4, 0, iArr4.length);
        Arrays.fill(iArr4, 128, 128, 0);
        f1751d = iArr4;
        int[] iArr5 = new int[256];
        System.arraycopy(f1749b, 128, iArr5, 128, 128);
        Arrays.fill(iArr5, 0, 32, -1);
        iArr5[9] = 0;
        iArr5[10] = 10;
        iArr5[13] = 13;
        iArr5[42] = 42;
        f1752e = iArr5;
        int[] iArr6 = new int[256];
        System.arraycopy(f1749b, 128, iArr6, 128, 128);
        Arrays.fill(iArr6, 0, 32, -1);
        iArr6[32] = 1;
        iArr6[9] = 1;
        iArr6[10] = 10;
        iArr6[13] = 13;
        iArr6[47] = 47;
        iArr6[35] = 35;
        f1753f = iArr6;
        int[] iArr7 = new int[128];
        for (int i5 = 0; i5 < 32; i5++) {
            iArr7[i5] = -1;
        }
        iArr7[34] = 34;
        iArr7[92] = 92;
        iArr7[8] = 98;
        iArr7[9] = 116;
        iArr7[12] = 102;
        iArr7[10] = 110;
        iArr7[13] = 114;
        f1754g = iArr7;
        f1755h = new int[128];
        Arrays.fill(f1755h, -1);
        for (int i6 = 0; i6 < 10; i6++) {
            f1755h[i6 + 48] = i6;
        }
        for (int i7 = 0; i7 < 6; i7++) {
            f1755h[i7 + 97] = i7 + 10;
            f1755h[i7 + 65] = i7 + 10;
        }
    }

    /* renamed from: a */
    public static int m1666a(int i) {
        if (i > 127) {
            return -1;
        }
        return f1755h[i];
    }

    /* renamed from: a */
    public static void m1667a(StringBuilder sb, String str) {
        int[] iArr = f1754g;
        int length = iArr.length;
        int length2 = str.length();
        for (int i = 0; i < length2; i++) {
            char charAt = str.charAt(i);
            if (charAt >= length || iArr[charAt] == 0) {
                sb.append(charAt);
            } else {
                sb.append(TokenParser.ESCAPE);
                int i2 = iArr[charAt];
                if (i2 < 0) {
                    sb.append('u');
                    sb.append('0');
                    sb.append('0');
                    sb.append(f1756i[charAt >> 4]);
                    sb.append(f1756i[charAt & 15]);
                } else {
                    sb.append((char) i2);
                }
            }
        }
    }

    /* renamed from: a */
    public static int[] m1668a() {
        return f1748a;
    }

    /* renamed from: b */
    public static int[] m1669b() {
        return f1749b;
    }

    /* renamed from: c */
    public static int[] m1670c() {
        return f1750c;
    }

    /* renamed from: d */
    public static int[] m1671d() {
        return f1751d;
    }

    /* renamed from: e */
    public static int[] m1672e() {
        return f1752e;
    }

    /* renamed from: f */
    public static int[] m1673f() {
        return f1753f;
    }
}
