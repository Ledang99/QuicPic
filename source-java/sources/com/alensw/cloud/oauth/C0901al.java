package com.alensw.cloud.oauth;

import android.util.Log;
import com.alensw.cloud.EnumC0963z;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p029f.C0691d;
import java.net.HttpURLConnection;
import org.apache.http.client.methods.HttpGet;

/* renamed from: com.alensw.cloud.oauth.al */
/* loaded from: classes.dex */
public class C0901al extends AbstractC0893ad {

    /* renamed from: a */
    public static final String f3233a = C0691d.m2728b("9EEADi^^HHH]8@@8=62A:D]4@>^2FE9^FD6C:?7@]6>2:= 9EEADi^^HHH]8@@8=62A:D]4@>^2FE9^FD6C:?7@]AC@7:=6 9EEADi^^A:42D2H63]8@@8=6]4@>^52E2^");

    public C0901al() {
        super(EnumC0963z.PICASA, C0691d.m2728b("`_ehfheah`ecb\\C_2a:hhG4G=:@g5_>dfF<_;hca;::C4a]2AAD]8@@8=6FD6C4@?E6?E]4@>"), C0691d.m2728b("w<(c\"4AzKp>9yaIe2Ab\\q\\<>"), f3233a, C0691d.m2728b("9EEADi^^244@F?ED]8@@8=6]4@>^@^@2FE9a^2FE9"), C0691d.m2728b("9EEADi^^244@F?ED]8@@8=6]4@>^@^@2FE9a^E@<6?"), C0691d.m2728b("9EEAi^^BF:4<A:4]B\\DFAC6>6]4@>^@2FE9^42==324<"), C0691d.m2728b("2446DD0EJA6"), C0691d.m2728b("@77=:?6"), C0691d.m2728b("2AAC@G2=0AC@>AE"), C0691d.m2728b("7@C46"));
    }

    @Override // com.alensw.cloud.oauth.AbstractC0897ah
    /* renamed from: a */
    public void mo3353a(C0889a c0889a, InterfaceC0679f interfaceC0679f) {
        HttpURLConnection httpURLConnection = null;
        try {
            httpURLConnection = C0675b.m2661a("https://www.googleapis.com/oauth2/v2/userinfo", HttpGet.METHOD_NAME);
            httpURLConnection.setRequestProperty("Authorization", "OAuth " + c0889a.f3196g.f3229a);
            String m2660a = C0675b.m2660a(httpURLConnection, interfaceC0679f);
            Log.d("OAuthApi20", "get user info: " + (m2660a != null ? Integer.valueOf(m2660a.length()) : "null"));
            c0889a.m3350a(m2660a);
        } finally {
            C0675b.m2670a(httpURLConnection);
        }
    }
}
