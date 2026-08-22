package com.alensw.cloud.p036a;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.alensw.cloud.oauth.C0889a;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0678e;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p035l.C0742b;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.ProtocolException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.cookie.ClientCookie;

/* renamed from: com.alensw.cloud.a.cc */
/* loaded from: classes.dex */
public class C0816cc extends AbstractC0808bv {

    /* renamed from: c */
    private static final DateFormat f3018c = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ");

    public C0816cc(Context context, C0889a c0889a) {
        super(context, c0889a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public char m3247a(AbstractC0518h abstractC0518h, ContentValues contentValues) {
        m3237a(abstractC0518h.mo1650c(), EnumC0522l.START_OBJECT);
        boolean z = false;
        boolean z2 = false;
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("type".equals(mo1619d)) {
                z2 = "dir".equals(abstractC0518h.mo1656f());
            } else if (ClientCookie.PATH_ATTR.equals(mo1619d)) {
                contentValues.put("document_id", abstractC0518h.mo1656f());
            } else if ("name".equals(mo1619d)) {
                contentValues.put("_display_name", abstractC0518h.mo1656f());
            } else if ("mime_type".equals(mo1619d)) {
                contentValues.put("mime_type", abstractC0518h.mo1656f());
            } else if ("modified".equals(mo1619d)) {
                long m3249a = m3249a(abstractC0518h.mo1656f());
                contentValues.put("last_modified", Long.valueOf(m3249a));
                contentValues.put("datetaken", Long.valueOf(m3249a));
            } else if ("size".equals(mo1619d)) {
                contentValues.put("_size", Long.valueOf(abstractC0518h.m1915m()));
            } else if ("preview".equals(mo1619d)) {
                contentValues.put("thumbnail_url", abstractC0518h.mo1656f());
                z = true;
            } else {
                abstractC0518h.mo1648b();
            }
            if (z2) {
                contentValues.put("mime_type", "vnd.android.document/directory");
                contentValues.put("flags", (Integer) 536870970);
                contentValues.remove("_size");
            } else {
                contentValues.put("flags", Integer.valueOf((z ? 1 : 0) | 6));
            }
        }
        if (z2) {
            return 'D';
        }
        return C0690c.m2721a(contentValues.getAsString("_display_name"));
    }

    /* renamed from: a */
    private static long m3249a(String str) {
        try {
            StringBuilder sb = new StringBuilder(str);
            sb.deleteCharAt(sb.lastIndexOf(":"));
            return f3018c.parse(sb.toString()).getTime() / 1000;
        } catch (Exception e) {
            return 0L;
        }
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3141a() {
        ContentValues contentValues = new ContentValues(3);
        contentValues.put("document_id", "/");
        contentValues.put("mime_type", "vnd.android.document/directory");
        contentValues.put("flags", (Integer) 536870970);
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3142a(String str, String str2, InterfaceC0679f interfaceC0679f) {
        ContentValues contentValues = new ContentValues();
        String str3 = "https://cloud-api.yandex.net/v1/disk/resources?path=" + Uri.encode("/".equals(str) ? str + str2 : str + "/" + str2);
        C0675b.m2668a(str3, HttpPut.METHOD_NAME, mo3161b(), new C0820cg(this, 1, interfaceC0679f));
        C0675b.m2668a(str3, HttpGet.METHOD_NAME, mo3161b(), new C0821ch(this, 1, interfaceC0679f, contentValues));
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3143a(String str, String str2, C0682i c0682i, InterfaceC0678e interfaceC0678e) {
        ContentValues contentValues = new ContentValues();
        InputStream inputStream = c0682i.f2578e;
        String[] strArr = {null};
        String str3 = null;
        int i = 0;
        while (true) {
            int i2 = i;
            String str4 = str3;
            if (i2 >= 2) {
                str3 = str4;
                break;
            }
            String str5 = "/".equals(str) ? str + str2 : str + "/" + str2;
            String str6 = "https://cloud-api.yandex.net/v1/disk/resources/upload?path=" + Uri.encode(str5);
            str3 = "https://cloud-api.yandex.net/v1/disk/resources?path=" + Uri.encode(str5);
            boolean[] zArr = {false};
            C0675b.m2668a(str6, HttpGet.METHOD_NAME, mo3161b(), new C0822ci(this, 1, interfaceC0678e, strArr, zArr));
            if (!zArr[0]) {
                break;
            }
            if (inputStream instanceof FileInputStream) {
                String[] strArr2 = {null};
                C0675b.m2668a(str3, HttpGet.METHOD_NAME, mo3161b(), new C0823cj(this, 1, interfaceC0678e, strArr2));
                if (C0742b.m2972a((FileInputStream) inputStream, MessageDigestAlgorithms.MD5).equals(strArr2[0])) {
                    strArr[0] = null;
                    break;
                }
            }
            str2 = m3238b(str2);
            i = i2 + 1;
        }
        if (strArr[0] != null) {
            C0675b.m2668a(strArr[0], HttpPut.METHOD_NAME, mo3161b(), new C0824ck(this, 1, interfaceC0678e, c0682i, inputStream));
        }
        C0675b.m2668a(str3, HttpGet.METHOD_NAME, mo3161b(), new C0825cl(this, 1, interfaceC0678e, contentValues));
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3144a(String str, String str2, String str3, InterfaceC0679f interfaceC0679f) {
        String m2993b = C0742b.m2993b(str3, str.substring(str.lastIndexOf(47) + 1));
        String str4 = "https://cloud-api.yandex.net/v1/disk/resources/move?from=" + Uri.encode(str) + "&path=" + Uri.encode(m2993b);
        ContentValues contentValues = new ContentValues();
        C0675b.m2668a(str4, HttpPost.METHOD_NAME, mo3161b(), new C0811by(this, 0, interfaceC0679f));
        contentValues.put("document_id", m2993b);
        contentValues.put("parent_id", str3);
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    protected String mo3145a(String str, int i, InterfaceC0679f interfaceC0679f) {
        return null;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    protected String mo3146a(String str, InterfaceC0679f interfaceC0679f) {
        return "https://webdav.yandex.ru/" + Uri.encode(str.substring(6));
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3147a(int i, String str) {
        Log.d("YandexDrive", "onHttpError statusCode : " + i);
        if (i != 401) {
            throw new ProtocolException(str);
        }
        throw new C0815cb(str);
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3148a(String str, ContentValues contentValues, InterfaceC0679f interfaceC0679f) {
        C0675b.m2668a("https://cloud-api.yandex.net/v1/disk/resources?path=" + Uri.encode(str), HttpGet.METHOD_NAME, mo3161b(), new C0818ce(this, 1, interfaceC0679f, contentValues));
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public boolean mo3149a(String str, C0785az c0785az, int i, InterfaceC0679f interfaceC0679f) {
        int[] iArr = {0};
        C0675b.m2668a("https://cloud-api.yandex.net/v1/disk/resources?path=" + Uri.encode(str) + "&limit=" + HttpStatus.SC_INTERNAL_SERVER_ERROR + "&offset=" + i, HttpGet.METHOD_NAME, mo3161b(), new C0817cd(this, 1, interfaceC0679f, iArr, c0785az));
        return iArr[0] < 500;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    public String mo3150b(String str, InterfaceC0679f interfaceC0679f) {
        String str2 = "https://cloud-api.yandex.net/v1/disk/resources/download?path=" + Uri.encode(str);
        ContentValues contentValues = new ContentValues();
        StringBuilder sb = new StringBuilder();
        C0675b.m2668a(str2, HttpGet.METHOD_NAME, mo3161b(), new C0819cf(this, 1, interfaceC0679f, contentValues, sb));
        return sb.toString();
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    protected HashMap mo3161b() {
        HashMap mo3161b = super.mo3161b();
        mo3161b.put("Authorization", "OAuth " + mo3171c_());
        return mo3161b;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: c */
    public void mo3151c(String str, InterfaceC0679f interfaceC0679f) {
        C0675b.m2668a("https://cloud-api.yandex.net/v1/disk/resources?path=" + Uri.encode(str), HttpDelete.METHOD_NAME, mo3161b(), new C0811by(this, 0, interfaceC0679f));
    }
}
