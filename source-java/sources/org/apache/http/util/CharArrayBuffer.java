package org.apache.http.util;

import java.io.Serializable;
import java.nio.CharBuffer;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.protocol.HTTP;

@NotThreadSafe
/* loaded from: classes.dex */
public final class CharArrayBuffer implements CharSequence, Serializable {
    private static final long serialVersionUID = -6208952725094867135L;
    private char[] buffer;
    private int len;

    public CharArrayBuffer(int i) {
        Args.notNegative(i, "Buffer capacity");
        this.buffer = new char[i];
    }

    private void expand(int i) {
        char[] cArr = new char[Math.max(this.buffer.length << 1, i)];
        System.arraycopy(this.buffer, 0, cArr, 0, this.len);
        this.buffer = cArr;
    }

    public void append(char c) {
        int i = this.len + 1;
        if (i > this.buffer.length) {
            expand(i);
        }
        this.buffer[this.len] = c;
        this.len = i;
    }

    public void append(Object obj) {
        append(String.valueOf(obj));
    }

    public void append(String str) {
        String str2 = str != null ? str : "null";
        int length = str2.length();
        int i = this.len + length;
        if (i > this.buffer.length) {
            expand(i);
        }
        str2.getChars(0, length, this.buffer, this.len);
        this.len = i;
    }

    public void append(ByteArrayBuffer byteArrayBuffer, int i, int i2) {
        if (byteArrayBuffer == null) {
            return;
        }
        append(byteArrayBuffer.buffer(), i, i2);
    }

    public void append(CharArrayBuffer charArrayBuffer) {
        if (charArrayBuffer == null) {
            return;
        }
        append(charArrayBuffer.buffer, 0, charArrayBuffer.len);
    }

    public void append(CharArrayBuffer charArrayBuffer, int i, int i2) {
        if (charArrayBuffer == null) {
            return;
        }
        append(charArrayBuffer.buffer, i, i2);
    }

    public void append(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            return;
        }
        if (i < 0 || i > bArr.length || i2 < 0 || i + i2 < 0 || i + i2 > bArr.length) {
            throw new IndexOutOfBoundsException("off: " + i + " len: " + i2 + " b.length: " + bArr.length);
        }
        if (i2 == 0) {
            return;
        }
        int i3 = this.len;
        int i4 = i3 + i2;
        if (i4 > this.buffer.length) {
            expand(i4);
        }
        int i5 = i;
        for (int i6 = i3; i6 < i4; i6++) {
            this.buffer[i6] = (char) (bArr[i5] & 255);
            i5++;
        }
        this.len = i4;
    }

    public void append(char[] cArr, int i, int i2) {
        if (cArr == null) {
            return;
        }
        if (i < 0 || i > cArr.length || i2 < 0 || i + i2 < 0 || i + i2 > cArr.length) {
            throw new IndexOutOfBoundsException("off: " + i + " len: " + i2 + " b.length: " + cArr.length);
        }
        if (i2 == 0) {
            return;
        }
        int i3 = this.len + i2;
        if (i3 > this.buffer.length) {
            expand(i3);
        }
        System.arraycopy(cArr, i, this.buffer, this.len, i2);
        this.len = i3;
    }

    public char[] buffer() {
        return this.buffer;
    }

    public int capacity() {
        return this.buffer.length;
    }

    @Override // java.lang.CharSequence
    public char charAt(int i) {
        return this.buffer[i];
    }

    public void clear() {
        this.len = 0;
    }

    public void ensureCapacity(int i) {
        if (i <= 0) {
            return;
        }
        int length = this.buffer.length;
        int i2 = this.len;
        if (i > length - i2) {
            expand(i2 + i);
        }
    }

    public int indexOf(int i) {
        return indexOf(i, 0, this.len);
    }

    public int indexOf(int i, int i2, int i3) {
        int i4 = i2;
        if (i4 < 0) {
            i4 = 0;
        }
        int i5 = i3;
        if (i5 > this.len) {
            i5 = this.len;
        }
        if (i4 > i5) {
            return -1;
        }
        for (int i6 = i4; i6 < i5; i6++) {
            if (this.buffer[i6] == i) {
                return i6;
            }
        }
        return -1;
    }

    public boolean isEmpty() {
        return this.len == 0;
    }

    public boolean isFull() {
        return this.len == this.buffer.length;
    }

    @Override // java.lang.CharSequence
    public int length() {
        return this.len;
    }

    public void setLength(int i) {
        if (i >= 0 && i <= this.buffer.length) {
            this.len = i;
            return;
        }
        throw new IndexOutOfBoundsException("len: " + i + " < 0 or > buffer len: " + this.buffer.length);
    }

    @Override // java.lang.CharSequence
    public CharSequence subSequence(int i, int i2) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("Negative beginIndex: " + i);
        }
        if (i2 > this.len) {
            throw new IndexOutOfBoundsException("endIndex: " + i2 + " > length: " + this.len);
        }
        if (i <= i2) {
            return CharBuffer.wrap(this.buffer, i, i2);
        }
        throw new IndexOutOfBoundsException("beginIndex: " + i + " > endIndex: " + i2);
    }

    public String substring(int i, int i2) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("Negative beginIndex: " + i);
        }
        if (i2 > this.len) {
            throw new IndexOutOfBoundsException("endIndex: " + i2 + " > length: " + this.len);
        }
        if (i <= i2) {
            return new String(this.buffer, i, i2 - i);
        }
        throw new IndexOutOfBoundsException("beginIndex: " + i + " > endIndex: " + i2);
    }

    public String substringTrimmed(int i, int i2) {
        if (i < 0) {
            throw new IndexOutOfBoundsException("Negative beginIndex: " + i);
        }
        if (i2 > this.len) {
            throw new IndexOutOfBoundsException("endIndex: " + i2 + " > length: " + this.len);
        }
        if (i > i2) {
            throw new IndexOutOfBoundsException("beginIndex: " + i + " > endIndex: " + i2);
        }
        int i3 = i;
        int i4 = i2;
        while (i3 < i2 && HTTP.isWhitespace(this.buffer[i3])) {
            i3++;
        }
        while (i4 > i3 && HTTP.isWhitespace(this.buffer[i4 - 1])) {
            i4--;
        }
        return new String(this.buffer, i3, i4 - i3);
    }

    public char[] toCharArray() {
        int i = this.len;
        char[] cArr = new char[i];
        if (i > 0) {
            System.arraycopy(this.buffer, 0, cArr, 0, i);
        }
        return cArr;
    }

    @Override // java.lang.CharSequence
    public String toString() {
        return new String(this.buffer, 0, this.len);
    }
}
