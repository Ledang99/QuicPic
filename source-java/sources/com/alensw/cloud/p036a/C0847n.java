package com.alensw.cloud.p036a;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import com.alensw.cloud.oauth.C0889a;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0681h;
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
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;

/* renamed from: com.alensw.cloud.a.n */
/* loaded from: classes.dex */
public class C0847n extends AbstractC0808bv {

    /* renamed from: c */
    private static final DateFormat f3098c = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ");

    public C0847n(Context context, C0889a c0889a) {
        super(context, c0889a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public char m3262a(AbstractC0518h abstractC0518h, ContentValues contentValues) {
        m3237a(abstractC0518h.mo1650c(), EnumC0522l.START_OBJECT);
        String str = "";
        boolean z = false;
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("type".equals(mo1619d)) {
                z = "folder".equals(abstractC0518h.mo1656f());
            } else if ("id".equals(mo1619d)) {
                contentValues.put("document_id", Long.valueOf(abstractC0518h.m1915m()));
            } else if ("name".equals(mo1619d)) {
                str = abstractC0518h.mo1656f();
                contentValues.put("_display_name", str);
            } else if ("modified_at".equals(mo1619d)) {
                long m3264a = m3264a(abstractC0518h.mo1656f());
                contentValues.put("last_modified", Long.valueOf(m3264a));
                contentValues.put("datetaken", Long.valueOf(m3264a));
            } else if ("size".equals(mo1619d)) {
                contentValues.put("_size", Long.valueOf(abstractC0518h.m1915m()));
            } else {
                abstractC0518h.mo1648b();
            }
        }
        char m2721a = z ? 'D' : C0690c.m2721a(str);
        if (z) {
            contentValues.remove("_size");
            contentValues.put("mime_type", "vnd.android.document/directory");
            contentValues.put("flags", (Integer) 58);
        } else {
            contentValues.put("mime_type", C0690c.m2724b(str));
            contentValues.put("flags", Integer.valueOf((m2721a == 'I' || m2721a == 'V' ? 1 : 0) | 6));
        }
        return m2721a;
    }

    /* renamed from: a */
    private static long m3264a(String str) {
        try {
            StringBuilder sb = new StringBuilder(str);
            sb.deleteCharAt(sb.lastIndexOf(":"));
            return f3098c.parse(sb.toString()).getTime() / 1000;
        } catch (Exception e) {
            return 0L;
        }
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3141a() {
        ContentValues contentValues = new ContentValues(3);
        contentValues.put("document_id", "0");
        contentValues.put("mime_type", "vnd.android.document/directory");
        contentValues.put("flags", (Integer) 536870970);
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3142a(String str, String str2, InterfaceC0679f interfaceC0679f) {
        ContentValues contentValues = new ContentValues(10);
        StringBuilder sb = new StringBuilder();
        sb.append("{").append("\"name\":\"").append(str2).append("\"");
        if (str.length() != 0) {
            sb.append(", \"parent\": {\"id\":\"").append(str).append("\"}");
        }
        sb.append("}");
        C0675b.m2668a("https://api.box.com/2.0/folders", HttpPost.METHOD_NAME, mo3161b(), new C0850q(this, 1, interfaceC0679f, contentValues, sb));
        return contentValues;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x00a3, code lost:
    
        return r6;
     */
    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ContentValues mo3143a(String str, String str2, C0682i c0682i, InterfaceC0678e interfaceC0678e) {
        ContentValues contentValues = new ContentValues(10);
        InputStream inputStream = c0682i.f2578e;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 2) {
                throw new ProtocolException("Create file failed");
            }
            String[] strArr = {null, null};
            StringBuilder sb = new StringBuilder();
            sb.append("{").append("\"name\":\"").append(str2).append("\"");
            if (str.length() != 0) {
                sb.append(", \"parent\": {\"id\":\"").append(str).append("\"}");
            }
            sb.append("}");
            C0675b.m2668a("https://upload.box.com/api/2.0/files/content", HttpPost.METHOD_NAME, mo3161b(), new C0851r(this, 1, interfaceC0678e, contentValues, sb, new C0681h(inputStream, "Content-Disposition", "form-data; name=\"file\"; filename=\"" + str2 + "\"", "Content-Type", c0682i.f2576c), strArr));
            if (strArr[0] == null) {
                break;
            }
            if (!(inputStream instanceof FileInputStream)) {
                throw new ProtocolException("Can't rewind input stream");
            }
            FileInputStream fileInputStream = (FileInputStream) inputStream;
            if (C0742b.m2972a(fileInputStream, MessageDigestAlgorithms.SHA_1).equals(strArr[1])) {
                contentValues.put("document_id", strArr[0]);
                break;
            }
            fileInputStream.getChannel().position(0L);
            str2 = m3238b(str2);
            i = i2 + 1;
        }
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3144a(String str, String str2, String str3, InterfaceC0679f interfaceC0679f) {
        StringBuilder sb = new StringBuilder();
        sb.append("{\"parent\": {\"id\":\"").append(str3).append("\"}}");
        ContentValues contentValues = new ContentValues();
        C0675b.m2668a("https://api.box.com/2.0/files/" + str, HttpPut.METHOD_NAME, mo3161b(), new C0852s(this, 1, interfaceC0679f, sb, contentValues));
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    protected String mo3145a(String str, int i, InterfaceC0679f interfaceC0679f) {
        return "https://api.box.com/2.0/files/" + str + "/thumbnail.jpg?min_height=" + i + "&min_width=" + i;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    protected String mo3146a(String str, InterfaceC0679f interfaceC0679f) {
        return "https://api.box.com/2.0/files/" + str + "/content";
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
        C0675b.m2668a("https://api.box.com/2.0/folders/" + str, HttpGet.METHOD_NAME, mo3161b(), new C0849p(this, 1, interfaceC0679f, contentValues));
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public boolean mo3149a(String str, C0785az c0785az, int i, InterfaceC0679f interfaceC0679f) {
        StringBuilder sb = new StringBuilder("https://api.box.com/2.0/");
        sb.append("folders/").append(Uri.encode(str));
        sb.append("/items?fields=name,modified_at&limit=500&offset=" + i);
        int[] iArr = {0};
        C0675b.m2668a(sb.toString(), HttpGet.METHOD_NAME, mo3161b(), new C0848o(this, 1, interfaceC0679f, iArr, c0785az));
        return iArr[0] < 500;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    public String mo3150b(String str, InterfaceC0679f interfaceC0679f) {
        throw new UnsupportedOperationException();
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: c */
    public void mo3151c(String str, InterfaceC0679f interfaceC0679f) {
        C0675b.m2668a("https://api.box.com/2.0/files/" + str, HttpDelete.METHOD_NAME, mo3161b(), new C0811by(this, 0, interfaceC0679f));
    }
}
