package com.alensw.cloud.oauth;

import android.net.Uri;
import android.util.Log;
import com.alensw.cloud.EnumC0963z;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p029f.C0691d;
import java.net.HttpURLConnection;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.cookie.InterfaceC1465SM;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.alensw.cloud.oauth.an */
/* loaded from: classes.dex */
public class C0903an extends AbstractC0893ad {
    public C0903an() {
        super(EnumC0963z.YUN360, C0691d.m2728b("bh__474dg22d5bb2_73hga_`ach7_aab4_635b6b"), C0691d.m2728b("4h5326`ag6d7dabfcga`2gee56_bf3a6bcca7h_d"), "", C0691d.m2728b("9EEADi^^@A6?]JF?A2?]be_]4?^@2FE9^2FE9@C:K6"), C0691d.m2728b("9EEADi^^@A6?]JF?A2?]be_]4?^@2FE9^E@<6?"), C0691d.m2728b("9EEAi^^BF:4<A:4]B\\DFAC6>6]4@>^@2FE9^42==324<"), C0691d.m2728b(">@3:=6"), "1");
    }

    @Override // com.alensw.cloud.oauth.AbstractC0893ad
    /* renamed from: a */
    protected String mo3370a(String str, InterfaceC0679f interfaceC0679f) {
        String mo3370a = super.mo3370a(str, interfaceC0679f);
        try {
            return new JSONObject(mo3370a).getJSONObject("data").toString();
        } catch (JSONException e) {
            return mo3370a;
        }
    }

    @Override // com.alensw.cloud.oauth.AbstractC0897ah
    /* renamed from: a */
    public void mo3353a(C0889a c0889a, InterfaceC0679f interfaceC0679f) {
        try {
            HttpURLConnection m2661a = C0675b.m2661a("https://open.yunpan.360.cn/cloudfs/User/getUserDetail?user_info=1&access_token=" + c0889a.f3196g.f3229a, HttpGet.METHOD_NAME);
            m2661a.setRequestProperty(InterfaceC1465SM.COOKIE, "access_token=" + c0889a.f3196g.f3229a);
            int responseCode = m2661a.getResponseCode();
            if (responseCode == 200) {
                String m2660a = C0675b.m2660a(m2661a, interfaceC0679f);
                Log.d("OAuthApi20", "get user info: " + (m2660a != null ? Integer.valueOf(m2660a.length()) : "null"));
                JSONObject jSONObject = new JSONObject(m2660a);
                c0889a.f3191b = jSONObject.getJSONObject("data").getString("qid");
                c0889a.f3192c = jSONObject.getJSONObject("data").getString("userName");
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
        return new StringBuilder(256).append("grant_type=").append("refresh_token").append("&refresh_token=").append(Uri.encode(str)).append("&client_id=").append(Uri.encode(C0691d.m2728b("bh__474dg22d5bb2_73hga_`ach7_aab4_635b6b"))).append("&client_secret=").append(Uri.encode(C0691d.m2728b("4h5326`ag6d7dabfcga`2gee56_bf3a6bcca7h_d"))).append("&redirect_uri=").append(Uri.encode(C0691d.m2728b("9EEAi^^BF:4<A:4]B\\DFAC6>6]4@>^@2FE9^42==324<"))).toString();
    }
}
