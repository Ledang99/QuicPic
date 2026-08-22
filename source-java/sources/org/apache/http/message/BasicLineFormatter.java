package org.apache.http.message;

import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.ProtocolVersion;
import org.apache.http.RequestLine;
import org.apache.http.StatusLine;
import org.apache.http.annotation.Immutable;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@Immutable
/* loaded from: classes.dex */
public class BasicLineFormatter implements LineFormatter {

    @Deprecated
    public static final BasicLineFormatter DEFAULT = new BasicLineFormatter();
    public static final BasicLineFormatter INSTANCE = new BasicLineFormatter();

    public static String formatHeader(Header header, LineFormatter lineFormatter) {
        return (lineFormatter != null ? lineFormatter : INSTANCE).formatHeader(null, header).toString();
    }

    public static String formatProtocolVersion(ProtocolVersion protocolVersion, LineFormatter lineFormatter) {
        return (lineFormatter != null ? lineFormatter : INSTANCE).appendProtocolVersion(null, protocolVersion).toString();
    }

    public static String formatRequestLine(RequestLine requestLine, LineFormatter lineFormatter) {
        return (lineFormatter != null ? lineFormatter : INSTANCE).formatRequestLine(null, requestLine).toString();
    }

    public static String formatStatusLine(StatusLine statusLine, LineFormatter lineFormatter) {
        return (lineFormatter != null ? lineFormatter : INSTANCE).formatStatusLine(null, statusLine).toString();
    }

    @Override // org.apache.http.message.LineFormatter
    public CharArrayBuffer appendProtocolVersion(CharArrayBuffer charArrayBuffer, ProtocolVersion protocolVersion) {
        Args.notNull(protocolVersion, "Protocol version");
        CharArrayBuffer charArrayBuffer2 = charArrayBuffer;
        int estimateProtocolVersionLen = estimateProtocolVersionLen(protocolVersion);
        if (charArrayBuffer2 == null) {
            charArrayBuffer2 = new CharArrayBuffer(estimateProtocolVersionLen);
        } else {
            charArrayBuffer2.ensureCapacity(estimateProtocolVersionLen);
        }
        charArrayBuffer2.append(protocolVersion.getProtocol());
        charArrayBuffer2.append('/');
        charArrayBuffer2.append(Integer.toString(protocolVersion.getMajor()));
        charArrayBuffer2.append('.');
        charArrayBuffer2.append(Integer.toString(protocolVersion.getMinor()));
        return charArrayBuffer2;
    }

    protected void doFormatHeader(CharArrayBuffer charArrayBuffer, Header header) {
        String name = header.getName();
        String value = header.getValue();
        int length = name.length() + 2;
        if (value != null) {
            length += value.length();
        }
        charArrayBuffer.ensureCapacity(length);
        charArrayBuffer.append(name);
        charArrayBuffer.append(": ");
        if (value != null) {
            charArrayBuffer.append(value);
        }
    }

    protected void doFormatRequestLine(CharArrayBuffer charArrayBuffer, RequestLine requestLine) {
        String method = requestLine.getMethod();
        String uri = requestLine.getUri();
        charArrayBuffer.ensureCapacity(method.length() + 1 + uri.length() + 1 + estimateProtocolVersionLen(requestLine.getProtocolVersion()));
        charArrayBuffer.append(method);
        charArrayBuffer.append(TokenParser.f5042SP);
        charArrayBuffer.append(uri);
        charArrayBuffer.append(TokenParser.f5042SP);
        appendProtocolVersion(charArrayBuffer, requestLine.getProtocolVersion());
    }

    protected void doFormatStatusLine(CharArrayBuffer charArrayBuffer, StatusLine statusLine) {
        int estimateProtocolVersionLen = estimateProtocolVersionLen(statusLine.getProtocolVersion()) + 1 + 3 + 1;
        String reasonPhrase = statusLine.getReasonPhrase();
        if (reasonPhrase != null) {
            estimateProtocolVersionLen += reasonPhrase.length();
        }
        charArrayBuffer.ensureCapacity(estimateProtocolVersionLen);
        appendProtocolVersion(charArrayBuffer, statusLine.getProtocolVersion());
        charArrayBuffer.append(TokenParser.f5042SP);
        charArrayBuffer.append(Integer.toString(statusLine.getStatusCode()));
        charArrayBuffer.append(TokenParser.f5042SP);
        if (reasonPhrase != null) {
            charArrayBuffer.append(reasonPhrase);
        }
    }

    protected int estimateProtocolVersionLen(ProtocolVersion protocolVersion) {
        return protocolVersion.getProtocol().length() + 4;
    }

    @Override // org.apache.http.message.LineFormatter
    public CharArrayBuffer formatHeader(CharArrayBuffer charArrayBuffer, Header header) {
        Args.notNull(header, "Header");
        if (header instanceof FormattedHeader) {
            return ((FormattedHeader) header).getBuffer();
        }
        CharArrayBuffer initBuffer = initBuffer(charArrayBuffer);
        doFormatHeader(initBuffer, header);
        return initBuffer;
    }

    @Override // org.apache.http.message.LineFormatter
    public CharArrayBuffer formatRequestLine(CharArrayBuffer charArrayBuffer, RequestLine requestLine) {
        Args.notNull(requestLine, "Request line");
        CharArrayBuffer initBuffer = initBuffer(charArrayBuffer);
        doFormatRequestLine(initBuffer, requestLine);
        return initBuffer;
    }

    @Override // org.apache.http.message.LineFormatter
    public CharArrayBuffer formatStatusLine(CharArrayBuffer charArrayBuffer, StatusLine statusLine) {
        Args.notNull(statusLine, "Status line");
        CharArrayBuffer initBuffer = initBuffer(charArrayBuffer);
        doFormatStatusLine(initBuffer, statusLine);
        return initBuffer;
    }

    protected CharArrayBuffer initBuffer(CharArrayBuffer charArrayBuffer) {
        if (charArrayBuffer == null) {
            return new CharArrayBuffer(64);
        }
        charArrayBuffer.clear();
        return charArrayBuffer;
    }
}
