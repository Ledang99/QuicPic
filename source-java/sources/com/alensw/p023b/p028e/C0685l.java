package com.alensw.p023b.p028e;

import android.util.Log;
import java.io.IOException;
import org.apache.http.HttpException;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpRequestHandler;

/* renamed from: com.alensw.b.e.l */
/* loaded from: classes.dex */
class C0685l implements HttpRequestHandler {

    /* renamed from: a */
    final /* synthetic */ C0683j f2586a;

    C0685l(C0683j c0683j) {
        this.f2586a = c0683j;
    }

    @Override // org.apache.http.protocol.HttpRequestHandler
    public void handle(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) {
        try {
            this.f2586a.m2703a(httpRequest, httpResponse, httpContext);
        } catch (IOException e) {
            throw e;
        } catch (HttpException e2) {
            throw e2;
        } catch (Exception e3) {
            C0683j.m2699a(httpRequest, httpResponse, HttpStatus.SC_INTERNAL_SERVER_ERROR, e3.getMessage());
            Log.e("HttpServer", "handle request: ", e3);
        }
    }
}
