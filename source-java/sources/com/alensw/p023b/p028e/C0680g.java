package com.alensw.p023b.p028e;

import android.os.Build;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.UnknownHostException;
import javax.net.ssl.HttpsURLConnection;

/* renamed from: com.alensw.b.e.g */
/* loaded from: classes.dex */
public class C0680g {

    /* renamed from: i */
    protected final InterfaceC0679f f2569i;

    /* renamed from: j */
    protected final boolean f2570j;

    public C0680g(InterfaceC0679f interfaceC0679f) {
        this(interfaceC0679f, true);
    }

    public C0680g(InterfaceC0679f interfaceC0679f, boolean z) {
        this.f2569i = interfaceC0679f;
        this.f2570j = z;
    }

    /* renamed from: a */
    protected void m2684a() {
        C0675b.m2664a(this.f2569i);
    }

    /* renamed from: a */
    public void mo2685a(int i, String str) {
        throw new ProtocolException(str);
    }

    /* renamed from: a */
    public void mo2686a(int i, String str, InputStream inputStream) {
        String str2;
        try {
            try {
                str2 = C0675b.m2656a(inputStream, str, this.f2569i);
            } catch (Throwable th) {
                Log.e("HttpClient", "Read error stream: ", th);
                C0675b.m2665a(inputStream);
                str2 = "";
            }
            if (i == 404) {
                throw new FileNotFoundException(str2);
            }
            mo2685a(i, str2);
        } finally {
            C0675b.m2665a(inputStream);
        }
    }

    /* renamed from: a */
    public void mo2687a(int i, String str, String str2, long j, InputStream inputStream) {
        Log.d("HttpClient", "default download");
        try {
            do {
            } while (inputStream.read(new byte[16384]) >= 0);
        } catch (Throwable th) {
            Log.e("HttpClient", "default download: ", th);
        } finally {
            C0675b.m2665a(inputStream);
        }
    }

    /* renamed from: a */
    public void mo2688a(HttpURLConnection httpURLConnection) {
        Log.d("HttpClient", "default upload");
        if (Build.VERSION.SDK_INT < 11) {
            httpURLConnection.setRequestProperty("Content-Length", "0");
        }
    }

    /* renamed from: a */
    public void mo2689a(HttpURLConnection httpURLConnection, int i) {
        if ((i < 300) && (i >= 200)) {
            String contentType = httpURLConnection.getContentType();
            mo2687a(i, C0675b.m2680b(contentType), C0675b.m2657a(contentType), httpURLConnection.getContentLength(), C0675b.m2679b(httpURLConnection));
        } else {
            if (i < 400 || i >= 500) {
                throw new UnknownHostException(Integer.toString(i) + " " + httpURLConnection.getResponseMessage());
            }
            mo2686a(i, C0675b.m2657a(httpURLConnection.getContentType()), C0675b.m2653a(httpURLConnection.getErrorStream(), httpURLConnection.getContentEncoding()));
        }
    }

    /* renamed from: a */
    public void mo2690a(HttpsURLConnection httpsURLConnection) {
    }

    /* renamed from: a */
    public boolean m2691a(HttpURLConnection httpURLConnection, String str) {
        return true;
    }

    /* renamed from: b */
    public void mo2692b(HttpURLConnection httpURLConnection) {
        C0675b.m2670a(httpURLConnection);
    }
}
