package com.alensw.transfer;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0682i;
import com.alensw.p023b.p028e.C0683j;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p029f.C0688a;
import com.alensw.p023b.p029f.EnumC0689b;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p023b.p033j.InterfaceC0729e;
import java.io.FileNotFoundException;
import java.net.InetAddress;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;
import org.apache.http.protocol.HttpContext;

/* renamed from: com.alensw.transfer.n */
/* loaded from: classes.dex */
public class C1034n extends C0683j {

    /* renamed from: a */
    public static final String[] f3580a = {"_display_name", "_size"};

    /* renamed from: b */
    private final TransferService f3581b;

    /* renamed from: c */
    private final ConcurrentHashMap f3582c;

    public C1034n(TransferService transferService, int i) {
        super(i);
        this.f3582c = new ConcurrentHashMap(4);
        this.f3581b = transferService;
    }

    /* renamed from: a */
    private C1024d m3699a(Map map, HttpContext httpContext) {
        String str = (String) map.get("session");
        if (str == null) {
            throw new C1037q("Session does not exist");
        }
        C1024d m3503a = this.f3581b.m3503a(Long.valueOf(str));
        if (m3503a == null) {
            throw new C1037q("The client is not authorized");
        }
        Object attribute = httpContext.getAttribute("RemoteAddress");
        if (!(attribute instanceof InetAddress)) {
            throw new UnknownHostException();
        }
        if (((InetAddress) attribute).equals(m3503a.m3683e())) {
            return m3503a;
        }
        throw new C1037q("The client is not allowed");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003e  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C1038r m3700a(ContentResolver contentResolver, Uri uri) {
        Cursor cursor;
        Cursor cursor2 = null;
        C1038r c1038r = new C1038r();
        c1038r.f3587a = uri;
        try {
            try {
                cursor = contentResolver.query(uri, f3580a, null, null, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToFirst()) {
                            c1038r.f3589c = cursor.getString(0);
                            c1038r.f3588b = cursor.getLong(1);
                        }
                    } catch (Throwable th) {
                        th = th;
                        th.printStackTrace();
                        if (cursor != null) {
                            cursor.close();
                        }
                        return c1038r;
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (0 != 0) {
            }
            throw th;
        }
        return c1038r;
    }

    /* renamed from: a */
    private void m3701a(String str, Map map, HttpRequest httpRequest, HttpResponse httpResponse) {
        String str2 = (String) map.get("session");
        if (str2 == null) {
            m2699a(httpRequest, httpResponse, HttpStatus.SC_BAD_REQUEST, "Session does not exist");
            return;
        }
        if (!(httpRequest instanceof BasicHttpEntityEnclosingRequest)) {
            throw new RuntimeException("no post data");
        }
        String m2656a = C0675b.m2656a(((BasicHttpEntityEnclosingRequest) httpRequest).getEntity().getContent(), "UTF-8", (InterfaceC0679f) null);
        C1024d c1024d = new C1024d();
        c1024d.m3673a(m2656a);
        Log.d("HttpServer", "onRequestAccept from session: " + c1024d.m3680c());
        if (c1024d.m3680c() == null || c1024d.m3684f() == null) {
            m2699a(httpRequest, httpResponse, HttpStatus.SC_BAD_REQUEST, "Parameter required");
            return;
        }
        c1024d.m3676b(System.currentTimeMillis());
        c1024d.m3675a(false);
        String str3 = c1024d.m3684f() + "/file/";
        String str4 = "?session=" + URLEncoder.encode(str2);
        for (C1026f c1026f : c1024d.f3555b.values()) {
            c1026f.f3571e = Uri.parse(str3 + URLEncoder.encode(c1026f.f3567a) + str4);
        }
        this.f3581b.m3509a(c1024d);
        m2699a(httpRequest, httpResponse, HttpStatus.SC_OK, "Start download");
    }

    /* renamed from: b */
    private void m3702b(String str, Map map, HttpRequest httpRequest, HttpResponse httpResponse) {
        String str2;
        C1038r m3700a;
        ContentProviderClient contentProviderClient;
        ContentProviderClient contentProviderClient2 = null;
        try {
            String substring = str.substring("/video/".length());
            String[] split = substring.split("/");
            C1038r c1038r = (C1038r) this.f3582c.get(split[0]);
            if (c1038r.f3589c.equalsIgnoreCase(split[1])) {
                m3700a = c1038r;
            } else {
                String m2916b = C0725a.m2916b(c1038r.f3587a);
                if (m2916b.endsWith("/" + c1038r.f3589c)) {
                    str2 = m2916b.substring(0, m2916b.length() - c1038r.f3589c.length()) + split[1];
                } else {
                    if (!m2916b.endsWith("/" + URLEncoder.encode(c1038r.f3589c))) {
                        throw new IllegalArgumentException();
                    }
                    str2 = m2916b.substring(0, m2916b.length() - URLEncoder.encode(c1038r.f3589c).length()) + split[1];
                }
                m3700a = m3700a(this.f3581b.getContentResolver(), C0725a.m2918c(c1038r.f3587a.getAuthority(), str2));
            }
            C0682i c0682i = new C0682i();
            try {
                try {
                    try {
                        ContentProviderClient acquireContentProviderClient = this.f3581b.getContentResolver().acquireContentProviderClient(m3700a.f3587a.getAuthority());
                        try {
                            InterfaceC0729e interfaceC0729e = (InterfaceC0729e) acquireContentProviderClient.getLocalContentProvider();
                            String a2 = m2694a(httpRequest, "range");
                            interfaceC0729e.mo1964a(C0725a.m2916b(m3700a.f3587a), a2, c0682i, null);
                            c0682i.f2578e = new C1036p(this, c0682i.f2578e);
                            m2697a(c0682i, m3700a.f3588b, a2, httpResponse);
                            this.f3581b.m3513c();
                            if (acquireContentProviderClient != null) {
                                acquireContentProviderClient.release();
                            }
                        } catch (FileNotFoundException e) {
                            contentProviderClient = acquireContentProviderClient;
                            try {
                                httpResponse.setStatusCode(HttpStatus.SC_NOT_FOUND);
                                Log.d("HttpServer", "not found video: " + substring);
                                if (contentProviderClient != null) {
                                    contentProviderClient.release();
                                }
                            } catch (Throwable th) {
                                contentProviderClient2 = contentProviderClient;
                                th = th;
                                if (contentProviderClient2 != null) {
                                    contentProviderClient2.release();
                                }
                                throw th;
                            }
                        }
                    } catch (FileNotFoundException e2) {
                        contentProviderClient = null;
                    }
                } catch (Exception e3) {
                    throw e3;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            httpResponse.setStatusCode(HttpStatus.SC_NOT_FOUND);
        }
    }

    /* renamed from: c */
    private void m3703c(String str, Map map, HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) {
        try {
            C1024d m3699a = m3699a(map, httpContext);
            m3699a.m3670a(1);
            Log.d("HttpServer", "onDownload request: " + str);
            C1026f c1026f = (C1026f) m3699a.f3555b.get(URLDecoder.decode(str.substring(str.lastIndexOf("/") + 1)));
            if (c1026f == null) {
                m2699a(httpRequest, httpResponse, HttpStatus.SC_NOT_FOUND, "File not found");
                return;
            }
            String str2 = c1026f.f3569c;
            if (str2 == null) {
                str2 = "unknown";
            }
            int indexOf = str2.indexOf(47);
            Context applicationContext = this.f3581b.getApplicationContext();
            EnumC0689b enumC0689b = EnumC0689b.WifiTransfer;
            if (indexOf > 0) {
                str2 = str2.substring(0, indexOf);
            }
            C0688a.m2715a(applicationContext, enumC0689b, str2);
            try {
                C1011b c1011b = new C1011b(this.f3581b.getContentResolver().openInputStream(c1026f.f3571e), new C1035o(this, new long[]{0, r1.available()}, m3699a));
                if (c1026f.f3568b != null && c1026f.f3568b.length() > 0) {
                    httpResponse.addHeader("content-disposition", "attachment; filename='" + c1026f.f3568b + "'");
                }
                httpResponse.addHeader("Content-Type", c1026f.f3569c);
                httpResponse.setEntity(m2696a(c1011b, c1026f.f3570d));
                this.f3581b.m3513c();
            } catch (FileNotFoundException e) {
                m2699a(httpRequest, httpResponse, HttpStatus.SC_NOT_FOUND, e.getMessage());
            }
        } catch (C1037q e2) {
            m2699a(httpRequest, httpResponse, HttpStatus.SC_FORBIDDEN, e2.getMessage());
        } catch (Exception e3) {
            throw e3;
        }
    }

    @Override // com.alensw.p023b.p028e.C0683j
    /* renamed from: a */
    protected void mo2702a(String str, Map map, HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) {
        if (str.startsWith("/file")) {
            m3703c(str, map, httpRequest, httpResponse, httpContext);
            return;
        }
        if (str.startsWith("/info")) {
            m2699a(httpRequest, httpResponse, HttpStatus.SC_OK, "OK " + String.valueOf(QuickApp.f2068k));
        } else if (str.startsWith("/video/")) {
            m3702b(str, map, httpRequest, httpResponse);
        } else {
            httpResponse.setStatusCode(HttpStatus.SC_BAD_REQUEST);
        }
    }

    /* renamed from: b */
    public String m3704b(ContentResolver contentResolver, Uri uri) {
        C1038r m3700a = m3700a(contentResolver, uri);
        String hexString = Long.toHexString(System.nanoTime() / 1000);
        this.f3582c.put(hexString, m3700a);
        return "http://127.0.0.1:" + m2710e() + "/video/" + URLEncoder.encode(hexString) + "/" + m3700a.f3589c;
    }

    @Override // com.alensw.p023b.p028e.C0683j
    /* renamed from: b */
    protected void mo2706b(String str, Map map, HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) {
        if (str.startsWith("/request")) {
            m3701a(str, map, httpRequest, httpResponse);
        } else if (str.startsWith("/finish")) {
            httpResponse.setStatusCode(HttpStatus.SC_OK);
        } else {
            httpResponse.setStatusCode(HttpStatus.SC_BAD_REQUEST);
        }
    }
}
