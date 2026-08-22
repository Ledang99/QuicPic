package com.alensw.cloud.p036a;

import android.content.ContentValues;
import android.content.Context;
import android.util.Log;
import com.alensw.PicFolder.R;
import com.alensw.cloud.oauth.C0889a;
import com.alensw.cloud.oauth.C0901al;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0678e;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p035l.C0742b;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.TimeZone;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;

/* renamed from: com.alensw.cloud.a.bn */
/* loaded from: classes.dex */
public class C0800bn extends AbstractC0808bv {

    /* renamed from: c */
    private static final String f2973c = "&fields=" + URLEncoder.encode("openSearch:totalResults,entry(gphoto:id,title,georss:where,media:group(media:thumbnail,media:content),content,gphoto:width,gphoto:height,gphoto:timestamp)");

    /* renamed from: d */
    private static final String f2974d = "&fields=" + URLEncoder.encode("openSearch:totalResults,entry[gphoto:albumType!='Buzz'](gphoto:id,title,georss:where,media:group(media:thumbnail,media:content),content,gphoto:width,gphoto:height,gphoto:timestamp)");

    /* renamed from: e */
    private static final String f2975e = "&fields=" + URLEncoder.encode("openSearch:totalResults,entry[gphoto:albumType='Buzz'](gphoto:id,title,georss:where,media:group(media:thumbnail,media:content),content,gphoto:width,gphoto:height,gphoto:timestamp)");

    /* renamed from: f */
    private static final String f2976f = "&fields=" + URLEncoder.encode("openSearch:totalResults,entry[gphoto:albumType='Buzz'](media:group(media:thumbnail),gphoto:timestamp)");

    /* renamed from: g */
    private static final DateFormat f2977g = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");

    /* renamed from: i */
    private static final String[] f2978i;

    /* renamed from: h */
    private final String f2979h;

    static {
        f2977g.setTimeZone(TimeZone.getTimeZone("UTC"));
        f2978i = new String[]{"&", "&amp;", "<", "&lt;", ">", "&gt;", "\"", "&quot;", "'", "&apos;"};
    }

    public C0800bn(Context context, C0889a c0889a) {
        super(context, c0889a);
        this.f2979h = c0889a.f3191b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public String m3213a(AbstractC0518h abstractC0518h) {
        String str = "";
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if (!"$t".equals(mo1619d)) {
                throw new IOException("$t expected!");
            }
            str = abstractC0518h.mo1656f();
        }
        return str;
    }

    /* renamed from: a */
    private String m3216a(String str) {
        for (int i = 0; i < f2978i.length; i += 2) {
            str = str.replace(f2978i[i], f2978i[i + 1]);
        }
        return str;
    }

    /* renamed from: a */
    private void m3217a(AbstractC0518h abstractC0518h, ContentValues contentValues) {
        m3237a(abstractC0518h.mo1650c(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("gml$Point".equals(mo1619d)) {
                while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
                    String mo1619d2 = abstractC0518h.mo1619d();
                    abstractC0518h.mo1643a();
                    if ("gml$pos".equals(mo1619d2)) {
                        String m3213a = m3213a(abstractC0518h);
                        int indexOf = m3213a.indexOf(32);
                        if (indexOf != -1) {
                            try {
                                double doubleValue = Double.valueOf(m3213a.substring(0, indexOf)).doubleValue();
                                double doubleValue2 = Double.valueOf(m3213a.substring(indexOf + 1)).doubleValue();
                                contentValues.put("latitude", Double.valueOf(doubleValue));
                                contentValues.put("longitude", Double.valueOf(doubleValue2));
                            } catch (Throwable th) {
                            }
                        }
                    } else {
                        abstractC0518h.mo1648b();
                    }
                }
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3219a(String str, AbstractC0518h abstractC0518h, ContentValues contentValues) {
        int i;
        boolean contains = str.contains("/albumid/");
        String str2 = "";
        String str3 = "";
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        m3237a(abstractC0518h.mo1650c(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("gphoto$id".equals(mo1619d)) {
                contentValues.put("document_id", ("/".equals(str) ? "" : str) + (contains ? "/photoid/" : "/albumid/") + m3213a(abstractC0518h));
            } else if ("title".equals(mo1619d)) {
                contentValues.put("_display_name", m3213a(abstractC0518h));
            } else if ("georss$where".equals(mo1619d)) {
                m3217a(abstractC0518h, contentValues);
            } else if ("media$group".equals(mo1619d)) {
                m3221b(abstractC0518h, contentValues);
            } else if ("gphoto$width".equals(mo1619d)) {
                contentValues.put("width", Integer.valueOf(C0742b.m2960a(m3213a(abstractC0518h), 0)));
            } else if ("gphoto$height".equals(mo1619d)) {
                contentValues.put("height", Integer.valueOf(C0742b.m2960a(m3213a(abstractC0518h), 0)));
            } else if ("gphoto$timestamp".equals(mo1619d)) {
                j = C0742b.m2964a(m3213a(abstractC0518h), 0L) / 1000;
            } else if ("updated".equals(mo1619d)) {
                j2 = m3226e(m3213a(abstractC0518h));
            } else if ("app$edited".equals(mo1619d)) {
                j3 = m3226e(m3213a(abstractC0518h));
            } else if ("published".equals(mo1619d)) {
                j4 = m3226e(m3213a(abstractC0518h));
            } else if ("content".equals(mo1619d)) {
                while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
                    String mo1619d2 = abstractC0518h.mo1619d();
                    abstractC0518h.mo1643a();
                    if ("src".equals(mo1619d2)) {
                        str2 = m3227f(abstractC0518h.mo1656f());
                    } else if ("type".equals(mo1619d2)) {
                        str3 = abstractC0518h.mo1656f();
                    } else {
                        abstractC0518h.mo1648b();
                    }
                }
            } else {
                abstractC0518h.mo1648b();
            }
            long j5 = j4;
            str3 = str3;
            str2 = str2;
            j = j;
            j2 = j2;
            j3 = j3;
            j4 = j5;
        }
        String asString = contentValues.getAsString("content_url");
        if ((asString == null || asString.length() == 0) && !"".equals(str2)) {
            contentValues.put("content_url", str2);
            contentValues.put("mime_type", str3);
        }
        if (contains) {
            i = 7;
        } else {
            i = (str.startsWith("/post") ? 0 : 6) | 49;
        }
        contentValues.put("flags", Integer.valueOf(i));
        if (!contains) {
            contentValues.put("mime_type", "vnd.android.document/directory");
        }
        long j6 = j2 < j ? j : j2;
        if (j6 < j3) {
            j6 = j3;
        }
        if (j6 >= j4) {
            j4 = j6;
        }
        if (j != 0) {
            contentValues.put("last_modified", Long.valueOf(j));
            contentValues.put("datetaken", Long.valueOf(j));
        } else {
            contentValues.put("last_modified", Long.valueOf(j4));
            contentValues.put("datetaken", Long.valueOf(j4));
        }
    }

    /* renamed from: a */
    private void m3220a(String str, String str2, ContentValues contentValues, InterfaceC0679f interfaceC0679f) {
        C0675b.m2668a("https://picasaweb.google.com/data/entry/api/user/default" + m3222c(str) + "?alt=json" + str2, HttpGet.METHOD_NAME, mo3161b(), new C0806bt(this, 1, interfaceC0679f, str, contentValues));
    }

    /* renamed from: b */
    private void m3221b(AbstractC0518h abstractC0518h, ContentValues contentValues) {
        m3237a(abstractC0518h.mo1650c(), EnumC0522l.START_OBJECT);
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("media$thumbnail".equals(mo1619d)) {
                m3225d(abstractC0518h, contentValues);
            } else if ("media$content".equals(mo1619d)) {
                m3223c(abstractC0518h, contentValues);
            } else {
                abstractC0518h.mo1648b();
            }
        }
    }

    /* renamed from: c */
    private String m3222c(String str) {
        return str.startsWith("/post") ? str.substring("/post".length()) : "/".equals(str) ? "" : str;
    }

    /* renamed from: c */
    private void m3223c(AbstractC0518h abstractC0518h, ContentValues contentValues) {
        String str;
        String str2;
        int i;
        int i2 = -1;
        int i3 = -1;
        String str3 = "";
        String str4 = "";
        String str5 = "";
        String str6 = "";
        while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
            int i4 = 0;
            int i5 = 0;
            String str7 = "";
            String str8 = "";
            while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
                String mo1619d = abstractC0518h.mo1619d();
                abstractC0518h.mo1643a();
                if ("width".equals(mo1619d)) {
                    i4 = abstractC0518h.mo1621g();
                } else if ("height".equals(mo1619d)) {
                    i5 = abstractC0518h.mo1621g();
                } else if ("url".equals(mo1619d)) {
                    str8 = m3227f(abstractC0518h.mo1656f());
                } else if ("type".equals(mo1619d)) {
                    str7 = abstractC0518h.mo1656f();
                } else {
                    abstractC0518h.mo1648b();
                }
            }
            int max = Math.max(i4, i5);
            if ("video/mpeg4".equals(str7) && max > i3) {
                str = str5;
                i = max;
                str2 = str8;
                max = i2;
                str8 = str3;
            } else if (!str7.startsWith("image/") || max <= i2) {
                str7 = str6;
                str8 = str3;
                max = i2;
                str = str5;
                str2 = str4;
                i = i3;
            } else {
                str2 = str4;
                i = i3;
                String str9 = str6;
                str = str7;
                str7 = str9;
            }
            str3 = str8;
            i3 = i;
            i2 = max;
            str4 = str2;
            str5 = str;
            str6 = str7;
        }
        if (i3 >= 0) {
            contentValues.put("content_url", str4);
            contentValues.put("mime_type", str6);
        } else if (i2 >= 0) {
            contentValues.put("content_url", str3);
            contentValues.put("mime_type", str5);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public String m3224d(String str) {
        if (str == null) {
            return "/";
        }
        int lastIndexOf = str.lastIndexOf("/photoid/");
        if (lastIndexOf != -1) {
            return str.substring(0, lastIndexOf);
        }
        int indexOf = str.indexOf("/albumid/");
        return indexOf > 0 ? str.substring(0, indexOf) : "/";
    }

    /* renamed from: d */
    private void m3225d(AbstractC0518h abstractC0518h, ContentValues contentValues) {
        int i;
        int i2 = -1;
        String str = "";
        while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
            String str2 = "";
            int i3 = 0;
            int i4 = 0;
            while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
                String mo1619d = abstractC0518h.mo1619d();
                abstractC0518h.mo1643a();
                if ("width".equals(mo1619d)) {
                    i4 = abstractC0518h.mo1621g();
                } else if ("height".equals(mo1619d)) {
                    i3 = abstractC0518h.mo1621g();
                } else if ("url".equals(mo1619d)) {
                    str2 = m3227f(abstractC0518h.mo1656f());
                } else {
                    abstractC0518h.mo1648b();
                }
            }
            int max = Math.max(i4, i3);
            if (max > i2) {
                i = max;
            } else {
                str2 = str;
                i = i2;
            }
            i2 = i;
            str = str2;
        }
        if (i2 >= 0) {
            contentValues.put("thumbnail_url", str);
        }
    }

    /* renamed from: e */
    private long m3226e(String str) {
        try {
            return f2977g.parse(str).getTime() / 1000;
        } catch (ParseException e) {
            Log.e("PicasaDrive", "parse date: ", e);
            return 0L;
        }
    }

    /* renamed from: f */
    private String m3227f(String str) {
        return URLDecoder.decode(str, "UTF-8");
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3141a() {
        ContentValues contentValues = new ContentValues(3);
        contentValues.put("document_id", "/");
        contentValues.put("mime_type", "vnd.android.document/directory");
        contentValues.put("flags", (Integer) (-2147483591));
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3142a(String str, String str2, InterfaceC0679f interfaceC0679f) {
        ContentValues contentValues = new ContentValues();
        StringBuilder sb = new StringBuilder();
        sb.append("<entry xmlns='http://www.w3.org/2005/Atom'\n");
        sb.append("    xmlns:media='http://search.yahoo.com/mrss/'\n");
        sb.append("    xmlns:gphoto='http://schemas.google.com/photos/2007'>\n");
        sb.append("  <title type='text'>").append(m3216a(str2)).append("</title>\n");
        sb.append("  <gphoto:access>private</gphoto:access>\n");
        sb.append("  <category scheme='http://schemas.google.com/g/2005#kind'\n");
        sb.append("    term='http://schemas.google.com/photos/2007#album'></category>\n");
        sb.append("</entry>");
        C0675b.m2668a("https://picasaweb.google.com/data/feed/api/user/default?alt=json", HttpPost.METHOD_NAME, mo3161b(), new C0803bq(this, 1, interfaceC0679f, str, contentValues, sb));
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public ContentValues mo3143a(String str, String str2, C0682i c0682i, InterfaceC0678e interfaceC0678e) {
        ContentValues contentValues = new ContentValues();
        StringBuilder sb = new StringBuilder();
        sb.append("<entry xmlns='http://www.w3.org/2005/Atom'>\n");
        sb.append("  <title type='text'>").append(m3216a(str2)).append("</title>\n");
        sb.append("  <category scheme='http://schemas.google.com/g/2005#kind'\n");
        sb.append("    term='http://schemas.google.com/photos/2007#photo'/>\n");
        sb.append("</entry>");
        String str3 = c0682i.f2576c;
        if (!str3.startsWith("image/") && !str3.startsWith("video/")) {
            throw new ProtocolException("wrong mimetype: " + str3);
        }
        C0675b.m2668a("https://picasaweb.google.com/data/feed/api/user/default" + str + "?alt=json", HttpPost.METHOD_NAME, mo3161b(), new C0804br(this, 1, interfaceC0678e, str, contentValues, sb, c0682i, str3));
        return contentValues;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public String mo3145a(String str, int i, InterfaceC0679f interfaceC0679f) {
        if (i >= 1600) {
            return mo3146a(str, interfaceC0679f);
        }
        ContentValues contentValues = new ContentValues();
        m3220a(str, "&thumbsize=" + i + "u", contentValues, interfaceC0679f);
        String asString = contentValues.getAsString("thumbnail_url");
        return (asString == null || asString.length() == 0) ? contentValues.getAsString("content_url") : asString;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public String mo3146a(String str, InterfaceC0679f interfaceC0679f) {
        ContentValues contentValues = new ContentValues();
        m3220a(str, "&imgmax=2048u", contentValues, interfaceC0679f);
        return contentValues.getAsString("content_url");
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3147a(int i, String str) {
        if (i != 403) {
            throw new ProtocolException(str);
        }
        if (!str.startsWith("Token invalid") || !str.contains("Token not found")) {
            throw new C0815cb(str);
        }
        throw new C0814ca(str);
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3148a(String str, ContentValues contentValues, InterfaceC0679f interfaceC0679f) {
        if (!"/post".equals(str)) {
            m3220a(str, "", contentValues, interfaceC0679f);
            return;
        }
        String str2 = "https://picasaweb.google.com/data/feed/api/user/default?alt=json&thumbsize=512u&imgmax=2048u" + f2976f;
        int i = 0;
        boolean[] zArr = {false};
        do {
            int i2 = i;
            int[] iArr = {0};
            C0675b.m2668a(str2 + "&start-index=" + String.valueOf(i2 + 1) + "&max-results=" + String.valueOf(1000), HttpGet.METHOD_NAME, mo3161b(), new C0802bp(this, 1, interfaceC0679f, contentValues, zArr, iArr));
            i = i2 + 1000;
            if (!(iArr[0] != 0 && i2 + 1000 < iArr[0])) {
                break;
            }
        } while (!zArr[0]);
        if (zArr[0]) {
            contentValues.put("document_id", "/post");
            contentValues.put("mime_type", "vnd.android.document/directory");
            contentValues.put("flags", (Integer) 49);
            contentValues.put("_display_name", "[" + this.f3007a.getResources().getString(R.string.cloud_picasa_post) + "]");
        }
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public boolean mo3149a(String str, C0785az c0785az, int i, InterfaceC0679f interfaceC0679f) {
        int[] iArr = {0};
        C0675b.m2668a("https://picasaweb.google.com/data/feed/api/user/default" + m3222c(str) + "?alt=json&thumbsize=512u&imgmax=2048u" + ("/post".equals(str) ? f2975e : "/".equals(str) ? f2974d : f2973c) + "&start-index=" + String.valueOf(i + 1) + "&max-results=" + String.valueOf(1000), HttpGet.METHOD_NAME, mo3161b(), new C0801bo(this, 1, interfaceC0679f, str, c0785az, iArr));
        if (i == 0 && "/".equals(str)) {
            ContentValues contentValues = new ContentValues();
            mo3148a("/post", contentValues, (InterfaceC0679f) null);
            String asString = contentValues.getAsString("document_id");
            if (asString != null && asString.length() > 0) {
                c0785az.add(contentValues);
            }
        }
        return c0785az.size() == 0 || iArr[0] < 1000;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    public String mo3150b(String str, InterfaceC0679f interfaceC0679f) {
        return mo3146a(str, interfaceC0679f);
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    protected HashMap mo3161b() {
        HashMap mo3161b = super.mo3161b();
        mo3161b.put("GData-Version", "2");
        return mo3161b;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: c */
    public void mo3151c(String str, InterfaceC0679f interfaceC0679f) {
        if ("/".equals(str)) {
            throw new ProtocolException("wrong id: " + str);
        }
        C0675b.m2668a("https://picasaweb.google.com/data/entry/api/user/default" + str, HttpDelete.METHOD_NAME, mo3161b(), new C0805bs(this, 0, interfaceC0679f));
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: c_ */
    protected synchronized String mo3171c_() {
        if (this.f3008b.f3230b == null) {
            m3236a(this.f3007a, this.f3008b, this.f2979h, C0901al.f3233a);
        }
        return this.f3008b.f3229a;
    }
}
