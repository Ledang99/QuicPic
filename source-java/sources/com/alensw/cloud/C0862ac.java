package com.alensw.cloud;

import android.net.Uri;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.C0683j;
import com.alensw.p023b.p033j.C0725a;
import java.net.URLEncoder;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.protocol.HttpContext;

/* renamed from: com.alensw.cloud.ac */
/* loaded from: classes.dex */
public class C0862ac extends C0683j {

    /* renamed from: a */
    private final AtomicInteger f3136a;

    public C0862ac(int i) {
        super(i);
        this.f3136a = new AtomicInteger(0);
    }

    /* renamed from: a */
    protected long mo2067a(String str, String str2, C0682i c0682i) {
        return 0L;
    }

    /* renamed from: a */
    public String m3278a(Uri uri) {
        return "http://127.0.0.1:" + m2710e() + "/" + URLEncoder.encode(uri.toString());
    }

    /* renamed from: a */
    public void m3279a() {
        if (this.f3136a.incrementAndGet() == 1) {
            m2708c();
        }
    }

    @Override // com.alensw.p023b.p028e.C0683j
    /* renamed from: a */
    protected void mo2702a(String str, Map map, HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) {
        if (str.length() < 1 || str.charAt(0) != '/') {
            httpResponse.setStatusCode(HttpStatus.SC_BAD_REQUEST);
            return;
        }
        Uri parse = Uri.parse(str.substring(1));
        String a2 = m2694a(httpRequest, "range");
        C0682i c0682i = new C0682i();
        m2697a(c0682i, mo2067a(C0725a.m2916b(parse), a2, c0682i), a2, httpResponse);
    }

    /* renamed from: b */
    public void m3280b() {
        if (this.f3136a.decrementAndGet() == 0) {
            m2709d();
        }
    }
}
