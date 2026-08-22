package com.alensw.cloud.p036a;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.alensw.cloud.oauth.C0889a;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0678e;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p035l.C0742b;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.io.InputStream;
import java.net.ProtocolException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.cookie.ClientCookie;

/* renamed from: com.alensw.cloud.a.t */
/* loaded from: classes.dex */
public class C0853t extends AbstractC0808bv {

    /* renamed from: c */
    private static final DateFormat f3115c = new SimpleDateFormat("EEE, d MMM yyyy HH:mm:ss Z", Locale.US);

    static {
        f3115c.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public C0853t(Context context, C0889a c0889a) {
        super(context, c0889a);
    }

    /* renamed from: a */
    private long m3265a(String str) {
        try {
            return f3115c.parse(str).getTime() / 1000;
        } catch (ParseException e) {
            return 0L;
        }
    }

    /* renamed from: a */
    private ContentValues m3266a(String str, String str2, InputStream inputStream, InterfaceC0679f interfaceC0679f) {
        String str3;
        String str4;
        if (inputStream == null) {
            str3 = "fileops/create_folder";
            str4 = "https://api.dropbox.com/1/";
        } else {
            str3 = "files_put";
            str4 = "https://api-content.dropbox.com/1/";
        }
        String str5 = "/".equals(str) ? str + str2 : str + "/" + str2;
        StringBuilder sb = new StringBuilder(str4);
        sb.append(str3).append("?root=dropbox&").append("locale=en-US");
        sb.append("&path=").append(Uri.encode(str5));
        if (inputStream != null) {
            sb.append("&overwrite=false");
        }
        ContentValues contentValues = new ContentValues(13);
        C0675b.m2668a(sb.toString(), HttpPost.METHOD_NAME, mo3161b(), new C0856w(this, 1, interfaceC0679f, contentValues, inputStream));
        return contentValues;
    }

    /* renamed from: a */
    private void m3267a(AbstractC0518h abstractC0518h, ContentValues contentValues) {
        m3237a(abstractC0518h.mo1650c(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("time_taken".equals(mo1619d)) {
                long m3265a = m3265a(abstractC0518h.mo1656f());
                if (m3265a != 0) {
                    contentValues.put("datetaken", Long.valueOf(m3265a));
                }
            } else if ("lat_long".equals(mo1619d) && abstractC0518h.mo1650c() == EnumC0522l.START_ARRAY) {
                int i = 0;
                while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
                    if (i < 2) {
                        contentValues.put(i == 0 ? "latitude" : "longitude", Double.valueOf(abstractC0518h.m1916n()));
                    }
                    i++;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3269b(AbstractC0518h abstractC0518h, ContentValues contentValues) {
        boolean z = false;
        m3237a(abstractC0518h.mo1650c(), EnumC0522l.START_OBJECT);
        boolean z2 = false;
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("is_dir".equals(mo1619d)) {
                z2 = abstractC0518h.m1913j();
            } else if (ClientCookie.PATH_ATTR.equals(mo1619d)) {
                String mo1656f = abstractC0518h.mo1656f();
                contentValues.put("document_id", mo1656f);
                contentValues.put("_display_name", mo1656f.substring(mo1656f.lastIndexOf(47) + 1));
            } else if ("modified".equals(mo1619d)) {
                contentValues.put("last_modified", Long.valueOf(m3265a(abstractC0518h.mo1656f())));
            } else if ("client_mtime".equals(mo1619d)) {
                abstractC0518h.mo1656f();
            } else if ("thumb_exists".equals(mo1619d)) {
                z = abstractC0518h.m1913j();
            } else if ("mime_type".equals(mo1619d)) {
                contentValues.put("mime_type", abstractC0518h.mo1656f());
            } else if ("bytes".equals(mo1619d)) {
                contentValues.put("_size", Long.valueOf(abstractC0518h.m1915m()));
            } else if ("photo_info".equals(mo1619d)) {
                m3267a(abstractC0518h, contentValues);
            } else {
                abstractC0518h.mo1648b();
            }
        }
        if (z2) {
            contentValues.put("mime_type", "vnd.android.document/directory");
            contentValues.put("flags", (Integer) 536870938);
            contentValues.remove("_size");
        } else if (z) {
            contentValues.put("flags", (Integer) 7);
        } else {
            contentValues.put("flags", (Integer) 6);
        }
        if (contentValues.getAsLong("datetaken") == null) {
            contentValues.put("datetaken", contentValues.getAsLong("last_modified"));
        }
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3141a() {
        ContentValues contentValues = new ContentValues(3);
        contentValues.put("document_id", "/");
        contentValues.put("mime_type", "vnd.android.document/directory");
        contentValues.put("flags", (Integer) 536870938);
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3142a(String str, String str2, InterfaceC0679f interfaceC0679f) {
        return m3266a(str, str2, (InputStream) null, interfaceC0679f);
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3143a(String str, String str2, C0682i c0682i, InterfaceC0678e interfaceC0678e) {
        return m3266a(str, str2, c0682i.f2578e, interfaceC0678e);
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3144a(String str, String str2, String str3, InterfaceC0679f interfaceC0679f) {
        String m2993b = C0742b.m2993b(str3, str.substring(str.lastIndexOf(47) + 1));
        StringBuilder sb = new StringBuilder("https://api.dropbox.com/1/");
        sb.append("fileops/move?root=dropbox&").append("locale=en-US");
        sb.append("&from_path=").append(Uri.encode(str));
        sb.append("&to_path=").append(Uri.encode(m2993b));
        ContentValues contentValues = new ContentValues();
        C0675b.m2668a(sb.toString(), HttpPost.METHOD_NAME, mo3161b(), new C0811by(this, 0, interfaceC0679f));
        contentValues.put("document_id", m2993b);
        contentValues.put("parent_id", str3);
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public String mo3145a(String str, int i, InterfaceC0679f interfaceC0679f) {
        return "https://api-content.dropbox.com/1/thumbnails/dropbox/" + Uri.encode(str) + "?format=jpeg&size=" + (i > 640 ? "xl" : "l");
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public String mo3146a(String str, InterfaceC0679f interfaceC0679f) {
        return "https://api-content.dropbox.com/1/files/dropbox/" + Uri.encode(str);
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
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public boolean mo3149a(String str, C0785az c0785az, int i, InterfaceC0679f interfaceC0679f) {
        StringBuilder sb = new StringBuilder("https://api.dropbox.com/1/");
        sb.append("metadata/dropbox/").append(Uri.encode(str));
        sb.append("?").append("locale=en-US").append("&list=true&include_media_info=true&file_limit=25000");
        C0675b.m2668a(sb.toString(), HttpGet.METHOD_NAME, mo3161b(), new C0854u(this, 1, interfaceC0679f, c0785az));
        return true;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    public String mo3150b(String str, InterfaceC0679f interfaceC0679f) {
        StringBuilder sb = new StringBuilder("https://api.dropbox.com/1/");
        sb.append("media/dropbox/").append(Uri.encode(str));
        sb.append("?").append("locale=en-US");
        String[] strArr = {null};
        C0675b.m2668a(sb.toString(), HttpGet.METHOD_NAME, mo3161b(), new C0855v(this, 1, interfaceC0679f, strArr));
        return strArr[0];
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: c */
    public void mo3151c(String str, InterfaceC0679f interfaceC0679f) {
        StringBuilder sb = new StringBuilder("https://api.dropbox.com/1/");
        sb.append("fileops/delete?root=dropbox&").append("locale=en-US");
        sb.append("&path=").append(Uri.encode(str));
        C0675b.m2668a(sb.toString(), HttpPost.METHOD_NAME, mo3161b(), new C0811by(this, 0, interfaceC0679f));
    }
}
