package com.alensw.cloud.oauth;

import android.util.Log;
import com.alensw.cloud.EnumC0963z;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p029f.C0691d;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import org.apache.http.client.methods.HttpGet;
import org.json.JSONObject;

/* renamed from: com.alensw.cloud.oauth.aa */
/* loaded from: classes.dex */
public class C0890aa extends AbstractC0891ab {
    public C0890aa() {
        super(EnumC0963z.KINGSOFT, C0691d.m2728b("I4s#%6K9:FD'@=t#"), C0691d.m2728b("\"hFf3*8t'!;+x_)J"), C0691d.m2728b("9EEADi^^@A6?2A:]<F2:A2?]4?^@A6?^C6BF6DE%@<6?"), C0691d.m2728b("9EEADi^^HHH]<F2:A2?]4?^2A:]A9An24l@A6?U@Al2FE9@C:D6"), C0691d.m2728b("9EEADi^^@A6?2A:]<F2:A2?]4?^@A6?^2446DD%@<6?"), C0691d.m2728b("9EEAi^^=@42=9@DE^"), 0);
    }

    @Override // com.alensw.cloud.oauth.AbstractC0891ab
    /* renamed from: a */
    protected void mo3352a(int i, String str) {
        if (str.contains("request expired")) {
            Log.e("OAuthApi10", "the request is expired, please correct your system time and try again!");
        }
        throw new ProtocolException(str);
    }

    @Override // com.alensw.cloud.oauth.AbstractC0897ah
    /* renamed from: a */
    public void mo3353a(C0889a c0889a, InterfaceC0679f interfaceC0679f) {
        try {
            HttpURLConnection m2661a = C0675b.m2661a(m3364a("http://openapi.kuaipan.cn/1/account_info", HttpGet.METHOD_NAME, new String[0]), HttpGet.METHOD_NAME);
            int responseCode = m2661a.getResponseCode();
            if (responseCode == 200) {
                String m2660a = C0675b.m2660a(m2661a, interfaceC0679f);
                Log.d("OAuthApi10", "get user info: " + (m2660a != null ? Integer.valueOf(m2660a.length()) : "null"));
                JSONObject jSONObject = new JSONObject(m2660a);
                c0889a.f3191b = jSONObject.getString("user_id");
                c0889a.f3192c = jSONObject.getString("user_name");
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

    @Override // com.alensw.cloud.oauth.AbstractC0891ab
    /* renamed from: b */
    protected int mo3354b() {
        return 2;
    }
}
