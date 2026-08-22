package com.alensw.cloud.p036a;

import android.content.ContentValues;
import android.content.Context;
import android.content.res.Resources;
import com.alensw.PicFolder.R;
import com.alensw.cloud.oauth.C0889a;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0678e;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p029f.C0691d;
import com.p014a.p015a.p016a.AbstractC0518h;
import com.p014a.p015a.p016a.EnumC0522l;
import java.net.ProtocolException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.TimeZone;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.cookie.ClientCookie;

/* renamed from: com.alensw.cloud.a.x */
/* loaded from: classes.dex */
public class C0857x extends AbstractC0808bv {

    /* renamed from: c */
    private static final String f3123c = C0691d.m2728b("7;uyCG<r}8a)s2cH$xg\"c_+4'\"73G#r4K@!f);rA");

    /* renamed from: d */
    private static final String[] f3124d = {"popular", "upcoming", "editors", "fresh_today", "fresh_yesterday", "fresh_week"};

    /* renamed from: e */
    private static final int[] f3125e = {R.string.wallpapers_popular, R.string.wallpapers_upcoming, R.string.wallpapers_editors, R.string.wallpapers_today, R.string.wallpapers_yesterday, R.string.wallpapers_week};

    /* renamed from: f */
    private static final DateFormat f3126f = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ");

    static {
        f3126f.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public C0857x(Context context, C0889a c0889a) {
        super(context, c0889a);
    }

    /* renamed from: a */
    private String m3271a(String str, String str2) {
        return String.format("Rating: <big><a href=\"%s\">%s</a></big>", "http://500px.com" + str, str2);
    }

    /* renamed from: a */
    private void m3272a(AbstractC0518h abstractC0518h, ContentValues contentValues) {
        while (abstractC0518h.mo1643a() != EnumC0522l.END_ARRAY) {
            int i = -1;
            String str = "";
            while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
                String mo1619d = abstractC0518h.mo1619d();
                abstractC0518h.mo1643a();
                if ("size".equals(mo1619d)) {
                    i = abstractC0518h.mo1621g();
                } else if ("url".equals(mo1619d)) {
                    str = abstractC0518h.mo1656f();
                } else {
                    abstractC0518h.mo1648b();
                }
            }
            switch (i) {
                case 3:
                    contentValues.put("thumbnail_url", str);
                    break;
                case 2048:
                    contentValues.put("content_url", str);
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3273a(AbstractC0518h abstractC0518h, String str, ContentValues contentValues) {
        m3237a(abstractC0518h.mo1650c(), EnumC0522l.START_OBJECT);
        String str2 = "";
        String str3 = "";
        while (abstractC0518h.mo1643a() != EnumC0522l.END_OBJECT) {
            String mo1619d = abstractC0518h.mo1619d();
            abstractC0518h.mo1643a();
            if ("id".equals(mo1619d)) {
                contentValues.put("document_id", str + '/' + abstractC0518h.mo1656f());
            } else if ("name".equals(mo1619d)) {
                contentValues.put("_display_name", abstractC0518h.mo1656f());
            } else if ("width".equals(mo1619d)) {
                contentValues.put("width", Integer.valueOf(abstractC0518h.m1914l()));
            } else if ("height".equals(mo1619d)) {
                contentValues.put("height", Integer.valueOf(abstractC0518h.m1914l()));
            } else if ("created_at".equals(mo1619d)) {
                contentValues.put("last_modified", Long.valueOf(m3275c(abstractC0518h.mo1656f())));
            } else if ("url".equals(mo1619d)) {
                str2 = abstractC0518h.mo1656f();
            } else if ("rating".equals(mo1619d)) {
                str3 = abstractC0518h.mo1656f();
            } else if ("images".equals(mo1619d) && abstractC0518h.mo1650c() == EnumC0522l.START_ARRAY) {
                m3272a(abstractC0518h, contentValues);
            } else if ("taken_at".equals(mo1619d)) {
                long m3275c = m3275c(abstractC0518h.mo1656f());
                if (m3275c != 0) {
                    contentValues.put("datetaken", Long.valueOf(m3275c));
                }
            } else if ("latitude".equals(mo1619d) && !"null".equals(abstractC0518h.mo1656f())) {
                contentValues.put("latitude", Double.valueOf(abstractC0518h.m1916n()));
            } else if (!"longitude".equals(mo1619d) || "null".equals(abstractC0518h.mo1656f())) {
                abstractC0518h.mo1648b();
            } else {
                contentValues.put("longitude", Double.valueOf(abstractC0518h.m1916n()));
            }
        }
        contentValues.put("mime_type", "image/jpeg");
        contentValues.put("flags", (Integer) 1);
        if (str2 != null && str2.length() > 0 && str3 != null && str3.length() > 0) {
            contentValues.put(ClientCookie.COMMENT_ATTR, m3271a(str2, str3));
        }
        if (contentValues.getAsLong("datetaken") == null) {
            contentValues.put("datetaken", contentValues.getAsLong("last_modified"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static long m3275c(String str) {
        try {
            StringBuilder sb = new StringBuilder(str);
            sb.deleteCharAt(sb.lastIndexOf(":"));
            return f3126f.parse(sb.toString()).getTime() / 1000;
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
        contentValues.put("flags", (Integer) (-1342177263));
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

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3147a(int i, String str) {
        throw new ProtocolException(str);
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public void mo3148a(String str, ContentValues contentValues, InterfaceC0679f interfaceC0679f) {
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: a */
    public boolean mo3149a(String str, C0785az c0785az, int i, InterfaceC0679f interfaceC0679f) {
        if (!"/".equals(str)) {
            int round = Math.round(i / 100.0f) + 1;
            String substring = str.substring(str.lastIndexOf(47) + 1);
            StringBuffer stringBuffer = new StringBuffer("https://api.500px.com/v1/photos");
            stringBuffer.append("?consumer_key=").append(f3123c);
            stringBuffer.append("&feature=").append(substring);
            stringBuffer.append("&rpp=").append(Integer.toString((round * 100) - i));
            stringBuffer.append("&image_size[]=3&image_size[]=2048");
            stringBuffer.append("&page=").append(Integer.toString(round));
            C0675b.m2668a(stringBuffer.toString(), HttpGet.METHOD_NAME, mo3161b(), new C0859z(this, 1, interfaceC0679f, str, c0785az));
            return c0785az.size() + i >= 500;
        }
        Resources resources = this.f3007a.getResources();
        for (int i2 = 0; i2 < f3124d.length; i2++) {
            String str2 = f3124d[i2];
            String string = resources.getString(f3125e[i2]);
            ContentValues contentValues = new ContentValues();
            contentValues.put("document_id", "/" + str2);
            contentValues.put("mime_type", "vnd.android.document/directory");
            contentValues.put("flags", (Integer) 1879048209);
            contentValues.put("_display_name", string);
            StringBuffer stringBuffer2 = new StringBuffer("https://api.500px.com/v1/photos");
            stringBuffer2.append("?consumer_key=").append(f3123c);
            stringBuffer2.append("&feature=").append(str2);
            stringBuffer2.append("&rpp=1&image_size=3");
            C0675b.m2668a(stringBuffer2.toString(), HttpGet.METHOD_NAME, mo3161b(), new C0858y(this, 1, interfaceC0679f, contentValues, c0785az));
        }
        return true;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: b */
    public String mo3150b(String str, InterfaceC0679f interfaceC0679f) {
        return null;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: c */
    public int mo3245c() {
        return 67108864;
    }

    @Override // com.alensw.cloud.p036a.AbstractC0808bv
    /* renamed from: c */
    public void mo3151c(String str, InterfaceC0679f interfaceC0679f) {
        throw new UnsupportedOperationException();
    }
}
