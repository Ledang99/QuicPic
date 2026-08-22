package com.alensw.cloud.p036a;

import android.content.ContentValues;
import android.content.Context;
import com.alensw.cloud.oauth.C0889a;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0678e;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p035l.C0742b;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import p000a.p006d.C0084bc;
import p000a.p006d.C0085bd;
import p000a.p006d.C0088bg;
import p000a.p006d.C0089bh;
import p000a.p006d.C0130j;
import p000a.p006d.C0140t;
import p000a.p006d.C0143w;
import p000a.p006d.InterfaceC0129i;

/* renamed from: com.alensw.cloud.a.bu */
/* loaded from: classes.dex */
public class C0807bu extends AbstractC0808bv {

    /* renamed from: c */
    private final String f3002c;

    /* renamed from: d */
    private final String f3003d;

    /* renamed from: e */
    private final C0140t f3004e;

    public C0807bu(Context context, C0889a c0889a) {
        super(context, c0889a);
        String str;
        C0140t c0140t;
        String str2 = c0889a.f3193d;
        int length = str2.length();
        if (length > 0 && str2.charAt(length - 1) != '/') {
            str2 = str2 + '/';
        }
        String str3 = "";
        try {
            URL url = new URL((URL) null, str2, C0130j.f614a);
            String substring = c0889a.f3191b.substring(0, c0889a.f3191b.lastIndexOf("@" + url.getHost()));
            str3 = url.getPath();
            c0140t = new C0140t(null, substring, c0889a.f3196g.f3230b);
            str = str3;
        } catch (Exception e) {
            e.printStackTrace();
            str = str3;
            c0140t = null;
        }
        this.f3002c = str;
        this.f3003d = str2.substring(0, str2.lastIndexOf(this.f3002c));
        this.f3004e = c0140t;
    }

    /* renamed from: a */
    private C0085bd m3228a(String str) {
        return new C0085bd(this.f3003d + str, this.f3004e);
    }

    /* renamed from: a */
    private static String m3229a(String str, String str2) {
        int length = str.length();
        if (length > 0 && str.charAt(length - 1) != '/') {
            str = str + '/';
        }
        return str + str2;
    }

    /* renamed from: a */
    protected char m3230a(String str, C0085bd c0085bd, ContentValues contentValues) {
        char m3231a = m3231a("", c0085bd.m243z(), contentValues);
        contentValues.put("document_id", str);
        return m3231a;
    }

    /* renamed from: a */
    protected char m3231a(String str, InterfaceC0129i interfaceC0129i, ContentValues contentValues) {
        char m2721a;
        int i;
        String mo244a = interfaceC0129i.mo244a();
        int mo246c = interfaceC0129i.mo246c();
        boolean z = (mo246c & 16) == 16;
        if (z) {
            m2721a = 'D';
            int length = mo244a.length();
            if (length > 1 && mo244a.charAt(length - 1) == '/') {
                mo244a = mo244a.substring(0, length - 1);
            }
        } else {
            m2721a = C0690c.m2721a(mo244a);
        }
        if (m2721a == 0) {
            return (char) 0;
        }
        contentValues.put("document_id", str + mo244a);
        contentValues.put("_display_name", mo244a);
        contentValues.put("_size", Long.valueOf(interfaceC0129i.mo249f()));
        long mo248e = interfaceC0129i.mo248e() / 1000;
        contentValues.put("last_modified", Long.valueOf(mo248e));
        contentValues.put("datetaken", Long.valueOf(mo248e));
        contentValues.put("mime_type", z ? "vnd.android.document/directory" : C0690c.m2722a(mo244a, m2721a));
        int i2 = z ? 16 : 1;
        if ((mo246c & 1) == 0) {
            i = (z ? 10 : 6) | i2;
        } else {
            i = i2;
        }
        contentValues.put("flags", Integer.valueOf(i));
        return m2721a;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3141a() {
        ContentValues contentValues = new ContentValues(3);
        contentValues.put("document_id", this.f3002c);
        contentValues.put("mime_type", "vnd.android.document/directory");
        contentValues.put("flags", Integer.valueOf(("/".equals(this.f3002c) ? 0 : 10) | 16));
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3142a(String str, String str2, InterfaceC0679f interfaceC0679f) {
        ContentValues contentValues = new ContentValues(8);
        try {
            String m3229a = m3229a(str, str2);
            C0085bd m3228a = m3228a(m3229a);
            m3228a.m240w();
            m3230a(m3229a, m3228a, contentValues);
        } catch (C0143w e) {
            m3232a(e);
        }
        return contentValues;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x004f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ContentValues mo3143a(String str, String str2, C0682i c0682i, InterfaceC0678e interfaceC0678e) {
        C0143w c0143w;
        C0085bd c0085bd;
        C0085bd m3228a;
        C0089bh c0089bh;
        long j;
        long m2651a;
        String m3229a = m3229a(str, str2);
        C0089bh c0089bh2 = null;
        try {
            try {
                m3228a = m3228a(m3229a);
                try {
                    if (m3228a.m233p() && m3228a.m239v() > 0) {
                        C0085bd m3228a2 = m3228a(m3229a(str, m3238b(str2)));
                        if (m3228a2.m233p() && m3228a.m239v() > 0) {
                            throw new RuntimeException("file already exists");
                        }
                        m3228a = m3228a2;
                    }
                    c0089bh = new C0089bh(m3228a);
                } catch (C0143w e) {
                    c0143w = e;
                    c0085bd = m3228a;
                }
            } catch (C0143w e2) {
                c0143w = e2;
                c0085bd = null;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            j = c0682i.f2574a;
            m2651a = C0675b.m2651a(c0682i.f2578e, c0089bh, j, 61440, interfaceC0678e);
        } catch (C0143w e3) {
            c0089bh2 = c0089bh;
            c0143w = e3;
            c0085bd = m3228a;
            m3232a(c0143w);
            C0675b.m2665a(c0089bh2);
            if (c0682i.f2575b != 0) {
            }
            ContentValues contentValues = new ContentValues(8);
            m3230a(m3229a, c0085bd, contentValues);
            return contentValues;
        } catch (Throwable th2) {
            th = th2;
            c0089bh2 = c0089bh;
            C0675b.m2665a(c0089bh2);
            throw th;
        }
        if (m2651a < j) {
            throw new RuntimeException("upload wrong bytes: " + m2651a + "/" + j);
        }
        C0675b.m2665a(c0089bh);
        c0085bd = m3228a;
        if (c0682i.f2575b != 0) {
            try {
                c0085bd.m214b(c0682i.f2575b);
            } catch (Exception e4) {
            }
        }
        ContentValues contentValues2 = new ContentValues(8);
        m3230a(m3229a, c0085bd, contentValues2);
        return contentValues2;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3144a(String str, String str2, String str3, InterfaceC0679f interfaceC0679f) {
        C0085bd c0085bd;
        C0143w e;
        C0085bd m3228a;
        String substring = str.substring(str2.length());
        if (substring.length() > 1 && substring.charAt(0) == '/') {
            substring = substring.substring(1);
        }
        String m3229a = m3229a(str3, substring);
        try {
            m3228a = m3228a(str);
            c0085bd = m3228a(m3229a);
        } catch (C0143w e2) {
            c0085bd = null;
            e = e2;
        }
        try {
        } catch (C0143w e3) {
            e = e3;
            m3232a(e);
            ContentValues contentValues = new ContentValues(8);
            m3230a(m3229a, c0085bd, contentValues);
            return contentValues;
        }
        if (c0085bd.m233p()) {
            throw new RuntimeException("file exists");
        }
        m3228a.m206a(c0085bd);
        ContentValues contentValues2 = new ContentValues(8);
        m3230a(m3229a, c0085bd, contentValues2);
        return contentValues2;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    protected String mo3145a(String str, int i, InterfaceC0679f interfaceC0679f) {
        return this.f3003d + str;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    protected String mo3146a(String str, InterfaceC0679f interfaceC0679f) {
        return this.f3003d + str;
    }

    /* renamed from: a */
    protected void m3232a(C0143w c0143w) {
        throw new C0815cb("Error code: " + Integer.toHexString(c0143w.m190a()));
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3148a(String str, ContentValues contentValues, InterfaceC0679f interfaceC0679f) {
        try {
            m3230a(str, m3228a(str), contentValues);
        } catch (C0143w e) {
            m3232a(e);
        } catch (C0084bc e2) {
            throw e2;
        }
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3233a(String str, String str2, String str3, C0682i c0682i, InterfaceC0679f interfaceC0679f) {
        String substring;
        int indexOf;
        try {
            C0085bd m3228a = m3228a(str);
            c0682i.f2576c = C0690c.m2724b(m3228a.m227j());
            c0682i.f2577d = "";
            c0682i.f2575b = m3228a.m234q();
            c0682i.f2578e = new C0088bg(m3228a);
            c0682i.f2574a = m3228a.m239v();
            if (str3 == null || !str3.startsWith("bytes=") || (indexOf = (substring = str3.substring("bytes=".length())).indexOf(45)) <= 0) {
                return;
            }
            try {
                long parseLong = Long.parseLong(substring.substring(0, indexOf));
                c0682i.f2578e.skip(parseLong);
                c0682i.f2574a -= parseLong;
            } catch (NumberFormatException e) {
            }
        } catch (C0143w e2) {
            m3232a(e2);
        }
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public boolean mo3149a(String str, C0785az c0785az, int i, InterfaceC0679f interfaceC0679f) {
        ArrayList arrayList;
        try {
            arrayList = m3228a(str).m212b("*", 20);
        } catch (C0143w e) {
            m3232a(e);
            arrayList = null;
        }
        if (arrayList == null) {
            return true;
        }
        String m3229a = m3229a(str, "");
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            InterfaceC0129i interfaceC0129i = (InterfaceC0129i) it.next();
            try {
                ContentValues contentValues = new ContentValues(8);
                if (m3231a(m3229a, interfaceC0129i, contentValues) != 0) {
                    c0785az.add(contentValues);
                }
            } catch (C0143w e2) {
                m3232a(e2);
            }
        }
        return true;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    public String mo3150b(String str, InterfaceC0679f interfaceC0679f) {
        throw new UnsupportedOperationException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [a.d.bg, java.io.Closeable, java.io.InputStream] */
    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    protected void mo3179b(String str, String str2, InterfaceC0679f interfaceC0679f) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        FileOutputStream fileOutputStream3 = null;
        try {
            C0085bd c0085bd = new C0085bd(str, this.f3004e);
            ?? c0088bg = new C0088bg(c0085bd);
            try {
                fileOutputStream2 = C0742b.m3005e(new File(str2));
                try {
                    C0675b.m2651a(c0088bg, fileOutputStream2, c0085bd.m239v(), 61440, interfaceC0679f);
                    C0675b.m2665a((Closeable) c0088bg);
                    C0675b.m2665a(fileOutputStream2);
                } catch (C0143w e) {
                    fileOutputStream3 = c0088bg;
                    e = e;
                    try {
                        m3232a(e);
                        C0675b.m2665a(fileOutputStream3);
                        C0675b.m2665a(fileOutputStream2);
                    } catch (Throwable th) {
                        th = th;
                        FileOutputStream fileOutputStream4 = fileOutputStream2;
                        fileOutputStream = fileOutputStream3;
                        fileOutputStream3 = fileOutputStream4;
                        C0675b.m2665a(fileOutputStream);
                        C0675b.m2665a(fileOutputStream3);
                        throw th;
                    }
                } catch (Throwable th2) {
                    fileOutputStream3 = fileOutputStream2;
                    fileOutputStream = c0088bg;
                    th = th2;
                    C0675b.m2665a(fileOutputStream);
                    C0675b.m2665a(fileOutputStream3);
                    throw th;
                }
            } catch (C0143w e2) {
                fileOutputStream2 = null;
                fileOutputStream3 = c0088bg;
                e = e2;
            } catch (Throwable th3) {
                fileOutputStream = c0088bg;
                th = th3;
            }
        } catch (C0143w e3) {
            e = e3;
            fileOutputStream2 = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: c */
    public void mo3151c(String str, InterfaceC0679f interfaceC0679f) {
        try {
            m3228a(str).m238u();
        } catch (C0143w e) {
            m3232a(e);
        }
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: d_ */
    public boolean mo3234d_() {
        return false;
    }
}
