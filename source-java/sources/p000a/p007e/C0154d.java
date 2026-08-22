package p000a.p007e;

import java.io.PrintStream;
import org.apache.http.message.TokenParser;

/* renamed from: a.e.d */
/* loaded from: classes.dex */
public class C0154d {

    /* renamed from: b */
    private static final String f725b = System.getProperty("line.separator");

    /* renamed from: c */
    private static final int f726c = f725b.length();

    /* renamed from: d */
    private static final char[] f727d = {TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP, TokenParser.f5042SP};

    /* renamed from: a */
    public static final char[] f724a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a */
    public static String m378a(int i, int i2) {
        char[] cArr = new char[i2];
        m379a(i, cArr, 0, i2);
        return new String(cArr);
    }

    /* renamed from: a */
    public static void m379a(int i, char[] cArr, int i2, int i3) {
        int i4 = i;
        while (i3 > 0) {
            int i5 = (i2 + i3) - 1;
            if (i5 < cArr.length) {
                cArr[i5] = f724a[i4 & 15];
            }
            if (i4 != 0) {
                i4 >>>= 4;
            }
            i3--;
        }
    }

    /* renamed from: a */
    public static void m380a(PrintStream printStream, byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return;
        }
        int i3 = i2 % 16;
        char[] cArr = new char[(i3 == 0 ? i2 / 16 : (i2 / 16) + 1) * (f726c + 74)];
        char[] cArr2 = new char[16];
        int i4 = 0;
        int i5 = 0;
        do {
            m379a(i5, cArr, i4, 5);
            int i6 = i4 + 5;
            int i7 = i6 + 1;
            cArr[i6] = ':';
            while (true) {
                if (i5 == i2) {
                    int i8 = 16 - i3;
                    System.arraycopy(f727d, 0, cArr, i7, i8 * 3);
                    i7 += i8 * 3;
                    System.arraycopy(f727d, 0, cArr2, i3, i8);
                    break;
                }
                int i9 = i7 + 1;
                cArr[i7] = TokenParser.f5042SP;
                int i10 = bArr[i + i5] & 255;
                m379a(i10, cArr, i9, 2);
                i7 = i9 + 2;
                if (i10 < 0 || Character.isISOControl((char) i10)) {
                    cArr2[i5 % 16] = '.';
                } else {
                    cArr2[i5 % 16] = (char) i10;
                }
                i5++;
                if (i5 % 16 == 0) {
                    break;
                }
            }
            int i11 = i7 + 1;
            cArr[i7] = TokenParser.f5042SP;
            int i12 = i11 + 1;
            cArr[i11] = TokenParser.f5042SP;
            int i13 = i12 + 1;
            cArr[i12] = '|';
            System.arraycopy(cArr2, 0, cArr, i13, 16);
            int i14 = i13 + 16;
            int i15 = i14 + 1;
            cArr[i14] = '|';
            f725b.getChars(0, f726c, cArr, i15);
            i4 = f726c + i15;
        } while (i5 < i2);
        printStream.println(cArr);
    }
}
