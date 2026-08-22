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
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.io.FileNotFoundException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.util.HashMap;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.protocol.HTTP;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.alensw.cloud.a.i */
/* loaded from: classes.dex */
public class C0842i extends AbstractC0808bv {
    public C0842i(Context context, C0889a c0889a) {
        super(context, c0889a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public char m3260a(AbstractC0518h abstractC0518h, ContentValues contentValues) {
        int i;
        m3237a(abstractC0518h.mo1650c(), EnumC0522l.START_OBJECT);
        String str = "";
        boolean z = false;
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("isdir".equals(mo1619d)) {
                z = abstractC0518h.mo1621g() != 0;
            } else if (ClientCookie.PATH_ATTR.equals(mo1619d)) {
                String mo1656f = abstractC0518h.mo1656f();
                str = mo1656f.substring(mo1656f.lastIndexOf(47) + 1);
                contentValues.put("document_id", mo1656f);
                contentValues.put("_display_name", str);
            } else if ("mtime".equals(mo1619d)) {
                long m1915m = abstractC0518h.m1915m();
                contentValues.put("last_modified", Long.valueOf(m1915m));
                contentValues.put("datetaken", Long.valueOf(m1915m));
            } else if ("size".equals(mo1619d)) {
                contentValues.put("_size", Long.valueOf(abstractC0518h.m1915m()));
            } else {
                abstractC0518h.mo1648b();
            }
        }
        char m2721a = z ? 'D' : C0690c.m2721a(str);
        if (z) {
            contentValues.remove("_size");
        }
        contentValues.put("mime_type", z ? "vnd.android.document/directory" : C0690c.m2722a(str, m2721a));
        boolean z2 = m2721a == 'I' || m2721a == 'V';
        if (z) {
            i = 536870974;
        } else {
            i = (z2 ? 1 : 0) | 6;
        }
        contentValues.put("flags", Integer.valueOf(i));
        return m2721a;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3141a() {
        ContentValues contentValues = new ContentValues(3);
        contentValues.put("document_id", "/apps/quickpic");
        contentValues.put("mime_type", "vnd.android.document/directory");
        contentValues.put("flags", (Integer) 536870970);
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3142a(String str, String str2, InterfaceC0679f interfaceC0679f) {
        StringBuilder sb = new StringBuilder("https://pcs.baidu.com/rest/2.0/pcs/file");
        sb.append("?method=mkdir&path=").append(Uri.encode(str + "/" + str2));
        sb.append("&access_token=").append(mo3171c_());
        ContentValues contentValues = new ContentValues();
        C0675b.m2668a(sb.toString(), HttpPost.METHOD_NAME, mo3161b(), new C0845l(this, 1, interfaceC0679f, contentValues));
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3143a(String str, String str2, C0682i c0682i, InterfaceC0678e interfaceC0678e) {
        StringBuilder sb = new StringBuilder("https://pcs.baidu.com/rest/2.0/pcs/file");
        sb.append("?method=upload&ondup=newcopy&path=").append(Uri.encode(str + "/" + str2));
        sb.append("&access_token=").append(mo3171c_());
        ContentValues contentValues = new ContentValues();
        C0675b.m2668a(sb.toString(), HttpPost.METHOD_NAME, mo3161b(), new C0846m(this, 1, interfaceC0678e, contentValues, c0682i));
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3144a(String str, String str2, String str3, InterfaceC0679f interfaceC0679f) {
        String str4 = str3 + str.substring(str.lastIndexOf(47));
        String str5 = "https://pcs.baidu.com/rest/2.0/pcs/file?method=move&access_token=" + mo3171c_() + "&from=" + Uri.encode(str) + "&to=" + Uri.encode(str4);
        ContentValues contentValues = new ContentValues();
        C0675b.m2668a(str5, HttpPost.METHOD_NAME, mo3161b(), new C0811by(this, 0, interfaceC0679f));
        contentValues.put("document_id", str4);
        contentValues.put("parent_id", str3);
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public String mo3145a(String str, int i, InterfaceC0679f interfaceC0679f) {
        return "https://pcs.baidu.com/rest/2.0/pcs/thumbnail?method=generate&quality=80&width=" + i + "&height=" + i + "&path=" + Uri.encode(str) + "&access_token=" + mo3171c_();
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public String mo3146a(String str, InterfaceC0679f interfaceC0679f) {
        return "https://pcs.baidu.com/rest/2.0/pcs/file?method=download&path=" + Uri.encode(str) + "&access_token=" + mo3171c_();
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3147a(int i, String str) {
        try {
            int i2 = new JSONObject(str).getInt("error_code");
            if (i == 401) {
                if (i2 != 111 && i2 != 110) {
                    throw new C0815cb(str);
                }
                throw new C0814ca(str);
            }
        } catch (JSONException e) {
        }
        throw new ProtocolException(str);
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3148a(String str, ContentValues contentValues, InterfaceC0679f interfaceC0679f) {
        C0675b.m2668a("https://pcs.baidu.com/rest/2.0/pcs/file?method=meta&path=" + Uri.encode(str) + "&access_token=" + mo3171c_(), HttpGet.METHOD_NAME, mo3161b(), new C0844k(this, 1, interfaceC0679f, contentValues));
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public boolean mo3149a(String str, C0785az c0785az, int i, InterfaceC0679f interfaceC0679f) {
        int[] iArr = {0};
        C0675b.m2668a("https://pcs.baidu.com/rest/2.0/pcs/file?method=list&by=time&order=desc&path=" + Uri.encode(str) + "&access_token=" + mo3171c_() + "&limit=" + i + "-" + (i + HttpStatus.SC_INTERNAL_SERVER_ERROR), HttpGet.METHOD_NAME, mo3161b(), new C0843j(this, 1, interfaceC0679f, iArr, c0785az));
        return iArr[0] < 500;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    public String mo3150b(String str, InterfaceC0679f interfaceC0679f) {
        HttpURLConnection httpURLConnection;
        HttpURLConnection m2661a;
        String str2;
        String str3 = "https://d.pcs.baidu.com/rest/2.0/pcs/file?method=download&path=" + Uri.encode(str) + "&access_token=" + mo3171c_();
        int i = 5;
        while (true) {
            try {
                m2661a = C0675b.m2661a(str3, HttpGet.METHOD_NAME);
                try {
                    m2661a.setInstanceFollowRedirects(false);
                    int responseCode = m2661a.getResponseCode();
                    C0675b.m2664a(interfaceC0679f);
                    if (responseCode != 302 || (str2 = m2661a.getHeaderField(HttpHeaders.LOCATION)) == null) {
                        break;
                    }
                    C0675b.m2670a(m2661a);
                    i--;
                    if (i <= 0) {
                        break;
                    }
                    str3 = str2;
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection = m2661a;
                    C0675b.m2670a(httpURLConnection);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                httpURLConnection = null;
            }
        }
        C0675b.m2670a(m2661a);
        str2 = str3;
        if (i <= 0 || i == 5) {
            throw new FileNotFoundException("redirection");
        }
        return str2;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    protected HashMap mo3161b() {
        HashMap hashMap = new HashMap();
        hashMap.put("Connection", HTTP.CONN_KEEP_ALIVE);
        return hashMap;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: c */
    public void mo3151c(String str, InterfaceC0679f interfaceC0679f) {
        C0675b.m2668a("https://pcs.baidu.com/rest/2.0/pcs/file?method=delete&access_token=" + mo3171c_() + "&path=" + Uri.encode(str), HttpPost.METHOD_NAME, mo3161b(), new C0811by(this, 0, interfaceC0679f));
    }
}
