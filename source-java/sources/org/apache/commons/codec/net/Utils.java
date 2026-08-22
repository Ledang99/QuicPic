package org.apache.commons.codec.net;

import org.apache.commons.codec.DecoderException;

/* loaded from: classes.dex */
class Utils {
    Utils() {
    }

    static int digit16(byte b2) throws DecoderException {
        int digit = Character.digit((char) b2, 16);
        if (digit != -1) {
            return digit;
        }
        throw new DecoderException("Invalid URL encoding: not a valid digit (radix 16): " + ((int) b2));
    }
}
