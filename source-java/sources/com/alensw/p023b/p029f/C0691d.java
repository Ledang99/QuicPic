package com.alensw.p023b.p029f;

import org.apache.http.message.TokenParser;

/* renamed from: com.alensw.b.f.d */
/* loaded from: classes.dex */
public class C0691d {
    /* renamed from: a */
    public static String m2727a(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt >= 'a' && charAt <= 'm') {
                charAt = (char) (charAt + TokenParser.f5039CR);
            } else if (charAt >= 'A' && charAt <= 'M') {
                charAt = (char) (charAt + TokenParser.f5039CR);
            } else if (charAt >= 'n' && charAt <= 'z') {
                charAt = (char) (charAt - '\r');
            } else if (charAt >= 'N' && charAt <= 'Z') {
                charAt = (char) (charAt - '\r');
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static String m2728b(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt != ' ' && (charAt = (char) (charAt + '/')) > '~') {
                charAt = (char) (charAt - '^');
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    /* renamed from: c */
    public static String m2729c(String str) {
        StringBuilder sb = new StringBuilder(str.length() * 4);
        for (int i = 0; i < str.length(); i++) {
            sb.append(String.format("%04x", Integer.valueOf(str.charAt(i))));
        }
        return m2728b(m2727a(sb.toString()));
    }

    /* renamed from: d */
    public static String m2730d(String str) {
        String m2727a = m2727a(m2728b(str));
        StringBuilder sb = new StringBuilder(m2727a.length() / 4);
        for (int i = 0; i < m2727a.length(); i += 4) {
            sb.append((char) Integer.parseInt(m2727a.substring(i, i + 4), 16));
        }
        return sb.toString();
    }
}
