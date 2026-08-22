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
import java.net.ProtocolException;
import java.net.UnknownHostException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.TimeZone;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;

/* renamed from: com.alensw.cloud.a.ba */
/* loaded from: classes.dex */
public class C0787ba extends AbstractC0808bv {

    /* renamed from: c */
    private static final DateFormat f2941c = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ");

    /* renamed from: d */
    private final String f2942d;

    static {
        f2941c.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public C0787ba(Context context, C0889a c0889a) {
        super(context, c0889a);
        this.f2942d = "folder." + c0889a.f3191b;
    }

    /* renamed from: a */
    private static String m3196a(String str) {
        return "https://apis.live.net/v5.0/" + str;
    }

    /* renamed from: a */
    private static String m3197a(Header header, String str) {
        return header != null ? header.getValue() : str;
    }

    /* renamed from: a */
    private void m3198a(AbstractC0518h abstractC0518h, ContentValues contentValues) {
        m3237a(abstractC0518h.mo1650c(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("latitude".equals(mo1619d)) {
                contentValues.put("latitude", Double.valueOf(abstractC0518h.m1916n()));
            } else if ("longitude".equals(mo1619d)) {
                contentValues.put("longitude", Double.valueOf(abstractC0518h.m1916n()));
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3200b(AbstractC0518h abstractC0518h, ContentValues contentValues) {
        String str = "";
        String str2 = "";
        m3237a(abstractC0518h.mo1650c(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("id".equals(mo1619d)) {
                contentValues.put("document_id", abstractC0518h.mo1656f());
            } else if ("name".equals(mo1619d)) {
                str = abstractC0518h.mo1656f();
                contentValues.put("_display_name", str);
            } else if ("updated_time".equals(mo1619d)) {
                contentValues.put("last_modified", Long.valueOf(m3201c(abstractC0518h.mo1656f())));
            } else if ("size".equals(mo1619d)) {
                contentValues.put("_size", Long.valueOf(abstractC0518h.m1915m()));
            } else if ("type".equals(mo1619d)) {
                str2 = abstractC0518h.mo1656f();
            } else if ("location".equals(mo1619d)) {
                if (abstractC0518h.mo1650c() != EnumC0522l.VALUE_NULL) {
                    m3198a(abstractC0518h, contentValues);
                }
            } else if ("width".equals(mo1619d)) {
                contentValues.put("width", Integer.valueOf(abstractC0518h.m1914l()));
            } else if ("height".equals(mo1619d)) {
                contentValues.put("height", Integer.valueOf(abstractC0518h.m1914l()));
            } else if ("when_taken".equals(mo1619d)) {
                long m3201c = m3201c(abstractC0518h.mo1656f());
                if (m3201c != 0) {
                    contentValues.put("datetaken", Long.valueOf(m3201c));
                }
            } else {
                abstractC0518h.mo1648b();
            }
        }
        if ("album".equals(str2) || "folder".equals(str2)) {
            contentValues.put("mime_type", "vnd.android.document/directory");
            contentValues.put("flags", (Integer) 58);
            contentValues.remove("_size");
        } else {
            contentValues.put("mime_type", C0690c.m2722a(str, "video".equals(str2) ? 'V' : 'I'));
            contentValues.put("flags", (Integer) 7);
        }
        if (contentValues.getAsLong("datetaken") == null) {
            contentValues.put("datetaken", contentValues.getAsLong("last_modified"));
        }
    }

    /* renamed from: c */
    private long m3201c(String str) {
        try {
            return f2941c.parse(str).getTime() / 1000;
        } catch (ParseException e) {
            return 0L;
        }
    }

    /* renamed from: e */
    private String[] m3202e(String str, InterfaceC0679f interfaceC0679f) {
        String[] strArr = new String[3];
        C0675b.m2668a(str, HttpGet.METHOD_NAME, mo3161b(), new C0792bf(this, 1, interfaceC0679f, strArr));
        return strArr;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3141a() {
        ContentValues contentValues = new ContentValues(3);
        contentValues.put("document_id", this.f2942d);
        contentValues.put("mime_type", "vnd.android.document/directory");
        contentValues.put("flags", (Integer) 58);
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3142a(String str, String str2, InterfaceC0679f interfaceC0679f) {
        String m3196a = m3196a(str);
        String str3 = "?name=" + Uri.encode(str2);
        ContentValues contentValues = new ContentValues();
        C0675b.m2668a(m3196a, HttpPost.METHOD_NAME, mo3161b(), new C0790bd(this, 1, interfaceC0679f, contentValues, str3));
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3143a(String str, String str2, C0682i c0682i, InterfaceC0678e interfaceC0678e) {
        String str3 = m3196a(str) + "/files?overwrite=ChooseNewName&downsize_photo_uploads=false";
        ContentValues contentValues = new ContentValues();
        C0675b.m2668a(str3, HttpPost.METHOD_NAME, mo3161b(), new C0791be(this, 1, interfaceC0678e, contentValues, c0682i, str2));
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3144a(String str, String str2, String str3, InterfaceC0679f interfaceC0679f) {
        ContentValues contentValues = new ContentValues();
        StringBuilder sb = new StringBuilder();
        sb.append("{\"destination\":\"").append(str3).append("\"}");
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
        C0793bg c0793bg = new C0793bg(this, m3196a(str));
        c0793bg.addHeader("Authorization", "Bearer " + mo3171c_());
        c0793bg.addHeader("Content-Type", "application/json");
        c0793bg.setEntity(new StringEntity(sb.toString()));
        HttpResponse execute = defaultHttpClient.execute((HttpUriRequest) c0793bg);
        int statusCode = execute.getStatusLine().getStatusCode();
        if (statusCode >= 200 && statusCode < 300) {
            contentValues.put("parent_id", str3);
        } else {
            if (statusCode < 400 || statusCode >= 500) {
                throw new UnknownHostException(Integer.toString(statusCode));
            }
            HttpEntity entity = execute.getEntity();
            mo3147a(statusCode, C0675b.m2656a(C0675b.m2653a(entity.getContent(), m3197a(entity.getContentEncoding(), (String) null)), C0675b.m2657a(m3197a(entity.getContentType(), (String) null)), interfaceC0679f));
        }
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public String mo3145a(String str, int i, InterfaceC0679f interfaceC0679f) {
        String[] m3202e = m3202e(m3196a(str), interfaceC0679f);
        for (int length = m3202e.length - 1; length >= 0; length--) {
            if (m3202e[length] != null) {
                return m3202e[length];
            }
        }
        return null;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public String mo3146a(String str, InterfaceC0679f interfaceC0679f) {
        String[] m3202e = m3202e(m3196a(str), interfaceC0679f);
        if (m3202e.length > 0) {
            return m3202e[0];
        }
        return null;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3147a(int i, String str) {
        if (i != 401) {
            throw new ProtocolException(str);
        }
        if (!str.contains("request_token_expired")) {
            throw new C0815cb(str);
        }
        throw new C0814ca(str);
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3148a(String str, ContentValues contentValues, InterfaceC0679f interfaceC0679f) {
        C0675b.m2668a(m3196a(str), HttpGet.METHOD_NAME, mo3161b(), new C0789bc(this, 1, interfaceC0679f, contentValues));
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public boolean mo3149a(String str, C0785az c0785az, int i, InterfaceC0679f interfaceC0679f) {
        C0675b.m2668a(m3196a(str) + "/files?filter=photos,videos,folders,albums&limit=" + HttpStatus.SC_INTERNAL_SERVER_ERROR + "&offset=" + i, HttpGet.METHOD_NAME, mo3161b(), new C0788bb(this, 1, interfaceC0679f, c0785az));
        return c0785az.size() < 500;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    public String mo3150b(String str, InterfaceC0679f interfaceC0679f) {
        return mo3146a(str, interfaceC0679f);
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: c */
    public void mo3151c(String str, InterfaceC0679f interfaceC0679f) {
        HashMap b2 = mo3161b();
        b2.put("Content-Type", "");
        C0675b.m2668a(m3196a(str), HttpDelete.METHOD_NAME, b2, new C0811by(this, 0, interfaceC0679f));
    }
}
