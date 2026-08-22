package org.apache.commons.codec.language;

import java.util.Locale;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

/* loaded from: classes.dex */
public class ColognePhonetic implements StringEncoder {
    private static final char[] AEIJOUY = {'A', 'E', 'I', 'J', 'O', 'U', 'Y'};
    private static final char[] SCZ = {'S', 'C', 'Z'};
    private static final char[] WFPV = {'W', 'F', 'P', 'V'};
    private static final char[] GKQ = {'G', 'K', 'Q'};
    private static final char[] CKQ = {'C', 'K', 'Q'};
    private static final char[] AHKLOQRUX = {'A', 'H', 'K', 'L', 'O', 'Q', 'R', 'U', 'X'};

    /* renamed from: SZ */
    private static final char[] f5015SZ = {'S', 'Z'};
    private static final char[] AHOUKQX = {'A', 'H', 'O', 'U', 'K', 'Q', 'X'};
    private static final char[] TDX = {'T', 'D', 'X'};
    private static final char[][] PREPROCESS_MAP = {new char[]{196, 'A'}, new char[]{220, 'U'}, new char[]{214, 'O'}, new char[]{223, 'S'}};

    private abstract class CologneBuffer {
        protected final char[] data;
        protected int length;

        public CologneBuffer(int i) {
            this.length = 0;
            this.data = new char[i];
            this.length = 0;
        }

        public CologneBuffer(char[] cArr) {
            this.length = 0;
            this.data = cArr;
            this.length = cArr.length;
        }

        protected abstract char[] copyData(int i, int i2);

        public int length() {
            return this.length;
        }

        public String toString() {
            return new String(copyData(0, this.length));
        }
    }

    private class CologneInputBuffer extends CologneBuffer {
        public CologneInputBuffer(char[] cArr) {
            super(cArr);
        }

        public void addLeft(char c) {
            this.length++;
            this.data[getNextPos()] = c;
        }

        @Override // org.apache.commons.codec.language.ColognePhonetic.CologneBuffer
        protected char[] copyData(int i, int i2) {
            char[] cArr = new char[i2];
            System.arraycopy(this.data, (this.data.length - this.length) + i, cArr, 0, i2);
            return cArr;
        }

        public char getNextChar() {
            return this.data[getNextPos()];
        }

        protected int getNextPos() {
            return this.data.length - this.length;
        }

        public char removeNext() {
            this.length--;
            return getNextChar();
        }
    }

    private class CologneOutputBuffer extends CologneBuffer {
        public CologneOutputBuffer(int i) {
            super(i);
        }

        public void addRight(char c) {
            this.data[this.length] = c;
            this.length++;
        }

        @Override // org.apache.commons.codec.language.ColognePhonetic.CologneBuffer
        protected char[] copyData(int i, int i2) {
            char[] cArr = new char[i2];
            System.arraycopy(this.data, i, cArr, 0, i2);
            return cArr;
        }
    }

    private static boolean arrayContains(char[] cArr, char c) {
        for (char c2 : cArr) {
            if (c2 == c) {
                return true;
            }
        }
        return false;
    }

    private String preprocess(String str) {
        char[] charArray = str.toUpperCase(Locale.GERMAN).toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            if (charArray[i] > 'Z') {
                char[][] cArr = PREPROCESS_MAP;
                int length = cArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length) {
                        char[] cArr2 = cArr[i2];
                        if (charArray[i] == cArr2[0]) {
                            charArray[i] = cArr2[1];
                            break;
                        }
                        i2++;
                    }
                }
            }
        }
        return new String(charArray);
    }

    public String colognePhonetic(String str) {
        char c;
        if (str == null) {
            return null;
        }
        String preprocess = preprocess(str);
        CologneOutputBuffer cologneOutputBuffer = new CologneOutputBuffer(preprocess.length() * 2);
        CologneInputBuffer cologneInputBuffer = new CologneInputBuffer(preprocess.toCharArray());
        char c2 = '-';
        char c3 = '/';
        int length = cologneInputBuffer.length();
        while (length > 0) {
            char removeNext = cologneInputBuffer.removeNext();
            int length2 = cologneInputBuffer.length();
            length = length2;
            char nextChar = length2 > 0 ? cologneInputBuffer.getNextChar() : '-';
            if (arrayContains(AEIJOUY, removeNext)) {
                c = '0';
            } else if (removeNext == 'H' || removeNext < 'A' || removeNext > 'Z') {
                if (c3 != '/') {
                    c = '-';
                }
            } else if (removeNext == 'B' || (removeNext == 'P' && nextChar != 'H')) {
                c = '1';
            } else if ((removeNext == 'D' || removeNext == 'T') && !arrayContains(SCZ, nextChar)) {
                c = '2';
            } else if (arrayContains(WFPV, removeNext)) {
                c = '3';
            } else if (arrayContains(GKQ, removeNext)) {
                c = '4';
            } else if (removeNext != 'X' || arrayContains(CKQ, c2)) {
                c = (removeNext == 'S' || removeNext == 'Z') ? '8' : removeNext == 'C' ? c3 == '/' ? arrayContains(AHKLOQRUX, nextChar) ? '4' : '8' : (arrayContains(f5015SZ, c2) || !arrayContains(AHOUKQX, nextChar)) ? '8' : '4' : arrayContains(TDX, removeNext) ? '8' : removeNext == 'R' ? '7' : removeNext == 'L' ? '5' : (removeNext == 'M' || removeNext == 'N') ? '6' : removeNext;
            } else {
                c = '4';
                cologneInputBuffer.addLeft('S');
                length++;
            }
            if (c != '-' && ((c3 != c && (c != '0' || c3 == '/')) || c < '0' || c > '8')) {
                cologneOutputBuffer.addRight(c);
            }
            c2 = removeNext;
            c3 = c;
        }
        return cologneOutputBuffer.toString();
    }

    @Override // org.apache.commons.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        if (obj instanceof String) {
            return encode((String) obj);
        }
        throw new EncoderException("This method's parameter was expected to be of the type " + String.class.getName() + ". But actually it was of the type " + obj.getClass().getName() + ".");
    }

    @Override // org.apache.commons.codec.StringEncoder
    public String encode(String str) {
        return colognePhonetic(str);
    }

    public boolean isEncodeEqual(String str, String str2) {
        return colognePhonetic(str).equals(colognePhonetic(str2));
    }
}
