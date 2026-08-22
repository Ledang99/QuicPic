package com.alensw.cloud.p036a;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.alensw.cloud.oauth.AbstractC0891ab;
import com.alensw.cloud.oauth.C0889a;
import com.alensw.cloud.oauth.C0890aa;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0678e;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p029f.C0690c;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.ProtocolException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.TimeZone;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.protocol.HTTP;

/* renamed from: com.alensw.cloud.a.as */
/* loaded from: classes.dex */
public class C0778as extends AbstractC0808bv {

    /* renamed from: c */
    private static final DateFormat f2922c = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    /* renamed from: d */
    private AbstractC0891ab f2923d;

    static {
        f2922c.setTimeZone(TimeZone.getTimeZone("GMT"));
    }

    public C0778as(Context context, C0889a c0889a) {
        super(context, c0889a);
        this.f2923d = new C0890aa();
        this.f2923d.m3366a(c0889a.f3196g);
    }

    /* renamed from: a */
    private long m3172a(String str) {
        try {
            return f2922c.parse(str).getTime() / 1000;
        } catch (ParseException e) {
            return 0L;
        }
    }

    /* renamed from: a */
    private ContentValues m3173a(String str, String str2, String str3, InputStream inputStream, InterfaceC0678e interfaceC0678e) {
        String[] strArr = {null};
        C0675b.m2668a(this.f2923d.m3364a("http://api-content.dfs.kuaipan.cn/1/fileops/upload_locate", HttpGet.METHOD_NAME, new String[0]), HttpGet.METHOD_NAME, mo3161b(), new C0780au(this, 1, interfaceC0678e, strArr));
        if (strArr[0] == null) {
            throw new ProtocolException("Create file failed: can not get upload url");
        }
        C0675b.m2668a(this.f2923d.m3364a(strArr[0] + "/1/fileops/upload_file", HttpPost.METHOD_NAME, "overwrite", "False", "root", "kuaipan", ClientCookie.PATH_ATTR, m3174a(str, str2)), HttpPost.METHOD_NAME, mo3161b(), new C0781av(this, 1, interfaceC0678e, inputStream, str2, str3));
        ContentValues contentValues = new ContentValues();
        contentValues.put("document_id", m3174a(str, str2));
        return contentValues;
    }

    /* renamed from: a */
    private String m3174a(String str, String str2) {
        return str.endsWith("/") ? str + str2 : str + "/" + str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m3175a(AbstractC0518h abstractC0518h, ContentValues contentValues, String str) {
        int i;
        m3237a(abstractC0518h.mo1650c(), EnumC0522l.START_OBJECT);
        String str2 = "";
        String str3 = "";
        boolean z = false;
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("is_deleted".equals(mo1619d)) {
                z = abstractC0518h.m1917o();
            } else if ("name".equals(mo1619d)) {
                str2 = abstractC0518h.mo1656f();
            } else if ("modify_time".equals(mo1619d)) {
                long m3172a = m3172a(abstractC0518h.mo1656f());
                contentValues.put("last_modified", Long.valueOf(m3172a));
                contentValues.put("datetaken", Long.valueOf(m3172a));
            } else if ("type".equals(mo1619d)) {
                str3 = abstractC0518h.mo1656f();
            } else if ("size".equals(mo1619d)) {
                contentValues.put("_size", Long.valueOf(abstractC0518h.m1915m()));
            } else {
                abstractC0518h.mo1648b();
            }
        }
        if (z || str2.length() == 0 || !("file".equals(str3) || "folder".equals(str3))) {
            return false;
        }
        contentValues.put("document_id", m3174a(str, str2));
        contentValues.put("_display_name", str2);
        boolean equals = "folder".equals(str3);
        char m2721a = equals ? 'D' : C0690c.m2721a(str2);
        if (equals) {
            contentValues.remove("_size");
        }
        String m2722a = equals ? "vnd.android.document/directory" : C0690c.m2722a(str2, m2721a);
        contentValues.put("mime_type", m2722a);
        boolean z2 = m2721a == 'I' && m3177c(m2722a);
        if (equals) {
            i = 536870974;
        } else {
            i = (z2 ? 1 : 0) | 6;
        }
        contentValues.put("flags", Integer.valueOf(i));
        return true;
    }

    /* renamed from: c */
    private boolean m3177c(String str) {
        return str.endsWith("jpeg") || str.endsWith("gif") || str.endsWith("png") || str.endsWith("ms-bmp");
    }

    /* renamed from: d */
    private String m3178d(String str) {
        StringBuilder sb = new StringBuilder();
        for (String str2 : str.split("/")) {
            sb.append("/").append(Uri.encode(str2, "UTF-8"));
        }
        return sb.toString();
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
        C0675b.m2668a(this.f2923d.m3364a("http://openapi.kuaipan.cn/1/fileops/create_folder", HttpGet.METHOD_NAME, "root", "kuaipan", ClientCookie.PATH_ATTR, m3174a(str, str2)), HttpGet.METHOD_NAME, mo3161b(), new C0782aw(this, 1, interfaceC0679f));
        ContentValues contentValues = new ContentValues();
        contentValues.put("document_id", m3174a(str, str2));
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3143a(String str, String str2, C0682i c0682i, InterfaceC0678e interfaceC0678e) {
        InputStream inputStream = c0682i.f2578e;
        String str3 = str2;
        for (int i = 0; i < 2; i++) {
            try {
                return m3173a(str, str3, c0682i.f2576c, inputStream, interfaceC0678e);
            } catch (C0783ax e) {
                str3 = m3238b(str3);
                Log.v("KingsoftDrive", "file already exists, rename to " + str3);
                if (!(inputStream instanceof FileInputStream)) {
                    throw new ProtocolException("Can't rewind input stream");
                }
                ((FileInputStream) inputStream).getChannel().position(0L);
            }
        }
        throw new ProtocolException("Create file failed");
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3144a(String str, String str2, String str3, InterfaceC0679f interfaceC0679f) {
        String substring = "/".equals(str3) ? str.substring(str.lastIndexOf(47)) : str3 + str.substring(str.lastIndexOf(47));
        String m3364a = this.f2923d.m3364a("http://openapi.kuaipan.cn/1/fileops/move", HttpGet.METHOD_NAME, "root", "kuaipan", "from_path", str, "to_path", substring);
        ContentValues contentValues = new ContentValues();
        C0675b.m2668a(m3364a, HttpGet.METHOD_NAME, mo3161b(), new C0782aw(this, 0, interfaceC0679f));
        contentValues.put("document_id", substring);
        contentValues.put("parent_id", str3);
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public String mo3145a(String str, int i, InterfaceC0679f interfaceC0679f) {
        if (m3177c(C0690c.m2724b(str))) {
            return this.f2923d.m3364a("http://conv.kuaipan.cn/1/fileops/thumbnail", HttpGet.METHOD_NAME, "width", String.valueOf(i), "height", String.valueOf(i), "root", "kuaipan", ClientCookie.PATH_ATTR, str);
        }
        return null;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public String mo3146a(String str, InterfaceC0679f interfaceC0679f) {
        return this.f2923d.m3364a("http://api-content.dfs.kuaipan.cn/1/fileops/download_file", HttpGet.METHOD_NAME, "root", "kuaipan", ClientCookie.PATH_ATTR, str);
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3147a(int i, String str) {
        if (i == 401) {
            throw new C0815cb(str);
        }
        if (i == 403 || i == 405) {
            Log.e("KingsoftDrive", "Http error: file already exist on server\n" + str);
            throw new C0783ax(str);
        }
        Log.e("KingsoftDrive", "Http error code: " + i + " - " + str);
        throw new ProtocolException(str);
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3148a(String str, ContentValues contentValues, InterfaceC0679f interfaceC0679f) {
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public boolean mo3149a(String str, C0785az c0785az, int i, InterfaceC0679f interfaceC0679f) {
        int i2 = ((i + HttpStatus.SC_INTERNAL_SERVER_ERROR) - 1) / HttpStatus.SC_INTERNAL_SERVER_ERROR;
        boolean[] zArr = {true};
        C0675b.m2668a(this.f2923d.m3364a("http://openapi.kuaipan.cn/1/metadata/kuaipan" + m3178d(str), HttpGet.METHOD_NAME, "list", "true", "filter_ext", "gif,png,jpg,bmp,jpeg,mp4,3gp,mov,avi,mkv", "sort_by", "rtime", "page_size", String.valueOf(HttpStatus.SC_INTERNAL_SERVER_ERROR), "page", String.valueOf(i2 + 1)), HttpGet.METHOD_NAME, mo3161b(), new C0779at(this, 1, interfaceC0679f, str, c0785az, zArr, i2));
        return zArr[0];
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    public String mo3150b(String str, InterfaceC0679f interfaceC0679f) {
        return mo3146a(str, interfaceC0679f);
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    protected HashMap mo3161b() {
        HashMap hashMap = new HashMap();
        hashMap.put("Connection", HTTP.CONN_KEEP_ALIVE);
        return hashMap;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    protected void mo3179b(String str, String str2, InterfaceC0679f interfaceC0679f) {
        C0675b.m2668a(str, HttpGet.METHOD_NAME, mo3161b(), new C0782aw(this, str2, interfaceC0679f));
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: c */
    public void mo3151c(String str, InterfaceC0679f interfaceC0679f) {
        if (str.indexOf(47) < 0) {
            return;
        }
        C0675b.m2668a(this.f2923d.m3364a("http://openapi.kuaipan.cn/1/fileops/delete", HttpGet.METHOD_NAME, "root", "kuaipan", ClientCookie.PATH_ATTR, str, "to_recycle", "True"), HttpGet.METHOD_NAME, mo3161b(), new C0782aw(this, 0, interfaceC0679f));
    }
}
