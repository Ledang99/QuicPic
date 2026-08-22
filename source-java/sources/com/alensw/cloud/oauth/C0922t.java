package com.alensw.cloud.oauth;

import android.util.Log;
import com.alensw.cloud.EnumC0963z;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p029f.C0691d;
import java.net.HttpURLConnection;
import org.apache.http.client.methods.HttpGet;
import org.json.JSONObject;

/* renamed from: com.alensw.cloud.oauth.t */
/* loaded from: classes.dex */
public class C0922t extends AbstractC0893ad {
    public C0922t() {
        super(EnumC0963z.DROPBOX, C0691d.m2728b("JJ>aK?Id`Ia4ghI"), "", "", C0691d.m2728b("9EEADi^^HHH]5C@A3@I]4@>^`^@2FE9a^2FE9@C:K6"), C0691d.m2728b("9EEADi^^2A:]5C@A3@I]4@>^`^@2FE9a^E@<6?"), C0691d.m2728b("9EEAi^^=@42=9@DE"), new String[0]);
    }

    @Override // com.alensw.cloud.oauth.AbstractC0897ah
    /* renamed from: a */
    public void mo3353a(C0889a c0889a, InterfaceC0679f interfaceC0679f) {
        try {
            HttpURLConnection m2661a = C0675b.m2661a("https://api.dropbox.com/1/account/info", HttpGet.METHOD_NAME);
            m2661a.setRequestProperty("Authorization", "Bearer " + c0889a.f3196g.f3229a);
            int responseCode = m2661a.getResponseCode();
            if (responseCode == 200) {
                String m2660a = C0675b.m2660a(m2661a, interfaceC0679f);
                Log.d("OAuthApi20", "get user info: " + (m2660a != null ? Integer.valueOf(m2660a.length()) : "null"));
                JSONObject jSONObject = new JSONObject(m2660a);
                c0889a.f3191b = jSONObject.getString("uid");
                c0889a.f3192c = jSONObject.getString("display_name");
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

    @Override // com.alensw.cloud.oauth.AbstractC0897ah
    /* renamed from: a */
    public boolean mo3378a() {
        return true;
    }
}
