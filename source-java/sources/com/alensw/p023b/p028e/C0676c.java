package com.alensw.p023b.p028e;

import java.security.cert.X509Certificate;
import javax.net.ssl.X509TrustManager;

/* renamed from: com.alensw.b.e.c */
/* loaded from: classes.dex */
final class C0676c implements X509TrustManager {
    C0676c() {
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    @Override // javax.net.ssl.X509TrustManager
    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
    }

    @Override // javax.net.ssl.X509TrustManager
    public X509Certificate[] getAcceptedIssuers() {
        return new X509Certificate[0];
    }
}
