package com.alensw.cloud.oauth;

import android.net.Uri;
import android.util.Log;
import com.alensw.cloud.EnumC0963z;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p029f.C0691d;
import java.net.HttpURLConnection;
import org.apache.http.HttpHeaders;
import org.apache.http.client.methods.HttpGet;
import org.json.JSONObject;

/* renamed from: com.alensw.cloud.oauth.ak */
/* loaded from: classes.dex */
public class C0900ak extends AbstractC0893ad {
    public C0900ak() {
        super(EnumC0963z.ONEDRIVE, C0691d.m2728b("________cc``tq`a"), C0691d.m2728b("E=s*q$+eCp&@J=BdzJ>`@\"ep4$49_FH&"), C0691d.m2728b("H=]D:8?:? H=]@77=:?602446DD H=]D<J5C:G60FA52E6"), C0691d.m2728b("9EEADi^^=@8:?]=:G6]4@>^@2FE9a_02FE9@C:K6]DC7"), C0691d.m2728b("9EEADi^^=@8:?]=:G6]4@>^@2FE9a_0E@<6?]DC7"), C0691d.m2728b("9EEADi^^BF:4<A:4]B\\DFAC6>6]4@>^@2FE9^42==324<\\@?65C:G6"), new String[0]);
    }

    @Override // com.alensw.cloud.oauth.AbstractC0897ah
    /* renamed from: a */
    public void mo3353a(C0889a c0889a, InterfaceC0679f interfaceC0679f) {
        try {
            HttpURLConnection m2661a = C0675b.m2661a("https://apis.live.net/v5.0/me?locale=en_US", HttpGet.METHOD_NAME);
            m2661a.setRequestProperty("Authorization", "Bearer " + c0889a.f3196g.f3229a);
            m2661a.setRequestProperty(HttpHeaders.ACCEPT_ENCODING, "gzip");
            int responseCode = m2661a.getResponseCode();
            if (responseCode == 200) {
                String m2660a = C0675b.m2660a(m2661a, interfaceC0679f);
                Log.d("OAuthApi20", "get user info: " + (m2660a != null ? Integer.valueOf(m2660a.length()) : "null"));
                JSONObject jSONObject = new JSONObject(m2660a);
                c0889a.f3191b = jSONObject.getString("id");
                c0889a.f3192c = jSONObject.getString("name");
            } else if (responseCode >= 400) {
                Log.e("OAuthApi20", "Error response: " + responseCode + " - " + C0675b.m2681b(m2661a, interfaceC0679f));
            } else {
                Log.e("OAuthApi20", "Error response: " + responseCode);
            }
            C0675b.m2670a(m2661a);
        } catch (Throwable th) {
            C0675b.m2670a((HttpURLConnection) null);
            throw th;
        }
    }

    @Override // com.alensw.cloud.oauth.AbstractC0893ad
    /* renamed from: c */
    protected String mo3375c(String str) {
        return super.mo3375c(str) + "&scope=" + Uri.encode(m3373b());
    }
}
