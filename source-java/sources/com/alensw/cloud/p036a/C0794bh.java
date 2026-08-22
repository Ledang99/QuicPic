package com.alensw.cloud.p036a;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.alensw.cloud.oauth.C0889a;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0678e;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p035l.C0742b;
import java.io.FileNotFoundException;
import java.net.ProtocolException;
import java.net.URL;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Random;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.HttpHeaders;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.protocol.HTTP;
import org.xmlpull.v1.XmlPullParser;

/* renamed from: com.alensw.cloud.a.bh */
/* loaded from: classes.dex */
public class C0794bh extends AbstractC0808bv {

    /* renamed from: c */
    private static final DateFormat f2957c = new SimpleDateFormat("EEE, d MMM yyyy HH:mm:ss z", Locale.US);

    /* renamed from: d */
    private final boolean f2958d;

    /* renamed from: e */
    private final String f2959e;

    /* renamed from: f */
    private final String f2960f;

    /* renamed from: g */
    private final String f2961g;

    public C0794bh(Context context, C0889a c0889a) {
        super(context, c0889a);
        Exception e;
        boolean z;
        URL url;
        String str = c0889a.f3193d;
        int length = str.length();
        if (length > 0 && str.charAt(length - 1) != '/') {
            str = str + '/';
        }
        String str2 = "";
        try {
            url = new URL(str);
            z = "https".equalsIgnoreCase(url.getProtocol());
        } catch (Exception e2) {
            e = e2;
            z = false;
        }
        try {
            str2 = url.getPath() + "remote.php/webdav";
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
            this.f2959e = str2;
            this.f2960f = str + "remote.php/webdav";
            this.f2961g = str + "index.php/core/preview.png";
            this.f2958d = !z && c0889a.f3196g.f3232d == -1;
        }
        this.f2959e = str2;
        this.f2960f = str + "remote.php/webdav";
        this.f2961g = str + "index.php/core/preview.png";
        this.f2958d = !z && c0889a.f3196g.f3232d == -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public char m3204a(XmlPullParser xmlPullParser, ContentValues contentValues) {
        String str = null;
        int eventType = xmlPullParser.getEventType();
        String str2 = null;
        while (true) {
            if (eventType == 3 && "response".equals(xmlPullParser.getName())) {
                break;
            }
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if ("href".equals(name)) {
                    xmlPullParser.next();
                    String text = xmlPullParser.getText();
                    String substring = text.length() > this.f2959e.length() ? text.substring(this.f2959e.length()) : text;
                    str = m3209c(substring);
                    contentValues.put("document_id", substring);
                    contentValues.put("_display_name", str);
                } else if ("getlastmodified".equals(name)) {
                    xmlPullParser.next();
                    long m3210d = m3210d(xmlPullParser.getText());
                    contentValues.put("last_modified", Long.valueOf(m3210d));
                    contentValues.put("datetaken", Long.valueOf(m3210d));
                } else if ("getcontenttype".equals(name)) {
                    xmlPullParser.next();
                    str2 = xmlPullParser.getText();
                    contentValues.put("mime_type", str2);
                } else if ("getcontentlength".equals(name)) {
                    xmlPullParser.next();
                    contentValues.put("_size", xmlPullParser.getText());
                }
            } else if (eventType == 1) {
                break;
            }
            eventType = xmlPullParser.next();
        }
        if (str2 == null) {
            contentValues.put("mime_type", "vnd.android.document/directory");
            contentValues.put("flags", (Integer) 58);
            contentValues.remove("_size");
            return 'D';
        }
        contentValues.put("flags", (Integer) 7);
        if (str2.startsWith("image/")) {
            return 'I';
        }
        if (str2.startsWith("video/")) {
            return 'V';
        }
        if (str == null) {
            return (char) 0;
        }
        char m2721a = C0690c.m2721a(str);
        if (m2721a == 0) {
            return m2721a;
        }
        contentValues.put("mime_type", C0690c.m2722a(str, m2721a));
        return m2721a;
    }

    /* renamed from: a */
    private String m3205a(String str) {
        return this.f2960f + str;
    }

    /* renamed from: a */
    private static String m3206a(String str, String str2) {
        int length = str.length();
        if (length > 0 && str.charAt(length - 1) != '/') {
            str = str + '/';
        }
        return str + Uri.encode(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3208a(XmlPullParser xmlPullParser, C0785az c0785az) {
        int eventType = xmlPullParser.getEventType();
        while (eventType != 1) {
            if (eventType == 2 && "response".equals(xmlPullParser.getName())) {
                ContentValues contentValues = new ContentValues(8);
                if (m3204a(xmlPullParser, contentValues) != 0) {
                    c0785az.add(contentValues);
                }
            }
            eventType = xmlPullParser.next();
        }
    }

    /* renamed from: c */
    private static String m3209c(String str) {
        int length = str.length();
        int lastIndexOf = str.lastIndexOf(47);
        return (lastIndexOf == 0 && length == 1) ? "" : lastIndexOf == length + (-1) ? Uri.decode(str.substring(str.lastIndexOf(47, lastIndexOf - 1) + 1, lastIndexOf)) : Uri.decode(str.substring(lastIndexOf + 1));
    }

    /* renamed from: d */
    private long m3210d(String str) {
        try {
            return f2957c.parse(str).getTime() / 1000;
        } catch (ParseException e) {
            return 0L;
        }
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3141a() {
        ContentValues contentValues = new ContentValues(3);
        contentValues.put("document_id", "/");
        contentValues.put("mime_type", "vnd.android.document/directory");
        contentValues.put("flags", (Integer) 58);
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3142a(String str, String str2, InterfaceC0679f interfaceC0679f) {
        String m3206a = m3206a(str, str2);
        C0675b.m2668a(m3205a(m3206a), "MKCOL", mo3161b(), new C0811by(this, 0, interfaceC0679f));
        ContentValues contentValues = new ContentValues();
        mo3148a(m3206a, contentValues, interfaceC0679f);
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3143a(String str, String str2, C0682i c0682i, InterfaceC0678e interfaceC0678e) {
        String str3;
        String m3206a = m3206a(str, str2);
        String m3205a = m3205a(m3206a);
        HashMap mo3161b = mo3161b();
        mo3161b.put(HttpHeaders.DEPTH, "0");
        boolean z = true;
        try {
            C0675b.m2668a(m3205a, "PROPFIND", mo3161b, new C0797bk(this, 2, interfaceC0678e));
        } catch (FileNotFoundException e) {
            z = false;
        }
        if (z) {
            String m3206a2 = m3206a(str, m3238b(str2));
            m3205a = m3205a(m3206a2);
            str3 = m3206a2;
        } else {
            str3 = m3206a;
        }
        if (c0682i.f2574a < 10485760) {
            C0675b.m2668a(m3205a, HttpPut.METHOD_NAME, mo3161b(), new C0798bl(this, 0, interfaceC0678e, c0682i));
        } else {
            String str4 = m3205a + "-chunking-" + Math.abs(new Random().nextInt(9000) + 1000) + "-";
            long j = ((c0682i.f2574a - 1) / 10485760) + 1;
            HashMap mo3161b2 = mo3161b();
            mo3161b2.put("OC-Chunked", "OC-Chunked");
            for (int i = 0; i < j; i++) {
                C0675b.m2668a(str4 + j + "-" + i, HttpPut.METHOD_NAME, mo3161b2, new C0799bm(this, 0, interfaceC0678e, c0682i, 10485760 * i));
            }
        }
        ContentValues contentValues = new ContentValues();
        mo3148a(str3, contentValues, interfaceC0678e);
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3144a(String str, String str2, String str3, InterfaceC0679f interfaceC0679f) {
        ContentValues contentValues = new ContentValues();
        String m3205a = m3205a(str);
        String m2993b = C0742b.m2993b(str3, str.substring(str.lastIndexOf(47) + 1));
        HashMap mo3161b = mo3161b();
        mo3161b.put(HttpHeaders.DESTINATION, m3205a(m2993b));
        mo3161b.put(HttpHeaders.OVERWRITE, "F");
        C0675b.m2668a(m3205a, "MOVE", mo3161b, new C0811by(this, 0, interfaceC0679f));
        contentValues.put("parent_id", m2993b);
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    protected String mo3145a(String str, int i, InterfaceC0679f interfaceC0679f) {
        return String.format("%s?file=%s&x=%d&y=%d&a=true&scalingup=0", this.f2961g, str, Integer.valueOf(i), Integer.valueOf(i));
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    protected String mo3146a(String str, InterfaceC0679f interfaceC0679f) {
        return m3205a(str);
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3147a(int i, String str) {
        if (i != 401) {
            throw new ProtocolException(str);
        }
        throw new C0815cb(str);
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3148a(String str, ContentValues contentValues, InterfaceC0679f interfaceC0679f) {
        String m3205a = m3205a(str);
        HashMap mo3161b = mo3161b();
        mo3161b.put(HttpHeaders.DEPTH, "0");
        C0675b.m2668a(m3205a, "PROPFIND", mo3161b, new C0796bj(this, 2, interfaceC0679f, contentValues));
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    protected void mo3211a(HttpsURLConnection httpsURLConnection) {
        if (this.f2958d) {
            C0675b.m2678a(httpsURLConnection);
        }
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public boolean mo3149a(String str, C0785az c0785az, int i, InterfaceC0679f interfaceC0679f) {
        String m3205a = m3205a(str);
        HashMap mo3161b = mo3161b();
        mo3161b.put(HttpHeaders.DEPTH, "1");
        C0675b.m2668a(m3205a, "PROPFIND", mo3161b, new C0795bi(this, 2, interfaceC0679f, c0785az, str));
        return true;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    public String mo3150b(String str, InterfaceC0679f interfaceC0679f) {
        throw new UnsupportedOperationException();
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    protected HashMap mo3161b() {
        HashMap hashMap = new HashMap();
        String c_ = mo3171c_();
        if (c_ != null && c_.length() > 0) {
            hashMap.put("Authorization", "Basic " + c_);
        }
        hashMap.put("Connection", HTTP.CONN_KEEP_ALIVE);
        hashMap.put("Content-Type", "text/xml; charset=utf-8");
        return hashMap;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: c */
    public void mo3151c(String str, InterfaceC0679f interfaceC0679f) {
        C0675b.m2668a(m3205a(str), HttpDelete.METHOD_NAME, mo3161b(), new C0811by(this, 0, interfaceC0679f));
    }
}
