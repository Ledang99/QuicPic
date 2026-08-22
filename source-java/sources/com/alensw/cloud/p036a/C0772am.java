package com.alensw.cloud.p036a;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.alensw.cloud.oauth.C0889a;
import com.alensw.cloud.oauth.C0924v;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0678e;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.io.IOException;
import java.net.ProtocolException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.TimeZone;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;

/* renamed from: com.alensw.cloud.a.am */
/* loaded from: classes.dex */
public class C0772am extends AbstractC0808bv {

    /* renamed from: c */
    private static final DateFormat f2906c = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");

    /* renamed from: d */
    private final String f2907d;

    static {
        f2906c.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public C0772am(Context context, C0889a c0889a) {
        super(context, c0889a);
        this.f2907d = c0889a.f3191b;
    }

    /* renamed from: a */
    private static long m3166a(String str) {
        try {
            return f2906c.parse(str).getTime() / 1000;
        } catch (Exception e) {
            return 0L;
        }
    }

    /* renamed from: a */
    private void m3167a(AbstractC0518h abstractC0518h, ContentValues contentValues) {
        if (abstractC0518h.mo1650c() != EnumC0522l.START_OBJECT) {
            throw new IOException("Object start expected");
        }
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("latitude".equals(mo1619d)) {
                contentValues.put("latitude", Double.valueOf(abstractC0518h.mo1623i()));
            } else if ("longitude".equals(mo1619d)) {
                contentValues.put("longitude", Double.valueOf(abstractC0518h.mo1623i()));
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }

    /* renamed from: b */
    private void m3169b(AbstractC0518h abstractC0518h, ContentValues contentValues) {
        if (abstractC0518h.mo1650c() != EnumC0522l.START_OBJECT) {
            throw new IOException("Object start expected");
        }
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("width".equals(mo1619d)) {
                contentValues.put("width", Integer.valueOf(abstractC0518h.mo1621g()));
            } else if ("height".equals(mo1619d)) {
                contentValues.put("height", Integer.valueOf(abstractC0518h.mo1621g()));
            } else if ("date".equals(mo1619d)) {
                long m3166a = m3166a(abstractC0518h.mo1656f());
                if (m3166a != 0) {
                    contentValues.put("datetaken", Long.valueOf(m3166a));
                }
            } else if ("location".equals(mo1619d)) {
                m3167a(abstractC0518h, contentValues);
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m3170c(AbstractC0518h abstractC0518h, ContentValues contentValues) {
        if (abstractC0518h.mo1650c() != EnumC0522l.START_OBJECT) {
            throw new IOException("Object start expected");
        }
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("id".equals(mo1619d)) {
                contentValues.put("document_id", abstractC0518h.mo1656f());
            } else if ("title".equals(mo1619d)) {
                contentValues.put("_display_name", abstractC0518h.mo1656f());
            } else if ("modifiedDate".equals(mo1619d)) {
                contentValues.put("last_modified", Long.valueOf(m3166a(abstractC0518h.mo1656f())));
            } else if ("mimeType".equals(mo1619d)) {
                contentValues.put("mime_type", abstractC0518h.mo1656f());
            } else if ("fileSize".equals(mo1619d)) {
                contentValues.put("_size", Long.valueOf(abstractC0518h.m1915m()));
            } else if ("downloadUrl".equals(mo1619d)) {
                contentValues.put("content_url", abstractC0518h.mo1656f());
            } else if ("thumbnailLink".equals(mo1619d)) {
                contentValues.put("thumbnail_url", abstractC0518h.mo1656f());
            } else if ("imageMediaMetadata".equals(mo1619d)) {
                m3169b(abstractC0518h, contentValues);
            } else {
                abstractC0518h.mo1648b();
            }
        }
        if ("application/vnd.google-apps.folder".equals(contentValues.getAsString("mime_type"))) {
            contentValues.put("flags", (Integer) 536870970);
            contentValues.put("mime_type", "vnd.android.document/directory");
            contentValues.remove("_size");
        } else {
            contentValues.put("flags", (Integer) 7);
        }
        if (contentValues.getAsLong("datetaken") == null) {
            contentValues.put("datetaken", contentValues.getAsLong("last_modified"));
        }
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3141a() {
        ContentValues contentValues = new ContentValues(3);
        contentValues.put("document_id", "root");
        contentValues.put("mime_type", "vnd.android.document/directory");
        contentValues.put("flags", (Integer) 536870970);
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3142a(String str, String str2, InterfaceC0679f interfaceC0679f) {
        StringBuilder sb = new StringBuilder();
        sb.append("{").append("\"mimeType\":\"application/vnd.google-apps.folder\",\"title\":\"").append(str2).append("\"");
        if (str.length() != 0) {
            sb.append(",\"parents\":[{\"id\":\"").append(str).append("\"}]");
        }
        sb.append("}");
        ContentValues contentValues = new ContentValues(13);
        C0675b.m2668a("https://www.googleapis.com/upload/drive/v2/files?uploadType=multipart", HttpPost.METHOD_NAME, mo3161b(), new C0775ap(this, 1, interfaceC0679f, contentValues, sb));
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3143a(String str, String str2, C0682i c0682i, InterfaceC0678e interfaceC0678e) {
        StringBuilder sb = new StringBuilder();
        sb.append("{").append("\"mimeType\":\"").append(c0682i.f2576c).append("\",\"title\":\"").append(str2).append("\"");
        if (str.length() != 0) {
            sb.append(",\"parents\":[{\"id\":\"").append(str).append("\"}]");
        }
        sb.append("}");
        ContentValues contentValues = new ContentValues(13);
        C0675b.m2668a("https://www.googleapis.com/upload/drive/v2/files?uploadType=multipart", HttpPost.METHOD_NAME, mo3161b(), new C0776aq(this, 1, interfaceC0678e, contentValues, sb, c0682i));
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3144a(String str, String str2, String str3, InterfaceC0679f interfaceC0679f) {
        ContentValues contentValues = new ContentValues();
        StringBuilder sb = new StringBuilder();
        sb.append("{\"id\":\"").append(str3).append("\"}");
        C0675b.m2668a("https://www.googleapis.com/drive/v2/files/" + str + "/parents", HttpPost.METHOD_NAME, mo3161b(), new C0777ar(this, 1, interfaceC0679f, sb));
        C0675b.m2668a("https://www.googleapis.com/drive/v2/files/" + str + "/parents/" + str2, HttpDelete.METHOD_NAME, mo3161b(), new C0811by(this, 0, interfaceC0679f));
        contentValues.put("parent_id", str3);
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public String mo3145a(String str, int i, InterfaceC0679f interfaceC0679f) {
        ContentValues contentValues = new ContentValues(13);
        mo3148a(str, contentValues, interfaceC0679f);
        return contentValues.getAsString("thumbnail_url");
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public String mo3146a(String str, InterfaceC0679f interfaceC0679f) {
        ContentValues contentValues = new ContentValues(13);
        mo3148a(str, contentValues, interfaceC0679f);
        return contentValues.getAsString("content_url");
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3147a(int i, String str) {
        if (i != 401) {
            throw new ProtocolException(str);
        }
        throw new C0814ca(str);
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3148a(String str, ContentValues contentValues, InterfaceC0679f interfaceC0679f) {
        C0675b.m2668a("https://www.googleapis.com/drive/v2/files/" + str, HttpGet.METHOD_NAME, mo3161b(), new C0774ao(this, 1, interfaceC0679f, contentValues));
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public boolean mo3149a(String str, C0785az c0785az, int i, InterfaceC0679f interfaceC0679f) {
        String format = String.format("'%s' in parents and trashed != true and (mimeType = 'application/vnd.google-apps.folder' or mimeType contains 'image/' or mimeType contains 'video/')", str);
        StringBuilder sb = new StringBuilder("https://www.googleapis.com/drive/v2/files");
        sb.append("?q=").append(Uri.encode(format)).append("&maxResults=1000");
        String[] strArr = {""};
        do {
            C0675b.m2668a(strArr[0].length() == 0 ? sb.toString() : sb + "&pageToken=" + strArr[0], HttpGet.METHOD_NAME, mo3161b(), new C0773an(this, 1, interfaceC0679f, strArr, c0785az));
        } while (strArr[0].length() != 0);
        return true;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    public String mo3150b(String str, InterfaceC0679f interfaceC0679f) {
        throw new UnsupportedOperationException();
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: c */
    public void mo3151c(String str, InterfaceC0679f interfaceC0679f) {
        C0675b.m2668a("https://www.googleapis.com/drive/v2/files/" + str + "/trash", HttpPost.METHOD_NAME, mo3161b(), new C0811by(this, 0, interfaceC0679f));
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: c_ */
    protected synchronized String mo3171c_() {
        if (this.f3008b.f3230b == null) {
            m3236a(this.f3007a, this.f3008b, this.f2907d, C0924v.f3263a);
        }
        return this.f3008b.f3229a;
    }
}
