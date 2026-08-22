package com.alensw.cloud.p036a;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.alensw.cloud.oauth.C0889a;
import com.alensw.cloud.oauth.C0923u;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0678e;
import com.alensw.p023b.p028e.InterfaceC0679f;
import java.net.ProtocolException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.TimeZone;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.protocol.HTTP;

/* renamed from: com.alensw.cloud.a.ae */
/* loaded from: classes.dex */
public class C0764ae extends AbstractC0808bv {

    /* renamed from: c */
    private static final DateFormat f2894c = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    static {
        f2894c.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public C0764ae(Context context, C0889a c0889a) {
        super(context, c0889a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public long m3157a(String str) {
        try {
            return f2894c.parse(str).getTime() / 1000;
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
        contentValues.put("flags", Integer.valueOf(mo3154e()));
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3142a(String str, String str2, InterfaceC0679f interfaceC0679f) {
        throw new UnsupportedOperationException();
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3143a(String str, String str2, C0682i c0682i, InterfaceC0678e interfaceC0678e) {
        throw new UnsupportedOperationException();
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public String mo3145a(String str, int i, InterfaceC0679f interfaceC0679f) {
        return null;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public String mo3146a(String str, InterfaceC0679f interfaceC0679f) {
        return null;
    }

    /* renamed from: a */
    protected String m3158a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder("http://www.flickr.com/photos/");
        sb.append(str).append("/").append(str2).append("/play/site/").append(str3).append("/");
        return sb.toString();
    }

    /* renamed from: a */
    protected String mo3152a(String str, String str2, List list) {
        int i = 0;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, "nojsoncallback", "1", "format", "json", "api_key", C0923u.f3262a);
        arrayList.addAll(list);
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        while (true) {
            int i2 = i;
            if (i2 >= arrayList.size()) {
                return buildUpon.build().toString();
            }
            buildUpon.appendQueryParameter((String) arrayList.get(i2), (String) arrayList.get(i2 + 1));
            i = i2 + 2;
        }
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3147a(int i, String str) {
        throw new ProtocolException(str);
    }

    /* renamed from: a */
    protected void m3159a(String str, int i, String str2) {
        if ("ok".equals(str)) {
            return;
        }
        String str3 = str + " " + String.valueOf(i) + ": " + str2;
        if (i >= 96 && i <= 99) {
            throw new C0815cb(str3);
        }
        throw new ProtocolException(str3);
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3148a(String str, ContentValues contentValues, InterfaceC0679f interfaceC0679f) {
    }

    /* renamed from: a */
    protected final boolean m3160a(InterfaceC0767ah interfaceC0767ah, C0785az c0785az, String str, int i, int i2, InterfaceC0679f interfaceC0679f, String... strArr) {
        boolean[] zArr = {true};
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, strArr);
        Collections.addAll(arrayList, "method", interfaceC0767ah.mo3162a(), "per_page", String.valueOf(i2), "page", String.valueOf((((i + i2) - 1) / i2) + 1));
        C0675b.m2668a(mo3152a("https://api.flickr.com/services/rest", HttpGet.METHOD_NAME, arrayList), HttpGet.METHOD_NAME, mo3161b(), new C0766ag(this, 1, interfaceC0679f, interfaceC0767ah, str, c0785az, zArr));
        return zArr[0];
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public boolean mo3149a(String str, C0785az c0785az, int i, InterfaceC0679f interfaceC0679f) {
        if ("/".equals(str)) {
            return m3160a(new C0768ai(this), c0785az, "", i, HttpStatus.SC_INTERNAL_SERVER_ERROR, interfaceC0679f, "extras", "date_taken,original_format,last_update,geo,media,url_m,url_o,url_l,url_c");
        }
        return false;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    public String mo3150b(String str, InterfaceC0679f interfaceC0679f) {
        String[] strArr = {null};
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, "method", "flickr.photos.getInfo", "photo_id", str);
        C0675b.m2668a(mo3152a("https://api.flickr.com/services/rest", HttpGet.METHOD_NAME, arrayList), HttpGet.METHOD_NAME, mo3161b(), new C0765af(this, 1, interfaceC0679f, strArr));
        if (strArr[0] != null) {
            return strArr[0];
        }
        throw new UnsupportedOperationException();
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
        throw new UnsupportedOperationException();
    }

    /* renamed from: d */
    public int mo3153d() {
        return 1;
    }

    /* renamed from: e */
    public int mo3154e() {
        return 805306384;
    }
}
