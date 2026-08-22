package com.alensw.cloud.oauth;

import android.util.Log;
import com.alensw.cloud.EnumC0963z;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p029f.C0691d;
import java.net.HttpURLConnection;
import org.apache.http.client.methods.HttpGet;
import org.json.JSONObject;

/* renamed from: com.alensw.cloud.oauth.am */
/* loaded from: classes.dex */
public class C0902am extends AbstractC0893ad {
    public C0902am() {
        super(EnumC0963z.YANDEX, C0691d.m2728b("4_3422bdfdc4chf4ggf2dh_eb2e3h7cf"), C0691d.m2728b("_gc_4c6da264cd5c3c36`c67f3bgbbhe"), C0691d.m2728b("32D:4 ?6E5:D<"), C0691d.m2728b("9EEADi^^@2FE9]J2?56I]CF^2FE9@C:K6"), C0691d.m2728b("9EEADi^^@2FE9]J2?56I]CF^E@<6?"), C0691d.m2728b("9EEAi^^BF:4<A:4]B\\DFAC6>6]4@>^@2FE9^42==324<"), C0691d.m2728b("5:DA=2J"), C0691d.m2728b("DE2E6"));
    }

    @Override // com.alensw.cloud.oauth.AbstractC0897ah
    /* renamed from: a */
    public void mo3353a(C0889a c0889a, InterfaceC0679f interfaceC0679f) {
        HttpURLConnection httpURLConnection = null;
        try {
            httpURLConnection = C0675b.m2661a("https://login.yandex.ru/info", HttpGet.METHOD_NAME);
            httpURLConnection.setRequestProperty("Authorization", "OAuth " + c0889a.f3196g.f3229a);
            String m2660a = C0675b.m2660a(httpURLConnection, interfaceC0679f);
            Log.d("YandexAuthApi", "get user info: " + (m2660a != null ? Integer.valueOf(m2660a.length()) : "null"));
            JSONObject jSONObject = new JSONObject(m2660a);
            c0889a.f3191b = jSONObject.getString("id");
            c0889a.f3192c = jSONObject.getString("display_name");
        } finally {
            C0675b.m2670a(httpURLConnection);
        }
    }
}
