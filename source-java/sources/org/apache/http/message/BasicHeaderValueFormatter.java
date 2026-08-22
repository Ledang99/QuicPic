package org.apache.http.message;

import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@Immutable
/* loaded from: classes.dex */
public class BasicHeaderValueFormatter implements HeaderValueFormatter {

    @Deprecated
    public static final BasicHeaderValueFormatter DEFAULT = new BasicHeaderValueFormatter();
    public static final BasicHeaderValueFormatter INSTANCE = new BasicHeaderValueFormatter();
    public static final String SEPARATORS = " ;,:@()<>\\\"/[]?={}\t";
    public static final String UNSAFE_CHARS = "\"\\";

    public static String formatElements(HeaderElement[] headerElementArr, boolean z, HeaderValueFormatter headerValueFormatter) {
        return (headerValueFormatter != null ? headerValueFormatter : INSTANCE).formatElements(null, headerElementArr, z).toString();
    }

    public static String formatHeaderElement(HeaderElement headerElement, boolean z, HeaderValueFormatter headerValueFormatter) {
        return (headerValueFormatter != null ? headerValueFormatter : INSTANCE).formatHeaderElement(null, headerElement, z).toString();
    }

    public static String formatNameValuePair(NameValuePair nameValuePair, boolean z, HeaderValueFormatter headerValueFormatter) {
        return (headerValueFormatter != null ? headerValueFormatter : INSTANCE).formatNameValuePair(null, nameValuePair, z).toString();
    }

    public static String formatParameters(NameValuePair[] nameValuePairArr, boolean z, HeaderValueFormatter headerValueFormatter) {
        return (headerValueFormatter != null ? headerValueFormatter : INSTANCE).formatParameters(null, nameValuePairArr, z).toString();
    }

    protected void doFormatValue(CharArrayBuffer charArrayBuffer, String str, boolean z) {
        boolean z2 = z;
        if (!z2) {
            for (int i = 0; i < str.length() && !z2; i++) {
                z2 = isSeparator(str.charAt(i));
            }
        }
        if (z2) {
            charArrayBuffer.append(TokenParser.DQUOTE);
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (isUnsafe(charAt)) {
                charArrayBuffer.append(TokenParser.ESCAPE);
            }
            charArrayBuffer.append(charAt);
        }
        if (z2) {
            charArrayBuffer.append(TokenParser.DQUOTE);
        }
    }

    protected int estimateElementsLen(HeaderElement[] headerElementArr) {
        if (headerElementArr == null || headerElementArr.length < 1) {
            return 0;
        }
        int length = (headerElementArr.length - 1) * 2;
        for (HeaderElement headerElement : headerElementArr) {
            length += estimateHeaderElementLen(headerElement);
        }
        return length;
    }

    protected int estimateHeaderElementLen(HeaderElement headerElement) {
        if (headerElement == null) {
            return 0;
        }
        int length = headerElement.getName().length();
        String value = headerElement.getValue();
        if (value != null) {
            length += value.length() + 3;
        }
        int parameterCount = headerElement.getParameterCount();
        if (parameterCount > 0) {
            for (int i = 0; i < parameterCount; i++) {
                length += estimateNameValuePairLen(headerElement.getParameter(i)) + 2;
            }
        }
        return length;
    }

    protected int estimateNameValuePairLen(NameValuePair nameValuePair) {
        if (nameValuePair == null) {
            return 0;
        }
        int length = nameValuePair.getName().length();
        String value = nameValuePair.getValue();
        return value != null ? length + value.length() + 3 : length;
    }

    protected int estimateParametersLen(NameValuePair[] nameValuePairArr) {
        if (nameValuePairArr == null || nameValuePairArr.length < 1) {
            return 0;
        }
        int length = (nameValuePairArr.length - 1) * 2;
        for (NameValuePair nameValuePair : nameValuePairArr) {
            length += estimateNameValuePairLen(nameValuePair);
        }
        return length;
    }

    @Override // org.apache.http.message.HeaderValueFormatter
    public CharArrayBuffer formatElements(CharArrayBuffer charArrayBuffer, HeaderElement[] headerElementArr, boolean z) {
        Args.notNull(headerElementArr, "Header element array");
        int estimateElementsLen = estimateElementsLen(headerElementArr);
        CharArrayBuffer charArrayBuffer2 = charArrayBuffer;
        if (charArrayBuffer2 == null) {
            charArrayBuffer2 = new CharArrayBuffer(estimateElementsLen);
        } else {
            charArrayBuffer2.ensureCapacity(estimateElementsLen);
        }
        for (int i = 0; i < headerElementArr.length; i++) {
            if (i > 0) {
                charArrayBuffer2.append(", ");
            }
            formatHeaderElement(charArrayBuffer2, headerElementArr[i], z);
        }
        return charArrayBuffer2;
    }

    @Override // org.apache.http.message.HeaderValueFormatter
    public CharArrayBuffer formatHeaderElement(CharArrayBuffer charArrayBuffer, HeaderElement headerElement, boolean z) {
        Args.notNull(headerElement, "Header element");
        int estimateHeaderElementLen = estimateHeaderElementLen(headerElement);
        CharArrayBuffer charArrayBuffer2 = charArrayBuffer;
        if (charArrayBuffer2 == null) {
            charArrayBuffer2 = new CharArrayBuffer(estimateHeaderElementLen);
        } else {
            charArrayBuffer2.ensureCapacity(estimateHeaderElementLen);
        }
        charArrayBuffer2.append(headerElement.getName());
        String value = headerElement.getValue();
        if (value != null) {
            charArrayBuffer2.append('=');
            doFormatValue(charArrayBuffer2, value, z);
        }
        int parameterCount = headerElement.getParameterCount();
        if (parameterCount > 0) {
            for (int i = 0; i < parameterCount; i++) {
                charArrayBuffer2.append("; ");
                formatNameValuePair(charArrayBuffer2, headerElement.getParameter(i), z);
            }
        }
        return charArrayBuffer2;
    }

    @Override // org.apache.http.message.HeaderValueFormatter
    public CharArrayBuffer formatNameValuePair(CharArrayBuffer charArrayBuffer, NameValuePair nameValuePair, boolean z) {
        Args.notNull(nameValuePair, "Name / value pair");
        int estimateNameValuePairLen = estimateNameValuePairLen(nameValuePair);
        CharArrayBuffer charArrayBuffer2 = charArrayBuffer;
        if (charArrayBuffer2 == null) {
            charArrayBuffer2 = new CharArrayBuffer(estimateNameValuePairLen);
        } else {
            charArrayBuffer2.ensureCapacity(estimateNameValuePairLen);
        }
        charArrayBuffer2.append(nameValuePair.getName());
        String value = nameValuePair.getValue();
        if (value != null) {
            charArrayBuffer2.append('=');
            doFormatValue(charArrayBuffer2, value, z);
        }
        return charArrayBuffer2;
    }

    @Override // org.apache.http.message.HeaderValueFormatter
    public CharArrayBuffer formatParameters(CharArrayBuffer charArrayBuffer, NameValuePair[] nameValuePairArr, boolean z) {
        Args.notNull(nameValuePairArr, "Header parameter array");
        int estimateParametersLen = estimateParametersLen(nameValuePairArr);
        CharArrayBuffer charArrayBuffer2 = charArrayBuffer;
        if (charArrayBuffer2 == null) {
            charArrayBuffer2 = new CharArrayBuffer(estimateParametersLen);
        } else {
            charArrayBuffer2.ensureCapacity(estimateParametersLen);
        }
        for (int i = 0; i < nameValuePairArr.length; i++) {
            if (i > 0) {
                charArrayBuffer2.append("; ");
            }
            formatNameValuePair(charArrayBuffer2, nameValuePairArr[i], z);
        }
        return charArrayBuffer2;
    }

    protected boolean isSeparator(char c) {
        return SEPARATORS.indexOf(c) >= 0;
    }

    protected boolean isUnsafe(char c) {
        return UNSAFE_CHARS.indexOf(c) >= 0;
    }
}
