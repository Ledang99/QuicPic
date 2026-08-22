package com.alensw.cloud.p036a;

import android.content.ContentValues;
import android.content.Context;
import com.alensw.PicFolder.R;
import com.alensw.cloud.oauth.AbstractC0891ab;
import com.alensw.cloud.oauth.C0889a;
import com.alensw.cloud.oauth.C0923u;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0678e;
import com.alensw.p023b.p028e.InterfaceC0679f;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.TreeMap;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.HttpPost;

/* renamed from: com.alensw.cloud.a.aa */
/* loaded from: classes.dex */
public class C0760aa extends C0764ae {

    /* renamed from: c */
    private AbstractC0891ab f2883c;

    /* renamed from: d */
    private final InterfaceC0767ah f2884d;

    /* renamed from: e */
    private final InterfaceC0767ah f2885e;

    /* renamed from: f */
    private final InterfaceC0767ah f2886f;

    /* renamed from: g */
    private final String f2887g;

    public C0760aa(Context context, C0889a c0889a) {
        super(context, c0889a);
        this.f2884d = new C0769aj(this);
        this.f2885e = new C0770ak(this);
        this.f2886f = new C0771al(this);
        this.f2887g = c0889a.f3191b;
        this.f2883c = new C0923u();
        this.f2883c.m3366a(c0889a.f3196g);
    }

    @Override // com.alensw.cloud.p036a.C0764ae, com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3141a() {
        ContentValues contentValues = new ContentValues(3);
        contentValues.put("document_id", "/");
        contentValues.put("mime_type", "vnd.android.document/directory");
        contentValues.put("flags", Integer.valueOf(mo3154e() | 2 | Integer.MIN_VALUE));
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.C0764ae, com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3143a(String str, String str2, C0682i c0682i, InterfaceC0678e interfaceC0678e) {
        String[] strArr = {null};
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, "title", str2, "content_type", "photo", "hidden", "2", "is_public", "0", "is_friend", "0", "is_family", "0");
        TreeMap treeMap = new TreeMap();
        this.f2883c.m3363a("https://api.flickr.com/services/upload/", HttpPost.METHOD_NAME, arrayList, treeMap);
        C0675b.m2668a("https://api.flickr.com/services/upload/", HttpPost.METHOD_NAME, mo3161b(), new C0761ab(this, 1, interfaceC0678e, treeMap, c0682i, strArr));
        if (strArr[0] == null) {
            throw new ProtocolException("Create file failed: photoid is empty");
        }
        if (!"/album/all/".equals(str) && str.startsWith("/album/") && str.endsWith("/")) {
            String substring = str.substring("/album/".length(), str.lastIndexOf("/"));
            arrayList.clear();
            Collections.addAll(arrayList, "method", "flickr.photosets.addPhoto", "photoset_id", substring, "photo_id", strArr[0]);
            C0675b.m2668a(mo3152a("https://api.flickr.com/services/rest", HttpPost.METHOD_NAME, arrayList), HttpPost.METHOD_NAME, mo3161b(), new C0762ac(this, 1, interfaceC0678e));
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("document_id", str + strArr[0]);
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.C0764ae
    /* renamed from: a */
    protected String mo3152a(String str, String str2, List list) {
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, "nojsoncallback", "1", "format", "json");
        arrayList.addAll(list);
        return this.f2883c.m3362a(str, str2, arrayList);
    }

    @Override // com.alensw.cloud.p036a.C0764ae, com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public boolean mo3149a(String str, C0785az c0785az, int i, InterfaceC0679f interfaceC0679f) {
        if (!"/".equals(str)) {
            if ("/album/all/".equals(str)) {
                return m3160a(this.f2884d, c0785az, "/album/all/", i, HttpStatus.SC_INTERNAL_SERVER_ERROR, interfaceC0679f, "user_id", "me", "extras", "date_taken,original_format,last_update,geo,media,url_m,url_o,url_l,url_c");
            }
            if (str.startsWith("/album/") && str.endsWith("/")) {
                return m3160a(this.f2886f, c0785az, str, i, HttpStatus.SC_INTERNAL_SERVER_ERROR, interfaceC0679f, "user_id", this.f2887g, "extras", "date_taken,original_format,last_update,geo,media,url_m,url_o,url_l,url_c", "photoset_id", str.substring("/album/".length(), str.lastIndexOf("/")));
            }
            return true;
        }
        boolean a2 = m3160a(this.f2885e, c0785az, "/album/", i, HttpStatus.SC_INTERNAL_SERVER_ERROR, interfaceC0679f, "primary_photo_extras", "date_taken,original_format,last_update,geo,media,url_m,url_o,url_l,url_c");
        if (c0785az.size() == 0) {
            return m3160a(this.f2884d, c0785az, "/", i, HttpStatus.SC_INTERNAL_SERVER_ERROR, interfaceC0679f, "user_id", "me", "extras", "date_taken,original_format,last_update,geo,media,url_m,url_o,url_l,url_c");
        }
        if (i == 0) {
            C0785az c0785az2 = new C0785az(1);
            m3160a(this.f2884d, c0785az2, "/album/", 0, 1, interfaceC0679f, "user_id", "me", "extras", "date_taken,original_format,last_update,geo,media,url_m,url_o,url_l,url_c");
            if (c0785az2.size() > 0) {
                ContentValues contentValues = (ContentValues) c0785az2.get(0);
                contentValues.put("document_id", "/album/all/");
                contentValues.put("_display_name", "[" + this.f3007a.getResources().getString(R.string.cloud_flickr_personal_all) + "]");
                contentValues.put("mime_type", "vnd.android.document/directory");
                contentValues.put("flags", Integer.valueOf(mo3154e() | 2));
                c0785az.add(contentValues);
            }
        }
        return a2;
    }

    @Override // com.alensw.cloud.p036a.C0764ae, com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: c */
    public void mo3151c(String str, InterfaceC0679f interfaceC0679f) {
        if (str.endsWith("/")) {
            throw new ProtocolException("wrong id: " + str);
        }
        ArrayList arrayList = new ArrayList();
        String substring = str.substring(str.lastIndexOf("/") + 1);
        if (str.contains("/album/all/")) {
            Collections.addAll(arrayList, "method", "flickr.photos.delete", "photo_id", substring);
        } else {
            Collections.addAll(arrayList, "method", "flickr.photosets.removePhoto", "photoset_id", str.substring("/album/".length(), str.lastIndexOf("/")), "photo_id", substring);
        }
        C0675b.m2668a(mo3152a("https://api.flickr.com/services/rest", HttpPost.METHOD_NAME, arrayList), HttpPost.METHOD_NAME, mo3161b(), new C0763ad(this, 1, interfaceC0679f));
    }

    @Override // com.alensw.cloud.p036a.C0764ae
    /* renamed from: d */
    public int mo3153d() {
        return 5;
    }

    @Override // com.alensw.cloud.p036a.C0764ae
    /* renamed from: e */
    public int mo3154e() {
        return 536870961;
    }
}
