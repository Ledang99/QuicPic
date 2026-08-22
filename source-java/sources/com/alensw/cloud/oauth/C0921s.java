package com.alensw.cloud.oauth;

import android.util.Log;
import com.alensw.cloud.EnumC0963z;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p029f.C0691d;
import java.net.HttpURLConnection;
import org.apache.http.client.methods.HttpGet;
import org.json.JSONObject;

/* renamed from: com.alensw.cloud.oauth.s */
/* loaded from: classes.dex */
public class C0921s extends AbstractC0893ad {
    public C0921s() {
        super(EnumC0963z.BOX, C0691d.m2728b("AHf?dHg`:ge3I6a<A=dbfg=gKB:ge?BC"), C0691d.m2728b("v;>E)?tp@$=z4+q<r_(B$B;c+*E|<Jtg"), "", C0691d.m2728b("9EEADi^^2AA]3@I]4@>^2A:^@2FE9a^2FE9@C:K6"), C0691d.m2728b("9EEADi^^2AA]3@I]4@>^2A:^@2FE9a^E@<6?"), C0691d.m2728b("9EEADi^^BF:4<A:4]B\\DFAC6>6]4@>^@2FE9^42==324<"), new String[0]);
    }

    @Override // com.alensw.cloud.oauth.AbstractC0897ah
    /* renamed from: a */
    public void mo3353a(C0889a c0889a, InterfaceC0679f interfaceC0679f) {
        HttpURLConnection httpURLConnection = null;
        try {
            Log.d("OAuthApi20", "request UserInfo access_token: " + c0889a.f3196g.f3229a);
            httpURLConnection = C0675b.m2661a("https://api.box.com/2.0/users/me", HttpGet.METHOD_NAME);
            httpURLConnection.setRequestProperty("Authorization", "Bearer " + c0889a.f3196g.f3229a);
            String m2660a = C0675b.m2660a(httpURLConnection, interfaceC0679f);
            Log.d("OAuthApi20", "get user info: " + (m2660a != null ? m2660a : "null"));
            JSONObject jSONObject = new JSONObject(m2660a);
            c0889a.f3191b = jSONObject.getString("id");
            c0889a.f3192c = jSONObject.getString("name");
        } finally {
            C0675b.m2670a(httpURLConnection);
        }
    }
}
