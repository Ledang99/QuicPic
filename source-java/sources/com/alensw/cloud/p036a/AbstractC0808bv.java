package com.alensw.cloud.p036a;

import android.content.ContentValues;
import android.content.Context;
import com.alensw.cloud.oauth.C0889a;
import com.alensw.cloud.oauth.C0899aj;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.InterfaceC0678e;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p033j.C0725a;
import com.google.gms.b;
import com.p014a.p015a.p016a.C0480b;
import com.p014a.p015a.p016a.EnumC0522l;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.GregorianCalendar;
import java.util.HashMap;
import javax.net.ssl.HttpsURLConnection;
import org.apache.commons.logging.impl.SimpleLog;
import org.apache.http.HttpHeaders;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.protocol.HTTP;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* renamed from: com.alensw.cloud.a.bv */
/* loaded from: classes.dex */
public abstract class AbstractC0808bv {

    /* renamed from: c */
    private static C0480b f3005c;

    /* renamed from: d */
    private static XmlPullParserFactory f3006d;

    /* renamed from: a */
    protected final Context f3007a;

    /* renamed from: b */
    protected C0899aj f3008b;

    public AbstractC0808bv(Context context, C0889a c0889a) {
        this.f3007a = context;
        m3242a(c0889a.f3196g);
    }

    /* renamed from: a */
    public static AbstractC0808bv m3235a(Context context, C0889a c0889a) {
        switch (C0810bx.f3012a[c0889a.f3190a.ordinal()]) {
            case 1:
                return new C0800bn(context, c0889a);
            case 2:
                return new C0842i(context, c0889a);
            case 3:
                return new C0853t(context, c0889a);
            case 4:
                return new C0787ba(context, c0889a);
            case 5:
                return new C0857x(context, c0889a);
            case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                return new C0772am(context, c0889a);
            case SimpleLog.LOG_LEVEL_OFF /* 7 */:
                return new C0760aa(context, c0889a);
            case 8:
                return new C0764ae(context, c0889a);
            case 9:
                return new C0778as(context, c0889a);
            case 10:
                return new C0816cc(context, c0889a);
            case 11:
                return new C0847n(context, c0889a);
            case 12:
                return new C0794bh(context, c0889a);
            case 13:
                return new C0759a(context, c0889a);
            case 14:
                return new C0807bu(context, c0889a);
            case 15:
                return new C0826cm(context, c0889a);
            default:
                return null;
        }
    }

    /* renamed from: a */
    public static void m3236a(Context context, C0899aj c0899aj, String str, String str2) {
        try {
            c0899aj.f3229a = b.b(context, str, "oauth2:" + str2);
        } catch (Exception e) {
            throw new RuntimeException("GMS auth error", e);
        }
    }

    /* renamed from: a */
    public static void m3237a(EnumC0522l enumC0522l, EnumC0522l enumC0522l2) {
        if (enumC0522l != enumC0522l2) {
            throw new IOException("Json object check failed");
        }
    }

    /* renamed from: b */
    public static String m3238b(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        String str2 = (lastIndexOf < 0 ? str : str.substring(0, lastIndexOf)) + "_" + m3241h();
        return lastIndexOf < 0 ? str2 : str2 + str.substring(lastIndexOf);
    }

    /* renamed from: f */
    protected static C0480b m3239f() {
        C0480b c0480b;
        synchronized (AbstractC0808bv.class) {
            if (f3005c == null) {
                f3005c = new C0480b();
            }
            c0480b = f3005c;
        }
        return c0480b;
    }

    /* renamed from: g */
    protected static XmlPullParserFactory m3240g() {
        XmlPullParserFactory xmlPullParserFactory;
        synchronized (AbstractC0808bv.class) {
            if (f3006d == null) {
                try {
                    f3006d = XmlPullParserFactory.newInstance();
                    f3006d.setNamespaceAware(true);
                } catch (XmlPullParserException e) {
                    e.printStackTrace();
                }
            }
            xmlPullParserFactory = f3006d;
        }
        return xmlPullParserFactory;
    }

    /* renamed from: h */
    public static String m3241h() {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        return String.format("%04d%02d%02d_%02d%02d%02d", Integer.valueOf(gregorianCalendar.get(1)), Integer.valueOf(gregorianCalendar.get(2) + 1), Integer.valueOf(gregorianCalendar.get(5)), Integer.valueOf(gregorianCalendar.get(11)), Integer.valueOf(gregorianCalendar.get(12)), Integer.valueOf(gregorianCalendar.get(13)));
    }

    /* renamed from: a */
    public abstract ContentValues mo3141a();

    /* renamed from: a */
    public abstract ContentValues mo3142a(String str, String str2, InterfaceC0679f interfaceC0679f);

    /* renamed from: a */
    public abstract ContentValues mo3143a(String str, String str2, C0682i c0682i, InterfaceC0678e interfaceC0678e);

    /* renamed from: a */
    public ContentValues mo3144a(String str, String str2, String str3, InterfaceC0679f interfaceC0679f) {
        return null;
    }

    /* renamed from: a */
    protected abstract String mo3145a(String str, int i, InterfaceC0679f interfaceC0679f);

    /* renamed from: a */
    protected abstract String mo3146a(String str, InterfaceC0679f interfaceC0679f);

    /* renamed from: a */
    public void mo3147a(int i, String str) {
        throw new ProtocolException(str);
    }

    /* renamed from: a */
    public synchronized void m3242a(C0899aj c0899aj) {
        this.f3008b = c0899aj;
    }

    /* renamed from: a */
    public void m3243a(String str, int i, String str2, String str3, InterfaceC0679f interfaceC0679f) {
        if (str2 == null) {
            str2 = mo3145a(str, Math.min(800, ((i + 127) >> 7) << 7), interfaceC0679f);
        }
        if (str2 == null) {
            throw new RuntimeException("no url");
        }
        mo3179b(str2, str3, interfaceC0679f);
    }

    /* renamed from: a */
    public abstract void mo3148a(String str, ContentValues contentValues, InterfaceC0679f interfaceC0679f);

    /* renamed from: a */
    public void mo3233a(String str, String str2, String str3, C0682i c0682i, InterfaceC0679f interfaceC0679f) {
        if (str2 == null) {
            str2 = mo3146a(str, interfaceC0679f);
        }
        if (str2 == null) {
            throw new RuntimeException("no url");
        }
        HashMap mo3161b = mo3161b();
        if (str3 != null) {
            mo3161b.put(HttpHeaders.RANGE, str3);
        }
        C0675b.m2668a(str2, HttpGet.METHOD_NAME, mo3161b, new C0809bw(this, 0, interfaceC0679f, c0682i));
    }

    /* renamed from: a */
    protected void mo3211a(HttpsURLConnection httpsURLConnection) {
    }

    /* renamed from: a */
    public abstract boolean mo3149a(String str, C0785az c0785az, int i, InterfaceC0679f interfaceC0679f);

    /* renamed from: b */
    public abstract String mo3150b(String str, InterfaceC0679f interfaceC0679f);

    /* renamed from: b */
    protected HashMap mo3161b() {
        HashMap hashMap = new HashMap();
        String mo3171c_ = mo3171c_();
        if (mo3171c_ != null && mo3171c_.length() > 0) {
            hashMap.put("Authorization", "Bearer " + mo3171c_);
        }
        hashMap.put("Connection", HTTP.CONN_KEEP_ALIVE);
        return hashMap;
    }

    /* renamed from: b */
    protected void mo3179b(String str, String str2, InterfaceC0679f interfaceC0679f) {
        C0675b.m2668a(str, HttpGet.METHOD_NAME, mo3161b(), new C0811by(this, str2, interfaceC0679f));
    }

    /* renamed from: b */
    public void m3244b(String str, String str2, String str3, InterfaceC0679f interfaceC0679f) {
        if (str2 == null) {
            str2 = mo3146a(str, interfaceC0679f);
        }
        if (str2 == null) {
            throw new RuntimeException("no url");
        }
        mo3179b(str2, str3, interfaceC0679f);
    }

    /* renamed from: c */
    public int mo3245c() {
        return 268435456;
    }

    /* renamed from: c */
    public abstract void mo3151c(String str, InterfaceC0679f interfaceC0679f);

    /* renamed from: c_ */
    protected synchronized String mo3171c_() {
        return this.f3008b.f3229a;
    }

    /* renamed from: d */
    public String m3246d(String str, InterfaceC0679f interfaceC0679f) {
        try {
            String mo3150b = mo3150b(str, interfaceC0679f);
            if (mo3150b != null) {
                return mo3150b;
            }
        } catch (Exception e) {
        }
        String mo3146a = mo3146a(str, interfaceC0679f);
        String str2 = (String) mo3161b().get("Authorization");
        return str2 == null ? mo3146a : C0725a.m2923d(mo3146a, str2);
    }

    /* renamed from: d_ */
    public boolean mo3234d_() {
        return true;
    }
}
