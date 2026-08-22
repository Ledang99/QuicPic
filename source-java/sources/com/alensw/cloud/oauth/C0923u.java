package com.alensw.cloud.oauth;

import android.util.Log;
import com.alensw.cloud.EnumC0963z;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p029f.C0691d;
import java.net.HttpURLConnection;
import org.apache.http.client.methods.HttpGet;
import org.json.JSONObject;

/* renamed from: com.alensw.cloud.oauth.u */
/* loaded from: classes.dex */
public class C0923u extends AbstractC0891ab {

    /* renamed from: a */
    public static final String f3262a = C0691d.m2728b("46db2fc6_4ch477fec2`62c276fch7a`");

    public C0923u() {
        super(EnumC0963z.FLICKR, f3262a, C0691d.m2728b("c3efdcb_22hafc3e"), C0691d.m2728b("9EEADi^^HHH]7=:4<C]4@>^D6CG:46D^@2FE9^C6BF6DE0E@<6?"), C0691d.m2728b("9EEADi^^HHH]7=:4<C]4@>^D6CG:46D^@2FE9^2FE9@C:K6nA6C>Dl56=6E6"), C0691d.m2728b("9EEADi^^HHH]7=:4<C]4@>^D6CG:46D^@2FE9^2446DD0E@<6?"), C0691d.m2728b("9EEAi^^BF:4<A:4]B\\DFAC6>6]4@>^@2FE9^7=:4<C^42==324<"), 0);
    }

    @Override // com.alensw.cloud.oauth.AbstractC0897ah
    /* renamed from: a */
    public void mo3353a(C0889a c0889a, InterfaceC0679f interfaceC0679f) {
        try {
            HttpURLConnection m2661a = C0675b.m2661a(m3364a("https://api.flickr.com/services/rest", HttpGet.METHOD_NAME, "method", "flickr.test.login", "format", "json", "nojsoncallback", "1"), HttpGet.METHOD_NAME);
            int responseCode = m2661a.getResponseCode();
            if (responseCode == 200) {
                String m2660a = C0675b.m2660a(m2661a, interfaceC0679f);
                Log.d("OAuthApi10", "get user info: " + (m2660a != null ? Integer.valueOf(m2660a.length()) : "null"));
                JSONObject jSONObject = new JSONObject(m2660a).getJSONObject("user");
                c0889a.f3191b = jSONObject.getString("id");
                c0889a.f3192c = jSONObject.getJSONObject("username").getString("_content");
            } else if (responseCode >= 400) {
                Log.e("OAuthApi10", "Error response: " + responseCode + " - " + C0675b.m2681b(m2661a, interfaceC0679f));
            } else {
                Log.e("OAuthApi10", "Error response: " + responseCode);
            }
            C0675b.m2670a(m2661a);
        } catch (Throwable th) {
            C0675b.m2670a((HttpURLConnection) null);
            throw th;
        }
    }
}
