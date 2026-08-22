package com.alensw.cloud.oauth;

import android.util.Log;
import com.alensw.cloud.EnumC0963z;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p029f.C0691d;
import java.net.HttpURLConnection;
import org.apache.http.client.methods.HttpGet;
import org.json.JSONObject;

/* renamed from: com.alensw.cloud.oauth.c */
/* loaded from: classes.dex */
public class C0905c extends AbstractC0893ad {
    public C0905c() {
        super(EnumC0963z.AMAZON, C0691d.m2728b("2>K?`]2AA=:42E:@?\\@2a\\4=:6?E]c5h_ab5aacbbca2fh2df2bhaed345e43"), C0691d.m2728b("2ef45g`gf74b4bgg545hh7baa5b4c77e47gg33e_376b`fd3h22e`daced_`bb`2"), C0691d.m2728b("4=@F55C:G6iC625 4=@F55C:G6iHC:E6 AC@7:=6"), C0691d.m2728b("9EEADi^^HHH]2>2K@?]4@>^2A^@2"), C0691d.m2728b("9EEADi^^2A:]2>2K@?]4@>^2FE9^@a^E@<6?"), C0691d.m2728b("9EEADi^^BF:4<A:4]B\\DFAC6>6]4@>^@2FE9^42==324<"), new String[0]);
    }

    /* renamed from: a_ */
    public static String[] m3393a_(String str) {
        String[] strArr = new String[2];
        try {
            JSONObject jSONObject = new JSONObject(str);
            strArr[0] = jSONObject.getString("contentUrl");
            strArr[1] = jSONObject.getString("metadataUrl");
        } catch (Exception e) {
            e.printStackTrace();
            strArr[0] = "https://content-na.drive.amazonaws.com/cdproxy/";
            strArr[1] = "https://cdws.us-east-1.amazonaws.com/drive/v1/";
        }
        return strArr;
    }

    @Override // com.alensw.cloud.oauth.AbstractC0897ah
    /* renamed from: a */
    public void mo3353a(C0889a c0889a, InterfaceC0679f interfaceC0679f) {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2;
        HttpURLConnection httpURLConnection3 = null;
        try {
            Log.d("OAuthApi20", "request UserInfo access_token: " + c0889a.f3196g.f3229a);
            httpURLConnection2 = C0675b.m2661a("https://api.amazon.com/user/profile", HttpGet.METHOD_NAME);
            try {
                httpURLConnection2.setRequestProperty("Authorization", "Bearer " + c0889a.f3196g.f3229a);
                String m2660a = C0675b.m2660a(httpURLConnection2, interfaceC0679f);
                Log.d("OAuthApi20", "get user info: " + (m2660a != null ? Integer.valueOf(m2660a.length()) : "null"));
                JSONObject jSONObject = new JSONObject(m2660a);
                c0889a.f3191b = jSONObject.getString("user_id");
                c0889a.f3192c = jSONObject.getString("name");
                httpURLConnection = C0675b.m2661a("https://drive.amazonaws.com/drive/v1/account/endpoint", HttpGet.METHOD_NAME);
            } catch (Throwable th) {
                th = th;
                httpURLConnection = null;
            }
            try {
                httpURLConnection.setRequestProperty("Authorization", "Bearer " + c0889a.f3196g.f3229a);
                String m2660a2 = C0675b.m2660a(httpURLConnection, interfaceC0679f);
                c0889a.f3195f = m2660a2;
                httpURLConnection3 = C0675b.m2661a(m3393a_(m2660a2)[1] + "nodes?filters=isRoot:true", HttpGet.METHOD_NAME);
                httpURLConnection3.setRequestProperty("Authorization", "Bearer " + c0889a.f3196g.f3229a);
                c0889a.f3194e = new JSONObject(C0675b.m2660a(httpURLConnection3, interfaceC0679f)).getJSONArray("data").getJSONObject(0).getString("id");
                C0675b.m2670a(httpURLConnection2);
                C0675b.m2670a(httpURLConnection);
                C0675b.m2670a(httpURLConnection3);
            } catch (Throwable th2) {
                th = th2;
                C0675b.m2670a(httpURLConnection2);
                C0675b.m2670a(httpURLConnection);
                C0675b.m2670a(httpURLConnection3);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            httpURLConnection = null;
            httpURLConnection2 = null;
        }
    }
}
