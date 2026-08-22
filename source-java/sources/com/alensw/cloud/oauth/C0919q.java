package com.alensw.cloud.oauth;

import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0680g;
import com.alensw.p023b.p028e.InterfaceC0679f;
import java.io.InputStream;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.cookie.ClientCookie;
import org.json.JSONObject;

/* renamed from: com.alensw.cloud.oauth.q */
/* loaded from: classes.dex */
class C0919q extends C0680g {

    /* renamed from: a */
    final /* synthetic */ boolean f3257a;

    /* renamed from: b */
    final /* synthetic */ String[] f3258b;

    /* renamed from: c */
    final /* synthetic */ BasicAuthActivity f3259c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0919q(BasicAuthActivity basicAuthActivity, InterfaceC0679f interfaceC0679f, boolean z, String[] strArr) {
        super(interfaceC0679f);
        this.f3259c = basicAuthActivity;
        this.f3257a = z;
        this.f3258b = strArr;
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2685a(int i, String str) {
        throw new RuntimeException("Server not installed!");
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2687a(int i, String str, String str2, long j, InputStream inputStream) {
        JSONObject jSONObject = new JSONObject(C0675b.m2656a(inputStream, str2, this.f2569i));
        String string = jSONObject.getString("installed");
        this.f3258b[0] = jSONObject.getString(ClientCookie.VERSION_ATTR);
        if (!"true".equals(string)) {
            throw new RuntimeException("Server not installed!");
        }
    }

    @Override // com.alensw.p023b.p028e.C0680g
    /* renamed from: a */
    public void mo2690a(HttpsURLConnection httpsURLConnection) {
        if (this.f3257a) {
            C0675b.m2678a(httpsURLConnection);
        }
    }
}
