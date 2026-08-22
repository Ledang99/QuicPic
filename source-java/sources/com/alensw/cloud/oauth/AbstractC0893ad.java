package com.alensw.cloud.oauth;

import android.net.Uri;
import android.util.Log;
import com.alensw.cloud.EnumC0963z;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import java.io.FileNotFoundException;
import java.net.HttpURLConnection;
import org.apache.http.client.methods.HttpPost;

/* renamed from: com.alensw.cloud.oauth.ad */
/* loaded from: classes.dex */
public abstract class AbstractC0893ad extends AbstractC0897ah {

    /* renamed from: a */
    private final String f3213a;

    /* renamed from: c */
    private final String f3214c;

    /* renamed from: d */
    private final String f3215d;

    /* renamed from: e */
    private final String f3216e;

    /* renamed from: f */
    private final String f3217f;

    /* renamed from: g */
    private final String[] f3218g;

    /* renamed from: h */
    private String f3219h;

    /* renamed from: i */
    private String f3220i;

    /* renamed from: j */
    private long f3221j;

    public AbstractC0893ad(EnumC0963z enumC0963z, String str, String str2, String str3, String str4, String str5, String str6, String... strArr) {
        super(enumC0963z, str6);
        this.f3213a = str;
        this.f3214c = str2;
        this.f3215d = str3;
        this.f3216e = str4;
        this.f3217f = str5;
        this.f3218g = strArr;
    }

    @Override // com.alensw.cloud.oauth.AbstractC0897ah
    /* renamed from: a */
    public String mo3361a(InterfaceC0679f interfaceC0679f) {
        Uri.Builder buildUpon = Uri.parse(this.f3216e).buildUpon();
        buildUpon.appendQueryParameter("response_type", mo3378a() ? "token" : "code").appendQueryParameter("client_id", this.f3213a).appendQueryParameter("redirect_uri", this.f3227b);
        if (this.f3215d != null && !this.f3215d.equals("")) {
            buildUpon.appendQueryParameter("scope", this.f3215d);
        }
        if (this.f3218g != null && this.f3218g.length >= 2) {
            for (int i = 0; i < this.f3218g.length - 1; i += 2) {
                buildUpon.appendQueryParameter(this.f3218g[i], this.f3218g[i + 1]);
            }
        }
        return buildUpon.build().toString();
    }

    /* renamed from: a */
    protected String mo3370a(String str, InterfaceC0679f interfaceC0679f) {
        String m2681b;
        HttpURLConnection httpURLConnection = null;
        try {
            byte[] bytes = str.getBytes("UTF-8");
            httpURLConnection = C0675b.m2661a(this.f3217f, HttpPost.METHOD_NAME);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
            httpURLConnection.setRequestProperty("Content-Length", Integer.toString(bytes.length));
            httpURLConnection.getOutputStream().write(bytes);
            try {
                m2681b = C0675b.m2660a(httpURLConnection, interfaceC0679f);
            } catch (FileNotFoundException e) {
                m2681b = C0675b.m2681b(httpURLConnection, interfaceC0679f);
            }
            Log.d("OAuthApi20", "get token: " + (m2681b != null ? Integer.valueOf(m2681b.length()) : "null"));
            return m2681b;
        } finally {
            C0675b.m2670a(httpURLConnection);
        }
    }

    @Override // com.alensw.cloud.oauth.AbstractC0897ah
    /* renamed from: a */
    public void mo3367a(C0899aj c0899aj, InterfaceC0679f interfaceC0679f) {
        if (!mo3378a()) {
            mo3371a(this.f3219h, c0899aj, interfaceC0679f);
        } else {
            c0899aj.f3229a = this.f3220i;
            c0899aj.f3232d = this.f3221j;
        }
    }

    /* renamed from: a */
    protected void mo3371a(String str, C0899aj c0899aj, InterfaceC0679f interfaceC0679f) {
        c0899aj.m3381a(mo3370a(m3374b(str), interfaceC0679f));
    }

    @Override // com.alensw.cloud.oauth.AbstractC0897ah
    /* renamed from: a */
    public boolean mo3368a(String str) {
        if (!m3380e(str)) {
            return false;
        }
        Uri parse = Uri.parse(str);
        if (!mo3378a()) {
            this.f3219h = Uri.parse(str).getQueryParameter("code");
            return (this.f3219h == null || this.f3219h.length() == 0) ? false : true;
        }
        this.f3220i = null;
        this.f3221j = 0L;
        String[] split = parse.getEncodedFragment().split("&");
        for (String str2 : split) {
            int indexOf = str2.indexOf(61);
            String substring = str2.substring(0, indexOf);
            String substring2 = str2.substring(indexOf + 1);
            if ("access_token".equals(substring)) {
                this.f3220i = substring2;
            } else if ("expires_in".equals(substring)) {
                this.f3221j = System.currentTimeMillis() + (1000 * Long.parseLong(substring2));
            }
        }
        return (this.f3220i == null || this.f3220i.length() == 0) ? false : true;
    }

    /* renamed from: a_ */
    public void mo3372a_(C0899aj c0899aj, InterfaceC0679f interfaceC0679f) {
        c0899aj.m3381a(mo3370a(mo3375c(c0899aj.f3230b), interfaceC0679f));
    }

    /* renamed from: b */
    protected final String m3373b() {
        return this.f3215d;
    }

    /* renamed from: b */
    protected String m3374b(String str) {
        return new StringBuilder(256).append("grant_type=").append("authorization_code").append("&code=").append(Uri.encode(str)).append("&client_id=").append(Uri.encode(this.f3213a)).append("&client_secret=").append(Uri.encode(this.f3214c)).append("&redirect_uri=").append(Uri.encode(this.f3227b)).toString();
    }

    /* renamed from: c */
    protected String mo3375c(String str) {
        return new StringBuilder(256).append("grant_type=").append("refresh_token").append("&refresh_token=").append(Uri.encode(str)).append("&client_id=").append(Uri.encode(this.f3213a)).append("&client_secret=").append(Uri.encode(this.f3214c)).toString();
    }
}
