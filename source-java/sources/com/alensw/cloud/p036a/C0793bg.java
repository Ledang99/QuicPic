package com.alensw.cloud.p036a;

import java.net.URI;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;

/* renamed from: com.alensw.cloud.a.bg */
/* loaded from: classes.dex */
class C0793bg extends HttpEntityEnclosingRequestBase {

    /* renamed from: a */
    final /* synthetic */ C0787ba f2956a;

    public C0793bg(C0787ba c0787ba, String str) {
        this.f2956a = c0787ba;
        setURI(URI.create(str));
    }

    @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
    public String getMethod() {
        return "MOVE";
    }
}
