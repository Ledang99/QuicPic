package org.apache.commons.codec.digest;

import java.util.Random;

/* loaded from: classes.dex */
class B64 {
    static final String B64T = "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

    B64() {
    }

    static void b64from24bit(byte b2, byte b3, byte b4, int i, StringBuilder sb) {
        int i2 = ((b2 << 16) & 16777215) | ((b3 << 8) & 65535) | (b4 & 255);
        int i3 = i;
        while (true) {
            int i4 = i3 - 1;
            if (i3 <= 0) {
                return;
            }
            sb.append(B64T.charAt(i2 & 63));
            i2 >>= 6;
            i3 = i4;
        }
    }

    static String getRandomSalt(int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 1; i2 <= i; i2++) {
            sb.append(B64T.charAt(new Random().nextInt(B64T.length())));
        }
        return sb.toString();
    }
}
