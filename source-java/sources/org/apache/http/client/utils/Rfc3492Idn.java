package org.apache.http.client.utils;

import java.util.StringTokenizer;
import org.apache.http.annotation.Immutable;

@Deprecated
@Immutable
/* loaded from: classes.dex */
public class Rfc3492Idn implements Idn {
    private static final String ACE_PREFIX = "xn--";
    private static final int base = 36;
    private static final int damp = 700;
    private static final char delimiter = '-';
    private static final int initial_bias = 72;
    private static final int initial_n = 128;
    private static final int skew = 38;
    private static final int tmax = 26;
    private static final int tmin = 1;

    private int adapt(int i, int i2, boolean z) {
        int i3 = z ? i / damp : i / 2;
        int i4 = i3 + (i3 / i2);
        int i5 = 0;
        while (i4 > 455) {
            i4 /= 35;
            i5 += base;
        }
        return ((i4 * base) / (i4 + skew)) + i5;
    }

    private int digit(char c) {
        if (c >= 'A' && c <= 'Z') {
            return c - 'A';
        }
        if (c >= 'a' && c <= 'z') {
            return c - 'a';
        }
        if (c >= '0' && c <= '9') {
            return (c - '0') + tmax;
        }
        throw new IllegalArgumentException("illegal digit: " + c);
    }

    protected String decode(String str) {
        String str2 = str;
        int i = initial_n;
        int i2 = 0;
        int i3 = initial_bias;
        StringBuilder sb = new StringBuilder(str2.length());
        int lastIndexOf = str2.lastIndexOf(45);
        if (lastIndexOf != -1) {
            sb.append(str2.subSequence(0, lastIndexOf));
            str2 = str2.substring(lastIndexOf + 1);
        }
        while (!str2.isEmpty()) {
            int i4 = i2;
            int i5 = 1;
            int i6 = base;
            while (!str2.isEmpty()) {
                char charAt = str2.charAt(0);
                str2 = str2.substring(1);
                int digit = digit(charAt);
                i2 += digit * i5;
                int i7 = i6 <= i3 + 1 ? 1 : i6 >= i3 + tmax ? tmax : i6 - i3;
                if (digit < i7) {
                    break;
                }
                i5 *= 36 - i7;
                i6 += base;
            }
            i3 = adapt(i2 - i4, sb.length() + 1, i4 == 0);
            i += i2 / (sb.length() + 1);
            int length = i2 % (sb.length() + 1);
            sb.insert(length, (char) i);
            i2 = length + 1;
        }
        return sb.toString();
    }

    @Override // org.apache.http.client.utils.Idn
    public String toUnicode(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            if (sb.length() > 0) {
                sb.append('.');
            }
            if (nextToken.startsWith(ACE_PREFIX)) {
                nextToken = decode(nextToken.substring(4));
            }
            sb.append(nextToken);
        }
        return sb.toString();
    }
}
