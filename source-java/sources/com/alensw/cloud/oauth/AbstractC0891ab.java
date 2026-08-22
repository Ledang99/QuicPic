package com.alensw.cloud.oauth;

import android.net.Uri;
import android.util.Log;
import com.alensw.cloud.EnumC0963z;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.p014a.p015a.p016a.C0480b;
import java.net.ProtocolException;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.apache.http.client.methods.HttpGet;

/* renamed from: com.alensw.cloud.oauth.ab */
/* loaded from: classes.dex */
public abstract class AbstractC0891ab extends AbstractC0897ah {

    /* renamed from: a */
    private static final String[] f3197a = {"HMAC-SHA1", "RSA-SHA1"};

    /* renamed from: c */
    private static final String[] f3198c = {"HmacSHA1", "RsaSHA1"};

    /* renamed from: n */
    private static final SecureRandom f3199n = new SecureRandom();

    /* renamed from: o */
    private static C0480b f3200o = new C0480b();

    /* renamed from: d */
    private final String f3201d;

    /* renamed from: e */
    private final String f3202e;

    /* renamed from: f */
    private final String f3203f;

    /* renamed from: g */
    private final String f3204g;

    /* renamed from: h */
    private final String f3205h;

    /* renamed from: i */
    private final int f3206i;

    /* renamed from: j */
    private String f3207j;

    /* renamed from: k */
    private String f3208k;

    /* renamed from: l */
    private boolean f3209l;

    /* renamed from: m */
    private String f3210m;

    public AbstractC0891ab(EnumC0963z enumC0963z, String str, String str2, String str3, String str4, String str5, String str6, int i) {
        super(enumC0963z, str6);
        this.f3201d = str;
        this.f3202e = str2;
        this.f3203f = str3;
        this.f3204g = str4;
        this.f3205h = str5;
        this.f3206i = i;
    }

    /* renamed from: a */
    private static String m3355a(int i, String str, String str2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes("UTF-8"), f3198c[i]);
            Mac mac = Mac.getInstance(f3198c[i]);
            mac.init(secretKeySpec);
            return m3356a(mac.doFinal(str.getBytes("UTF-8")));
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: a */
    private static String m3356a(byte[] bArr) {
        int length = (3 - (bArr.length % 3)) % 3;
        byte[] m3357a = m3357a(bArr.length + length, bArr);
        StringBuilder sb = new StringBuilder((m3357a.length / 3) * 4);
        for (int i = 0; i < m3357a.length; i += 3) {
            int i2 = ((m3357a[i] & 255) << 16) + ((m3357a[i + 1] & 255) << 8) + (m3357a[i + 2] & 255);
            sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((i2 >> 18) & 63)).append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((i2 >> 12) & 63)).append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt((i2 >> 6) & 63)).append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(i2 & 63));
        }
        sb.replace(sb.length() - length, sb.length(), "==".substring(0, length));
        return sb.toString();
    }

    /* renamed from: a */
    private static byte[] m3357a(int i, byte[] bArr) {
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    /* renamed from: e */
    private static String m3359e() {
        byte[] bArr = new byte[4];
        f3199n.nextBytes(bArr);
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 4; i++) {
            sb.append(String.format("%02x", Integer.valueOf(bArr[i] & 255)));
        }
        return sb.toString();
    }

    /* renamed from: f */
    private static String m3360f() {
        return String.valueOf(System.currentTimeMillis() / 1000);
    }

    @Override // com.alensw.cloud.oauth.AbstractC0897ah
    /* renamed from: a */
    public String mo3361a(InterfaceC0679f interfaceC0679f) {
        Map m3365a = m3365a(m3364a(this.f3203f, HttpGet.METHOD_NAME, "oauth_callback", this.f3227b), interfaceC0679f);
        this.f3207j = (String) m3365a.get("oauth_token");
        this.f3208k = (String) m3365a.get("oauth_token_secret");
        String str = (String) m3365a.get("oauth_callback_confirmed");
        this.f3209l = str != null && "true".equals(str.toLowerCase());
        if (this.f3207j == null || this.f3208k == null) {
            throw new ProtocolException("no oauth token found");
        }
        if (!this.f3209l) {
            Log.w("OAuthApi10", "OAuth 1.0a claims callback must be redirected.");
        }
        return this.f3204g + (this.f3204g.indexOf(63) > 0 ? "&" : "?") + "oauth_token=" + m3369b(this.f3207j);
    }

    /* renamed from: a */
    public final String m3362a(String str, String str2, List list) {
        return m3363a(str, str2, list, new TreeMap());
    }

    /* renamed from: a */
    public final String m3363a(String str, String str2, List list, TreeMap treeMap) {
        int i = 0;
        treeMap.put("oauth_nonce", m3359e());
        treeMap.put("oauth_timestamp", m3360f());
        treeMap.put("oauth_version", "1.0");
        treeMap.put("oauth_signature_method", f3197a[this.f3206i]);
        treeMap.put("oauth_consumer_key", this.f3201d);
        if (this.f3207j != null) {
            treeMap.put("oauth_token", this.f3207j);
        }
        for (int i2 = 0; i2 < list.size(); i2 += 2) {
            treeMap.put(list.get(i2), list.get(i2 + 1));
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : treeMap.entrySet()) {
            int i3 = i + 1;
            if (i != 0) {
                sb.append("&");
            }
            sb.append(m3369b((String) entry.getKey()));
            sb.append("=").append(m3369b((String) entry.getValue()));
            i = i3;
        }
        StringBuilder append = new StringBuilder(this.f3202e).append("&");
        if (this.f3208k != null) {
            append.append(this.f3208k);
        }
        String m3355a = m3355a(this.f3206i, str2 + "&" + m3369b(str) + "&" + m3369b(sb.toString()), append.toString());
        treeMap.put("oauth_signature", m3355a);
        sb.append("&oauth_signature=").append(m3369b(m3355a));
        return str + "?" + sb.toString();
    }

    /* renamed from: a */
    public final String m3364a(String str, String str2, String... strArr) {
        return m3362a(str, str2, Arrays.asList(strArr));
    }

    /* renamed from: a */
    public Map m3365a(String str, InterfaceC0679f interfaceC0679f) {
        HashMap hashMap = new HashMap();
        C0675b.m2668a(str, HttpGet.METHOD_NAME, (Map) null, new C0892ac(this, interfaceC0679f, hashMap));
        return hashMap;
    }

    /* renamed from: a */
    protected void mo3352a(int i, String str) {
        throw new ProtocolException(str);
    }

    /* renamed from: a */
    public final void m3366a(C0899aj c0899aj) {
        this.f3207j = c0899aj.f3229a;
        this.f3208k = c0899aj.f3230b;
    }

    @Override // com.alensw.cloud.oauth.AbstractC0897ah
    /* renamed from: a */
    public void mo3367a(C0899aj c0899aj, InterfaceC0679f interfaceC0679f) {
        Map m3365a = m3365a(m3364a(this.f3205h, HttpGet.METHOD_NAME, "oauth_verifier", this.f3210m), interfaceC0679f);
        this.f3207j = (String) m3365a.get("oauth_token");
        this.f3208k = (String) m3365a.get("oauth_token_secret");
        c0899aj.f3229a = this.f3207j;
        c0899aj.f3230b = this.f3208k;
    }

    @Override // com.alensw.cloud.oauth.AbstractC0897ah
    /* renamed from: a */
    public boolean mo3368a(String str) {
        if (!m3380e(str)) {
            return false;
        }
        Uri parse = Uri.parse(str);
        this.f3207j = parse.getQueryParameter("oauth_token");
        this.f3210m = parse.getQueryParameter("oauth_verifier");
        return (this.f3207j == null || this.f3210m == null) ? false : true;
    }

    /* renamed from: b */
    protected int mo3354b() {
        return 0;
    }

    /* renamed from: b */
    protected String m3369b(String str) {
        return URLEncoder.encode(str).replace("+", "%20");
    }
}
