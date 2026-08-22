package org.apache.http.message;

import java.util.BitSet;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.CharArrayBuffer;

@Immutable
/* loaded from: classes.dex */
public class TokenParser {

    /* renamed from: CR */
    public static final char f5039CR = '\r';
    public static final char DQUOTE = '\"';
    public static final char ESCAPE = '\\';

    /* renamed from: HT */
    public static final char f5040HT = '\t';
    public static final TokenParser INSTANCE = new TokenParser();

    /* renamed from: LF */
    public static final char f5041LF = '\n';

    /* renamed from: SP */
    public static final char f5042SP = ' ';

    public static BitSet INIT_BITSET(int... iArr) {
        BitSet bitSet = new BitSet();
        for (int i : iArr) {
            bitSet.set(i);
        }
        return bitSet;
    }

    public static boolean isWhitespace(char c) {
        return c == ' ' || c == '\t' || c == '\r' || c == '\n';
    }

    public void copyContent(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, BitSet bitSet, StringBuilder sb) {
        int pos = parserCursor.getPos();
        int pos2 = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        for (int i = pos2; i < upperBound; i++) {
            char charAt = charArrayBuffer.charAt(i);
            if ((bitSet != null && bitSet.get(charAt)) || isWhitespace(charAt)) {
                break;
            }
            pos++;
            sb.append(charAt);
        }
        parserCursor.updatePos(pos);
    }

    public void copyQuotedContent(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, StringBuilder sb) {
        if (parserCursor.atEnd()) {
            return;
        }
        int pos = parserCursor.getPos();
        int pos2 = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        if (charArrayBuffer.charAt(pos) != '\"') {
            return;
        }
        int i = pos + 1;
        boolean z = false;
        int i2 = pos2 + 1;
        while (true) {
            if (i2 >= upperBound) {
                break;
            }
            char charAt = charArrayBuffer.charAt(i2);
            if (z) {
                if (charAt != '\"' && charAt != '\\') {
                    sb.append(ESCAPE);
                }
                sb.append(charAt);
                z = false;
            } else if (charAt == '\"') {
                i++;
                break;
            } else if (charAt == '\\') {
                z = true;
            } else if (charAt != '\r' && charAt != '\n') {
                sb.append(charAt);
            }
            i2++;
            i++;
        }
        parserCursor.updatePos(i);
    }

    public void copyUnquotedContent(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, BitSet bitSet, StringBuilder sb) {
        int pos = parserCursor.getPos();
        int pos2 = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        for (int i = pos2; i < upperBound; i++) {
            char charAt = charArrayBuffer.charAt(i);
            if ((bitSet != null && bitSet.get(charAt)) || isWhitespace(charAt) || charAt == '\"') {
                break;
            }
            pos++;
            sb.append(charAt);
        }
        parserCursor.updatePos(pos);
    }

    public String parseToken(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, BitSet bitSet) {
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        while (!parserCursor.atEnd()) {
            char charAt = charArrayBuffer.charAt(parserCursor.getPos());
            if (bitSet != null && bitSet.get(charAt)) {
                break;
            }
            if (isWhitespace(charAt)) {
                skipWhiteSpace(charArrayBuffer, parserCursor);
                z = true;
            } else {
                if (z && sb.length() > 0) {
                    sb.append(f5042SP);
                }
                copyContent(charArrayBuffer, parserCursor, bitSet, sb);
                z = false;
            }
        }
        return sb.toString();
    }

    public String parseValue(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor, BitSet bitSet) {
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        while (!parserCursor.atEnd()) {
            char charAt = charArrayBuffer.charAt(parserCursor.getPos());
            if (bitSet != null && bitSet.get(charAt)) {
                break;
            }
            if (isWhitespace(charAt)) {
                skipWhiteSpace(charArrayBuffer, parserCursor);
                z = true;
            } else if (charAt == '\"') {
                if (z && sb.length() > 0) {
                    sb.append(f5042SP);
                }
                copyQuotedContent(charArrayBuffer, parserCursor, sb);
                z = false;
            } else {
                if (z && sb.length() > 0) {
                    sb.append(f5042SP);
                }
                copyUnquotedContent(charArrayBuffer, parserCursor, bitSet, sb);
                z = false;
            }
        }
        return sb.toString();
    }

    public void skipWhiteSpace(CharArrayBuffer charArrayBuffer, ParserCursor parserCursor) {
        int pos = parserCursor.getPos();
        int pos2 = parserCursor.getPos();
        int upperBound = parserCursor.getUpperBound();
        for (int i = pos2; i < upperBound && isWhitespace(charArrayBuffer.charAt(i)); i++) {
            pos++;
        }
        parserCursor.updatePos(pos);
    }
}
