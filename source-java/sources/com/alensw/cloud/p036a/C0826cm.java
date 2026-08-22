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
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.io.FileInputStream;
import java.net.ProtocolException;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.apache.http.HttpStatus;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.cookie.InterfaceC1465SM;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONStringer;

/* renamed from: com.alensw.cloud.a.cm */
/* loaded from: classes.dex */
public class C0826cm extends AbstractC0808bv {
    public C0826cm(Context context, C0889a c0889a) {
        super(context, c0889a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public char m3250a(AbstractC0518h abstractC0518h, ContentValues contentValues) {
        int i;
        m3237a(abstractC0518h.mo1650c(), EnumC0522l.START_OBJECT);
        String str = "";
        boolean z = false;
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("type".equals(mo1619d)) {
                z = abstractC0518h.m1915m() == 1;
            } else if ("name".equals(mo1619d)) {
                String mo1656f = abstractC0518h.mo1656f();
                contentValues.put("document_id", mo1656f);
                if (mo1656f.endsWith("/")) {
                    mo1656f = mo1656f.substring(0, mo1656f.length() - 1);
                }
                str = mo1656f.substring(mo1656f.lastIndexOf(47) + 1);
                contentValues.put("_display_name", str);
            } else if ("modify_time".equals(mo1619d)) {
                long m1915m = abstractC0518h.m1915m();
                contentValues.put("last_modified", Long.valueOf(m1915m));
                contentValues.put("datetaken", Long.valueOf(m1915m));
            } else if ("count_size".equals(mo1619d)) {
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3253a(AbstractC0518h abstractC0518h, C0835cv c0835cv) {
        m3237a(abstractC0518h.mo1650c(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("bidx".equals(mo1619d)) {
                c0835cv.f3064a = abstractC0518h.m1914l();
            } else if ("bhash".equals(mo1619d)) {
                c0835cv.f3069f = abstractC0518h.mo1656f();
            } else if ("boffset".equals(mo1619d)) {
                c0835cv.f3065b = abstractC0518h.m1915m();
            } else if ("bsize".equals(mo1619d)) {
                c0835cv.f3066c = abstractC0518h.m1914l();
            } else if ("found".equals(mo1619d)) {
                c0835cv.f3067d = abstractC0518h.m1914l();
            } else if ("status".equals(mo1619d)) {
                c0835cv.f3068e = abstractC0518h.m1914l();
            } else if ("tid".equals(mo1619d)) {
                c0835cv.f3070g = abstractC0518h.mo1656f();
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }

    /* renamed from: a */
    private static String[] m3255a(FileChannel fileChannel) {
        try {
            long size = fileChannel.size();
            int i = (int) (size / 524288);
            int i2 = (int) (size - (i * 524288));
            String[] strArr = new String[(i2 > 0 ? 1 : 0) + i + 1];
            MappedByteBuffer map = fileChannel.map(FileChannel.MapMode.READ_ONLY, 0L, size);
            MessageDigest messageDigest = MessageDigest.getInstance(MessageDigestAlgorithms.SHA_1);
            MessageDigest messageDigest2 = MessageDigest.getInstance(MessageDigestAlgorithms.SHA_1);
            byte[] bArr = new byte[524288];
            int i3 = 0;
            while (i3 < i) {
                map.get(bArr);
                messageDigest.update(bArr);
                strArr[i3] = C0742b.m2976a(messageDigest.digest());
                messageDigest2.update(strArr[i3].getBytes());
                messageDigest.reset();
                i3++;
            }
            if (i2 > 0) {
                map.get(bArr, 0, i2);
                messageDigest.update(bArr, 0, i2);
                strArr[i3] = C0742b.m2976a(messageDigest.digest());
                messageDigest2.update(strArr[i3].getBytes());
                messageDigest.reset();
            }
            strArr[strArr.length - 1] = C0742b.m2976a(messageDigest2.digest());
            return strArr;
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static String m3256b(String[] strArr, long j) {
        JSONStringer jSONStringer = new JSONStringer();
        try {
            int length = strArr.length - 1;
            int i = (int) (j - ((length - 1) * 524288));
            JSONStringer array = jSONStringer.object().key("request").object().key("block_info").array();
            int i2 = 0;
            while (i2 < length) {
                array.object().key("bhash").value(strArr[i2]).key("boffset").value(i2 * 524288).key("bidx").value(i2 + 1).key("bsize").value(i2 == length + (-1) ? i : 524288L).endObject();
                i2++;
            }
            array.endArray();
            jSONStringer.key("totalblock").value(length).key("fileHash").value(strArr[length]);
            jSONStringer.endObject().endObject();
        } catch (Throwable th) {
        }
        return jSONStringer.toString();
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
        String str3 = "https://open.yunpan.360.cn/cloudfs/File/createDir?fname=" + Uri.encode(C0742b.m2993b(str, str2));
        ContentValues contentValues = new ContentValues();
        C0675b.m2668a(str3, HttpPost.METHOD_NAME, mo3161b(), new C0829cp(this, 1, interfaceC0679f, contentValues));
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3143a(String str, String str2, C0682i c0682i, InterfaceC0678e interfaceC0678e) {
        String str3 = str + str2;
        String m3258b = c0682i.f2578e instanceof FileInputStream ? m3258b(str3, c0682i, interfaceC0678e) : m3257a(str3, c0682i, interfaceC0678e);
        if (m3258b == null) {
            throw new RuntimeException("upload failed");
        }
        if (m3258b.length() > 0) {
            C0675b.m2668a("https://open.yunpan.360.cn/cloudfs/Sync/addFile?path=" + Uri.encode(str3) + "&tk=" + Uri.encode(m3258b), HttpGet.METHOD_NAME, mo3161b(), new C0811by(this, 0, interfaceC0678e));
        }
        ContentValues contentValues = new ContentValues(8);
        contentValues.put("document_id", str3);
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3144a(String str, String str2, String str3, InterfaceC0679f interfaceC0679f) {
        String str4 = "https://open.yunpan.360.cn/cloudfs/File/move?src_name=" + Uri.encode(str) + "&new_name=" + Uri.encode(str3);
        ContentValues contentValues = new ContentValues();
        C0675b.m2668a(str4, HttpPost.METHOD_NAME, mo3161b(), new C0811by(this, 0, interfaceC0679f));
        contentValues.put("document_id", str3 + str.substring(str.lastIndexOf(47) + 1));
        contentValues.put("parent_id", str3);
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    protected String mo3145a(String str, int i, InterfaceC0679f interfaceC0679f) {
        String num = Integer.toString(i);
        StringBuilder append = new StringBuilder(256).append("https://open.yunpan.360.cn/cloudfs/");
        append.append("File/getNodeByName?name=").append(Uri.encode(str));
        append.append("&thumb=1&size=").append(num).append("_").append(num);
        return new JSONObject(C0675b.m2659a(append.toString(), mo3161b(), interfaceC0679f)).getJSONObject("data").getString("thumb");
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    protected String mo3146a(String str, InterfaceC0679f interfaceC0679f) {
        return new JSONObject(C0675b.m2659a("https://open.yunpan.360.cn/cloudfs/Sync/download?fname=" + Uri.encode(str), mo3161b(), interfaceC0679f)).getString("data");
    }

    /* renamed from: a */
    public String m3257a(String str, C0682i c0682i, InterfaceC0678e interfaceC0678e) {
        HashMap mo3161b = mo3161b();
        new C0830cq(this, interfaceC0678e);
        JSONObject jSONObject = new JSONObject(C0675b.m2659a("https://open.yunpan.360.cn/cloudfs/Sync/webAddr", mo3161b, interfaceC0678e)).getJSONObject("data");
        String[] strArr = new String[1];
        C0675b.m2668a(jSONObject.getString("url") + "&ofmt=json", HttpPost.METHOD_NAME, mo3161b, new C0831cr(this, 0, interfaceC0678e, c0682i, jSONObject.getString("tk"), jSONObject.getString("open_key"), strArr));
        return strArr[0];
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3147a(int i, String str) {
        try {
            int i2 = new JSONObject(str).getInt("errno");
            if (i == 401) {
                if (i2 != 112) {
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
        C0675b.m2668a("https://open.yunpan.360.cn/cloudfs/File/getNodeByName?name=" + Uri.encode(str), HttpGet.METHOD_NAME, mo3161b(), new C0828co(this, 1, interfaceC0679f, contentValues));
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public boolean mo3149a(String str, C0785az c0785az, int i, InterfaceC0679f interfaceC0679f) {
        int[] iArr = {0};
        C0675b.m2668a("https://open.yunpan.360.cn/cloudfs/File/getNodeList?path=" + Uri.encode(str) + "&start=" + i + "&count=" + HttpStatus.SC_INTERNAL_SERVER_ERROR, HttpGet.METHOD_NAME, mo3161b(), new C0827cn(this, 1, interfaceC0679f, iArr, c0785az));
        return iArr[0] < 500;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    public String mo3150b(String str, InterfaceC0679f interfaceC0679f) {
        throw new UnsupportedOperationException();
    }

    /* renamed from: b */
    public String m3258b(String str, C0682i c0682i, InterfaceC0678e interfaceC0678e) {
        HashMap mo3161b = mo3161b();
        C0832cs c0832cs = new C0832cs(this, interfaceC0678e);
        FileChannel channel = ((FileInputStream) c0682i.f2578e).getChannel();
        String[] m3255a = m3255a(channel);
        long size = channel.size();
        long j = c0682i.f2575b / 1000;
        String str2 = "&fattr=0&fhash=" + m3255a[m3255a.length - 1] + "&fsize=" + size + "&fctime=" + j + "&fmtime=" + j;
        JSONObject jSONObject = new JSONObject(C0675b.m2659a("https://open.yunpan.360.cn/cloudfs/Sync/getAddr?fname=" + Uri.encode(str) + str2, mo3161b, c0832cs));
        JSONObject jSONObject2 = jSONObject.getJSONObject("data");
        String optString = jSONObject2.optString("full_path", null);
        if (optString == null) {
            if (jSONObject.getInt("errno") == 0) {
                return "";
            }
            return null;
        }
        String string = jSONObject2.getString("url");
        String string2 = jSONObject2.getString("tk");
        String string3 = jSONObject2.getString("open_key");
        String str3 = string + "?method=Upload.request&ofmt=json&open_key=" + Uri.encode(string3) + "&tk=" + Uri.encode(string2) + "&fname=" + Uri.encode(optString) + str2;
        ArrayList arrayList = new ArrayList(m3255a.length);
        String[] strArr = {null};
        C0675b.m2668a(str3, HttpPost.METHOD_NAME, mo3161b, new C0833ct(this, 1, c0832cs, m3255a, size, arrayList, strArr));
        if (arrayList.size() != m3255a.length - 1) {
            throw new RuntimeException("request failed");
        }
        C0836cw c0836cw = new C0836cw(interfaceC0678e, size);
        String str4 = string + "?method=Upload.block&ofmt=json&encrypt=0&open_key=" + Uri.encode(string3);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C0835cv c0835cv = (C0835cv) it.next();
            if (c0835cv.f3067d != 1 || c0835cv.f3068e != 1) {
                C0675b.m2668a(str4 + "&bidx=" + c0835cv.f3064a + "&boffset=" + c0835cv.f3065b + "&bsize=" + c0835cv.f3066c + "&bhash=" + c0835cv.f3069f + "&tid=" + c0835cv.f3070g, HttpPost.METHOD_NAME, mo3161b, new C0834cu(this, 0, c0836cw, channel, c0835cv));
            }
            c0836cw.m3259a(c0835cv.f3066c);
        }
        return new JSONObject(C0675b.m2659a(string + "?method=Upload.commit&ofmt=json&open_key=" + Uri.encode(string3) + "&tid=" + strArr[0], mo3161b, c0832cs)).getJSONObject("data").getString("tk");
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    protected HashMap mo3161b() {
        HashMap mo3161b = super.mo3161b();
        mo3161b.put(InterfaceC1465SM.COOKIE, "access_token=" + mo3171c_());
        return mo3161b;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: c */
    public void mo3151c(String str, InterfaceC0679f interfaceC0679f) {
        C0675b.m2668a("https://open.yunpan.360.cn/cloudfs/File/recycle?fname=" + Uri.encode(str), HttpPost.METHOD_NAME, mo3161b(), new C0811by(this, 0, interfaceC0679f));
    }
}
