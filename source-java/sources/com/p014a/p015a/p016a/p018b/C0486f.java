package com.p014a.p015a.p016a.p018b;

import java.math.BigDecimal;

/* renamed from: com.a.a.a.b.f */
/* loaded from: classes.dex */
public final class C0486f {

    /* renamed from: a */
    static final String f1773a = String.valueOf(Long.MIN_VALUE).substring(1);

    /* renamed from: b */
    static final String f1774b = String.valueOf(Long.MAX_VALUE);

    /* renamed from: a */
    public static double m1690a(String str) {
        if ("2.2250738585072012e-308".equals(str)) {
            return Double.MIN_VALUE;
        }
        return Double.parseDouble(str);
    }

    /* renamed from: a */
    public static double m1691a(String str, double d) {
        if (str == null) {
            return d;
        }
        String trim = str.trim();
        if (trim.length() == 0) {
            return d;
        }
        try {
            return m1690a(trim);
        } catch (NumberFormatException e) {
            return d;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0023  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int m1692a(String str, int i) {
        String trim;
        int length;
        int i2;
        String str2;
        int i3 = 0;
        if (str == null || (length = (trim = str.trim()).length()) == 0) {
            return i;
        }
        try {
            if (0 < length) {
                char charAt = trim.charAt(0);
                if (charAt == '+') {
                    str2 = trim.substring(1);
                    i2 = str2.length();
                } else if (charAt == '-') {
                    i3 = 1;
                    i2 = length;
                    str2 = trim;
                }
                while (i3 < i2) {
                    char charAt2 = str2.charAt(i3);
                    if (charAt2 > '9' || charAt2 < '0') {
                        try {
                            return (int) m1690a(str2);
                        } catch (NumberFormatException e) {
                            return i;
                        }
                    }
                    i3++;
                }
                return Integer.parseInt(str2);
            }
            return Integer.parseInt(str2);
        } catch (NumberFormatException e2) {
            return i;
        }
        i2 = length;
        str2 = trim;
        while (i3 < i2) {
        }
    }

    /* renamed from: a */
    public static int m1693a(char[] cArr, int i, int i2) {
        int i3 = cArr[i] - '0';
        int i4 = i2 + i;
        int i5 = i + 1;
        if (i5 >= i4) {
            return i3;
        }
        int i6 = (i3 * 10) + (cArr[i5] - '0');
        int i7 = i5 + 1;
        if (i7 >= i4) {
            return i6;
        }
        int i8 = (i6 * 10) + (cArr[i7] - '0');
        int i9 = i7 + 1;
        if (i9 >= i4) {
            return i8;
        }
        int i10 = (i8 * 10) + (cArr[i9] - '0');
        int i11 = i9 + 1;
        if (i11 >= i4) {
            return i10;
        }
        int i12 = (i10 * 10) + (cArr[i11] - '0');
        int i13 = i11 + 1;
        if (i13 >= i4) {
            return i12;
        }
        int i14 = (i12 * 10) + (cArr[i13] - '0');
        int i15 = i13 + 1;
        if (i15 >= i4) {
            return i14;
        }
        int i16 = (i14 * 10) + (cArr[i15] - '0');
        int i17 = i15 + 1;
        if (i17 >= i4) {
            return i16;
        }
        int i18 = (i16 * 10) + (cArr[i17] - '0');
        return i17 + 1 < i4 ? (i18 * 10) + (cArr[r2] - '0') : i18;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0023  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long m1694a(String str, long j) {
        String trim;
        int length;
        int i;
        String str2;
        int i2 = 0;
        if (str == null || (length = (trim = str.trim()).length()) == 0) {
            return j;
        }
        try {
            if (0 < length) {
                char charAt = trim.charAt(0);
                if (charAt == '+') {
                    str2 = trim.substring(1);
                    i = str2.length();
                } else if (charAt == '-') {
                    i2 = 1;
                    i = length;
                    str2 = trim;
                }
                while (i2 < i) {
                    char charAt2 = str2.charAt(i2);
                    if (charAt2 > '9' || charAt2 < '0') {
                        try {
                            return (long) m1690a(str2);
                        } catch (NumberFormatException e) {
                            return j;
                        }
                    }
                    i2++;
                }
                return Long.parseLong(str2);
            }
            return Long.parseLong(str2);
        } catch (NumberFormatException e2) {
            return j;
        }
        i = length;
        str2 = trim;
        while (i2 < i) {
        }
    }

    /* renamed from: a */
    public static BigDecimal m1695a(char[] cArr) {
        return m1699c(cArr, 0, cArr.length);
    }

    /* renamed from: a */
    public static boolean m1696a(char[] cArr, int i, int i2, boolean z) {
        String str = z ? f1773a : f1774b;
        int length = str.length();
        if (i2 < length) {
            return true;
        }
        if (i2 > length) {
            return false;
        }
        for (int i3 = 0; i3 < length; i3++) {
            int charAt = cArr[i + i3] - str.charAt(i3);
            if (charAt != 0) {
                return charAt < 0;
            }
        }
        return true;
    }

    /* renamed from: b */
    public static long m1697b(char[] cArr, int i, int i2) {
        int i3 = i2 - 9;
        return m1693a(cArr, i3 + i, 9) + (m1693a(cArr, i, i3) * 1000000000);
    }

    /* renamed from: b */
    private static NumberFormatException m1698b(String str) {
        return new NumberFormatException("Value \"" + str + "\" can not be represented as BigDecimal");
    }

    /* renamed from: c */
    public static BigDecimal m1699c(char[] cArr, int i, int i2) {
        try {
            return new BigDecimal(cArr, i, i2);
        } catch (NumberFormatException e) {
            throw m1698b(new String(cArr, i, i2));
        }
    }
}
