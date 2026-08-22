package p000a.p004b;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.Hashtable;
import org.apache.http.message.TokenParser;
import p000a.p006d.C0088bg;
import p000a.p007e.C0155e;

/* renamed from: a.b.a */
/* loaded from: classes.dex */
public class C0036a {

    /* renamed from: d */
    private static int f92d;

    /* renamed from: a */
    private static final String f89a = null;

    /* renamed from: b */
    private static final Hashtable f90b = new Hashtable();

    /* renamed from: c */
    private static long f91c = 1;

    /* renamed from: e */
    private static C0155e f93e = C0155e.m381a();

    /* renamed from: a */
    static synchronized C0042g m61a(C0037b c0037b) {
        C0042g c0042g;
        C0042g c0042g2;
        synchronized (C0036a.class) {
            c0042g = null;
            try {
                if (f89a != null) {
                    File file = new File(f89a);
                    long lastModified = file.lastModified();
                    if (lastModified > f91c) {
                        f91c = lastModified;
                        f90b.clear();
                        f92d = 0;
                        m63a(new FileReader(file));
                    }
                    c0042g2 = (C0042g) f90b.get(c0037b);
                } else {
                    c0042g2 = null;
                }
                c0042g = c0042g2;
            } catch (FileNotFoundException e) {
                C0155e c0155e = f93e;
                if (C0155e.f728a > 1) {
                    f93e.println("lmhosts file: " + f89a);
                    e.printStackTrace(f93e);
                }
            } catch (IOException e2) {
                C0155e c0155e2 = f93e;
                if (C0155e.f728a > 0) {
                    e2.printStackTrace(f93e);
                }
            }
        }
        return c0042g;
    }

    /* renamed from: a */
    public static synchronized C0042g m62a(String str) {
        C0042g m61a;
        synchronized (C0036a.class) {
            m61a = m61a(new C0037b(str, 32, null));
        }
        return m61a;
    }

    /* renamed from: a */
    static void m63a(Reader reader) {
        String readLine;
        int i;
        BufferedReader bufferedReader = new BufferedReader(reader);
        while (true) {
            String readLine2 = bufferedReader.readLine();
            if (readLine2 == null) {
                return;
            }
            String trim = readLine2.toUpperCase().trim();
            if (trim.length() != 0) {
                if (trim.charAt(0) == '#') {
                    if (trim.startsWith("#INCLUDE ")) {
                        String str = "smb:" + trim.substring(trim.indexOf(92)).replace(TokenParser.ESCAPE, '/');
                        if (f92d > 0) {
                            try {
                                m63a(new InputStreamReader(new C0088bg(str)));
                                f92d--;
                                do {
                                    readLine = bufferedReader.readLine();
                                    if (readLine != null) {
                                    }
                                } while (!readLine.toUpperCase().trim().startsWith("#END_ALTERNATE"));
                            } catch (IOException e) {
                                f93e.println("lmhosts URL: " + str);
                                e.printStackTrace(f93e);
                            }
                        } else {
                            m63a(new InputStreamReader(new C0088bg(str)));
                        }
                    } else if (trim.startsWith("#BEGIN_ALTERNATE")) {
                        f92d++;
                    } else if (trim.startsWith("#END_ALTERNATE") && f92d > 0) {
                        f92d--;
                        throw new IOException("no lmhosts alternate includes loaded");
                    }
                } else if (Character.isDigit(trim.charAt(0))) {
                    char[] charArray = trim.toCharArray();
                    char c = '.';
                    int i2 = 0;
                    int i3 = 0;
                    while (i2 < charArray.length && c == '.') {
                        int i4 = i2;
                        int i5 = 0;
                        while (i4 < charArray.length) {
                            char c2 = charArray[i4];
                            if (c2 < '0' || c2 > '9') {
                                c = c2;
                                break;
                            }
                            i4++;
                            i5 = ((i5 * 10) + c2) - 48;
                            c = c2;
                        }
                        i3 = (i3 << 8) + i5;
                        i2 = i4 + 1;
                    }
                    while (true) {
                        i = i2;
                        if (i >= charArray.length || !Character.isWhitespace(charArray[i])) {
                            break;
                        } else {
                            i2 = i + 1;
                        }
                    }
                    int i6 = i;
                    while (i6 < charArray.length && !Character.isWhitespace(charArray[i6])) {
                        i6++;
                    }
                    C0037b c0037b = new C0037b(trim.substring(i, i6), 32, null);
                    f90b.put(c0037b, new C0042g(c0037b, i3, false, 0, false, false, true, true, C0042g.f145d));
                }
            }
        }
    }
}
