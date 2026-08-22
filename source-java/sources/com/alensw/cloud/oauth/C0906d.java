package com.alensw.cloud.oauth;

import android.util.Log;
import com.alensw.cloud.EnumC0963z;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p029f.C0691d;
import java.net.HttpURLConnection;
import org.apache.http.client.methods.HttpGet;
import org.json.JSONObject;

/* renamed from: com.alensw.cloud.oauth.d */
/* loaded from: classes.dex */
public class C0906d extends AbstractC0893ad {
    public C0906d() {
        super(EnumC0963z.BAIDU, C0691d.m2728b("v7tvsHd89`=Ie;s'aK~KAG`g"), C0691d.m2728b("t`#BG5<e|fthC7*>)h7EB\"A<}_&Kb)vC"), C0691d.m2728b("32D:4 ?6E5:D<"), C0691d.m2728b("9EEADi^^@A6?2A:]32:5F]4@>^@2FE9^a]_^2FE9@C:K6"), C0691d.m2728b("9EEADi^^@A6?2A:]32:5F]4@>^@2FE9^a]_^E@<6?"), C0691d.m2728b("9EEAi^^BF:4<A:4]B\\DFAC6>6]4@>^@2FE9^42==324<"), C0691d.m2728b("5:DA=2J"), C0691d.m2728b(">@3:=6"));
    }

    @Override // com.alensw.cloud.oauth.AbstractC0897ah
    /* renamed from: a */
    public void mo3353a(C0889a c0889a, InterfaceC0679f interfaceC0679f) {
        HttpURLConnection httpURLConnection = null;
        try {
            httpURLConnection = C0675b.m2661a("https://openapi.baidu.com/rest/2.0/passport/users/getInfo?access_token=" + c0889a.f3196g.f3229a, HttpGet.METHOD_NAME);
            String m2660a = C0675b.m2660a(httpURLConnection, interfaceC0679f);
            Log.d("OAuthApi20", "get user info: " + (m2660a != null ? Integer.valueOf(m2660a.length()) : "null"));
            JSONObject jSONObject = new JSONObject(m2660a);
            c0889a.f3191b = jSONObject.getString("userid");
            c0889a.f3192c = jSONObject.getString("username");
        } finally {
            C0675b.m2670a(httpURLConnection);
        }
    }

    @Override // com.alensw.cloud.oauth.AbstractC0893ad
    /* renamed from: a */
    protected void mo3371a(String str, C0899aj c0899aj, InterfaceC0679f interfaceC0679f) {
        super.mo3371a(str, c0899aj, interfaceC0679f);
        if (!c0899aj.f3231c.contains("netdisk")) {
            throw new C0928z();
        }
    }

    @Override // com.alensw.cloud.oauth.AbstractC0893ad
    /* renamed from: a_ */
    public void mo3372a_(C0899aj c0899aj, InterfaceC0679f interfaceC0679f) {
        super.mo3372a_(c0899aj, interfaceC0679f);
        if (!c0899aj.f3231c.contains("netdisk")) {
            throw new C0928z();
        }
    }
}
