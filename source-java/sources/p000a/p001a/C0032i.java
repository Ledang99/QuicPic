package p000a.p001a;

import org.apache.http.HttpStatus;

/* renamed from: a.a.i */
/* loaded from: classes.dex */
public class C0032i extends C0034k {

    /* renamed from: a */
    static final char[] f75a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    public C0032i(String str) {
        char[] charArray = str.toCharArray();
        this.f76b = m58a(charArray, 0, 8);
        this.f77c = m60b(m58a(charArray, 9, 4));
        this.f78d = m60b(m58a(charArray, 14, 4));
        this.f79e = m57a(m58a(charArray, 19, 2));
        this.f80f = m57a(m58a(charArray, 21, 2));
        this.f81g = new byte[6];
        this.f81g[0] = m57a(m58a(charArray, 24, 2));
        this.f81g[1] = m57a(m58a(charArray, 26, 2));
        this.f81g[2] = m57a(m58a(charArray, 28, 2));
        this.f81g[3] = m57a(m58a(charArray, 30, 2));
        this.f81g[4] = m57a(m58a(charArray, 32, 2));
        this.f81g[5] = m57a(m58a(charArray, 34, 2));
    }

    /* renamed from: a */
    private static byte m57a(int i) {
        return (byte) (i & 255);
    }

    /* renamed from: a */
    public static int m58a(char[] cArr, int i, int i2) {
        int i3;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = i; i6 < cArr.length && i4 < i2; i6++) {
            int i7 = i5 << 4;
            switch (cArr[i6]) {
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                    i3 = cArr[i6] - '0';
                    break;
                case 'A':
                case 'B':
                case 'C':
                case 'D':
                case 'E':
                case 'F':
                    i3 = (cArr[i6] - 'A') + 10;
                    break;
                case 'a':
                case 'b':
                case 'c':
                case HttpStatus.SC_CONTINUE /* 100 */:
                case HttpStatus.SC_SWITCHING_PROTOCOLS /* 101 */:
                case HttpStatus.SC_PROCESSING /* 102 */:
                    i3 = (cArr[i6] - 'a') + 10;
                    break;
                default:
                    throw new IllegalArgumentException(new String(cArr, i, i2));
            }
            i5 = i7 + i3;
            i4++;
        }
        return i5;
    }

    /* renamed from: a */
    public static String m59a(int i, int i2) {
        char[] cArr = new char[i2];
        int length = cArr.length;
        while (true) {
            int i3 = length - 1;
            if (length <= 0) {
                return new String(cArr);
            }
            cArr[i3] = f75a[i & 15];
            i >>>= 4;
            length = i3;
        }
    }

    /* renamed from: b */
    private static short m60b(int i) {
        return (short) (65535 & i);
    }

    public String toString() {
        return m59a(this.f76b, 8) + '-' + m59a(this.f77c, 4) + '-' + m59a(this.f78d, 4) + '-' + m59a(this.f79e, 2) + m59a(this.f80f, 2) + '-' + m59a(this.f81g[0], 2) + m59a(this.f81g[1], 2) + m59a(this.f81g[2], 2) + m59a(this.f81g[3], 2) + m59a(this.f81g[4], 2) + m59a(this.f81g[5], 2);
    }
}
