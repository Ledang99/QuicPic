package com.alensw.p023b.p028e;

import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Build;
import android.util.Log;
import com.alensw.p023b.p029f.C0691d;
import com.alensw.p023b.p035l.C0742b;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.X509TrustManager;
import org.apache.http.HttpHeaders;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.cookie.InterfaceC1465SM;
import org.apache.http.protocol.HTTP;

/* renamed from: com.alensw.b.e.b */
/* loaded from: classes.dex */
public class C0675b {

    /* renamed from: a */
    private static SSLContext f2568a;

    /* renamed from: a */
    public static int m2650a(Context context) {
        try {
            return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo().getType();
        } catch (Throwable th) {
            return -1;
        }
    }

    /* renamed from: a */
    public static long m2651a(InputStream inputStream, OutputStream outputStream, long j, int i, InterfaceC0679f interfaceC0679f) {
        long j2 = 0;
        if (j <= 0) {
            j = inputStream.available();
        }
        InterfaceC0678e interfaceC0678e = (!(interfaceC0679f instanceof InterfaceC0678e) || j <= 0) ? null : (InterfaceC0678e) interfaceC0679f;
        byte[] bArr = new byte[i];
        while (true) {
            int read = inputStream.read(bArr);
            if (read < 0) {
                return j2;
            }
            if (read > 0) {
                outputStream.write(bArr, 0, read);
                j2 += read;
                if (interfaceC0678e != null) {
                    interfaceC0678e.mo2683a(j2, j);
                }
            }
            m2664a(interfaceC0679f);
        }
    }

    /* renamed from: a */
    public static long m2652a(InputStream inputStream, OutputStream outputStream, long j, InterfaceC0679f interfaceC0679f) {
        return m2651a(inputStream, outputStream, j, 16384, interfaceC0679f);
    }

    /* renamed from: a */
    public static InputStream m2653a(InputStream inputStream, String str) {
        return (inputStream != null && "gzip".equals(str)) ? new GZIPInputStream(inputStream, 16384) : inputStream;
    }

    /* renamed from: a */
    public static String m2654a(Context context, int i) {
        if (i == 0) {
            try {
                i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
            } catch (Throwable th) {
            }
        }
        return String.format("QuickPic/%d/%s (Android %s; %s; %s; Build/%s)", Integer.valueOf(i), C0691d.m2727a(C0742b.m2996c(context)), Build.VERSION.RELEASE, context.getResources().getConfiguration().locale.toString(), Build.MODEL, Build.ID);
    }

    /* renamed from: a */
    public static String m2655a(InputStream inputStream, String str, long j, InterfaceC0679f interfaceC0679f) {
        ByteArrayOutputStream byteArrayOutputStream;
        if (inputStream == null) {
            return "";
        }
        try {
            byteArrayOutputStream = new ByteArrayOutputStream(262144);
            try {
                m2652a(inputStream, byteArrayOutputStream, j, interfaceC0679f);
                String str2 = new String(byteArrayOutputStream.toByteArray(), str);
                m2665a(byteArrayOutputStream);
                return str2;
            } catch (Throwable th) {
                th = th;
                m2665a(byteArrayOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            byteArrayOutputStream = null;
        }
    }

    /* renamed from: a */
    public static String m2656a(InputStream inputStream, String str, InterfaceC0679f interfaceC0679f) {
        return m2655a(inputStream, str, -1L, interfaceC0679f);
    }

    /* renamed from: a */
    public static String m2657a(String str) {
        if (str != null) {
            String[] split = str.split(";");
            for (int i = 1; i < split.length; i++) {
                String[] split2 = split[i].trim().split("=");
                if (split2.length == 2 && split2[0].equals("charset")) {
                    return split2[1];
                }
            }
        }
        return "UTF-8";
    }

    /* renamed from: a */
    public static String m2658a(String str, InterfaceC0679f interfaceC0679f) {
        return m2659a(str, (Map) null, interfaceC0679f);
    }

    /* renamed from: a */
    public static String m2659a(String str, Map map, InterfaceC0679f interfaceC0679f) {
        if (map == null) {
            map = new HashMap(1);
        }
        if (!map.containsKey(HttpHeaders.ACCEPT_ENCODING)) {
            map.put(HttpHeaders.ACCEPT_ENCODING, "gzip, identity");
        }
        HttpURLConnection httpURLConnection = null;
        try {
            httpURLConnection = m2662a(str, HttpGet.METHOD_NAME, map);
            return m2660a(httpURLConnection, interfaceC0679f);
        } finally {
            m2670a(httpURLConnection);
        }
    }

    /* renamed from: a */
    public static String m2660a(HttpURLConnection httpURLConnection, InterfaceC0679f interfaceC0679f) {
        InputStream inputStream = null;
        try {
            inputStream = m2679b(httpURLConnection);
            m2664a(interfaceC0679f);
            return m2655a(inputStream, m2657a(httpURLConnection.getContentType()), httpURLConnection.getContentLength(), interfaceC0679f);
        } finally {
            m2665a(inputStream);
        }
    }

    /* renamed from: a */
    public static HttpURLConnection m2661a(String str, String str2) {
        HttpURLConnection m2662a = m2662a(str, str2, (Map) null);
        m2662a.setRequestProperty(HttpHeaders.ACCEPT_ENCODING, "gzip, identity");
        return m2662a;
    }

    /* renamed from: a */
    public static HttpURLConnection m2662a(String str, String str2, Map map) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setReadTimeout(60000);
        m2672a(httpURLConnection, str2);
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
        }
        return httpURLConnection;
    }

    /* renamed from: a */
    public static void m2663a() {
        if (Build.VERSION.SDK_INT < 8) {
            System.setProperty("http.keepAlive", "false");
        }
    }

    /* renamed from: a */
    public static void m2664a(InterfaceC0679f interfaceC0679f) {
        if (interfaceC0679f != null && interfaceC0679f.mo2081b_()) {
            throw new C0674a();
        }
    }

    /* renamed from: a */
    public static void m2665a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                Log.e("HttpClient", "close: ", th);
            }
        }
    }

    /* renamed from: a */
    public static void m2666a(String str, String str2, InterfaceC0679f interfaceC0679f) {
        m2667a(str, str2, (Map) null, interfaceC0679f);
    }

    /* renamed from: a */
    public static void m2667a(String str, String str2, Map map, InterfaceC0679f interfaceC0679f) {
        if (map == null) {
            map = new HashMap(1);
        }
        if (!map.containsKey(HttpHeaders.ACCEPT_ENCODING)) {
            map.put(HttpHeaders.ACCEPT_ENCODING, HTTP.IDENTITY_CODING);
        }
        int i = 5;
        do {
            HttpURLConnection httpURLConnection = null;
            try {
                httpURLConnection = m2662a(str2, HttpGet.METHOD_NAME, map);
                httpURLConnection.setInstanceFollowRedirects(false);
                int responseCode = httpURLConnection.getResponseCode();
                m2664a(interfaceC0679f);
                if (responseCode != 302 || (str2 = httpURLConnection.getHeaderField(HttpHeaders.LOCATION)) == null) {
                    m2669a(str, httpURLConnection, interfaceC0679f);
                    return;
                } else {
                    m2670a(httpURLConnection);
                    i--;
                }
            } finally {
                m2670a(httpURLConnection);
            }
        } while (i > 0);
    }

    /* renamed from: a */
    public static void m2668a(String str, String str2, Map map, C0680g c0680g) {
        HttpURLConnection httpURLConnection;
        int responseCode;
        int i = 5;
        String str3 = null;
        while (true) {
            if (map == null) {
                try {
                    map = new HashMap(1);
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection = null;
                    c0680g.mo2692b(httpURLConnection);
                    throw th;
                }
            }
            if (!map.containsKey(HttpHeaders.ACCEPT_ENCODING)) {
                map.put(HttpHeaders.ACCEPT_ENCODING, c0680g.f2570j ? "gzip, identity" : HTTP.IDENTITY_CODING);
            }
            httpURLConnection = m2662a(str, str2, map);
            try {
                httpURLConnection.setInstanceFollowRedirects(false);
                if (str3 != null) {
                    int indexOf = str3.indexOf(59);
                    if (indexOf != -1) {
                        str3 = str3.substring(0, indexOf);
                    }
                    httpURLConnection.setRequestProperty(InterfaceC1465SM.COOKIE, str3);
                }
                if (httpURLConnection instanceof HttpsURLConnection) {
                    c0680g.mo2690a((HttpsURLConnection) httpURLConnection);
                }
                if (HttpPost.METHOD_NAME.equals(str2) || HttpPut.METHOD_NAME.equals(str2) || HttpDelete.METHOD_NAME.equals(str2) || "MOVE".equals(str2)) {
                    c0680g.mo2688a(httpURLConnection);
                }
                try {
                    responseCode = httpURLConnection.getResponseCode();
                } catch (IOException e) {
                    String message = e.getMessage();
                    if (message == null || !message.contains("authentication challenge")) {
                        throw e;
                    }
                    responseCode = httpURLConnection.getResponseCode();
                }
                if ((responseCode == 302 || responseCode == 301 || responseCode == 303) && (str = httpURLConnection.getHeaderField(HttpHeaders.LOCATION)) != null) {
                    str3 = httpURLConnection.getHeaderField(InterfaceC1465SM.SET_COOKIE);
                    if (!c0680g.m2691a(httpURLConnection, str)) {
                        break;
                    }
                    c0680g.mo2692b(httpURLConnection);
                    int i2 = i - 1;
                    if (i2 <= 0) {
                        throw new UnknownHostException("HTTP error or redirect too many times");
                    }
                    i = i2;
                }
            } catch (Throwable th2) {
                th = th2;
                c0680g.mo2692b(httpURLConnection);
                throw th;
            }
        }
        c0680g.mo2689a(httpURLConnection, responseCode);
        c0680g.mo2692b(httpURLConnection);
    }

    /* renamed from: a */
    public static void m2669a(String str, HttpURLConnection httpURLConnection, InterfaceC0679f interfaceC0679f) {
        FileOutputStream fileOutputStream;
        InputStream inputStream = null;
        try {
            InputStream m2679b = m2679b(httpURLConnection);
            try {
                m2664a(interfaceC0679f);
                fileOutputStream = new FileOutputStream(str);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = null;
                inputStream = m2679b;
            }
            try {
                m2652a(m2679b, fileOutputStream, httpURLConnection.getContentLength(), interfaceC0679f);
                m2665a(fileOutputStream);
                m2665a(m2679b);
            } catch (Throwable th2) {
                th = th2;
                inputStream = m2679b;
                m2665a(fileOutputStream);
                m2665a(inputStream);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }

    /* renamed from: a */
    public static void m2670a(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Throwable th) {
                Log.e("HttpClient", "disconnect: ", th);
            }
        }
    }

    /* renamed from: a */
    public static void m2671a(HttpURLConnection httpURLConnection, long j) {
        Class<?> cls = httpURLConnection.getClass();
        try {
            Field declaredField = cls.getDeclaredField("delegate");
            declaredField.setAccessible(true);
            m2671a((HttpURLConnection) declaredField.get(httpURLConnection), j);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (IllegalArgumentException e2) {
            throw new RuntimeException(e2);
        } catch (NoSuchFieldException e3) {
            try {
                Field declaredField2 = cls.getDeclaredField("httpsEngine");
                declaredField2.setAccessible(true);
                m2671a((HttpURLConnection) declaredField2.get(httpURLConnection), j);
            } catch (Exception e4) {
            }
        }
        httpURLConnection.setRequestProperty("Content-Length", Long.toString(j));
        if (Build.VERSION.SDK_INT >= 19) {
            httpURLConnection.setFixedLengthStreamingMode(j);
        } else if (j <= 2147483647L) {
            httpURLConnection.setFixedLengthStreamingMode((int) j);
        }
    }

    /* renamed from: a */
    public static void m2672a(HttpURLConnection httpURLConnection, String str) {
        Class<?> cls;
        try {
            httpURLConnection.setRequestMethod(str);
        } catch (ProtocolException e) {
            Class<?> cls2 = httpURLConnection.getClass();
            try {
                Field declaredField = cls2.getDeclaredField("delegate");
                declaredField.setAccessible(true);
                m2672a((HttpURLConnection) declaredField.get(httpURLConnection), str);
                cls = cls2;
            } catch (IllegalAccessException e2) {
                throw new RuntimeException(e2);
            } catch (IllegalArgumentException e3) {
                throw new RuntimeException(e3);
            } catch (NoSuchFieldException e4) {
                try {
                    Field declaredField2 = cls2.getDeclaredField("httpsEngine");
                    declaredField2.setAccessible(true);
                    m2672a((HttpURLConnection) declaredField2.get(httpURLConnection), str);
                } catch (Exception e5) {
                }
                cls = cls2;
            }
            while (cls != null) {
                try {
                    Field declaredField3 = cls.getDeclaredField("method");
                    declaredField3.setAccessible(true);
                    declaredField3.set(httpURLConnection, str);
                    return;
                } catch (NoSuchFieldException e6) {
                    cls = cls.getSuperclass();
                } catch (Exception e7) {
                    throw new RuntimeException(e7);
                }
            }
        }
    }

    /* renamed from: a */
    public static void m2673a(HttpURLConnection httpURLConnection, String str, int i, long j, long j2, InputStream inputStream, InterfaceC0679f interfaceC0679f) {
        int read;
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestProperty("Content-Type", str);
        m2671a(httpURLConnection, i > inputStream.available() ? inputStream.available() : i);
        httpURLConnection.connect();
        OutputStream outputStream = httpURLConnection.getOutputStream();
        InterfaceC0678e interfaceC0678e = (!(interfaceC0679f instanceof InterfaceC0678e) || j2 <= 0) ? null : (InterfaceC0678e) interfaceC0679f;
        byte[] bArr = new byte[16384];
        int i2 = 0;
        long j3 = j;
        while (i2 < 640 && (read = inputStream.read(bArr)) >= 0) {
            i2++;
            if (read > 0) {
                outputStream.write(bArr, 0, read);
                j3 += read;
                if (interfaceC0678e != null) {
                    interfaceC0678e.mo2683a(j3, j2);
                }
            }
            m2664a(interfaceC0679f);
        }
        outputStream.flush();
        outputStream.close();
    }

    /* renamed from: a */
    public static void m2674a(HttpURLConnection httpURLConnection, String str, InterfaceC0679f interfaceC0679f, List list) {
        m2675a(httpURLConnection, str, interfaceC0679f, (C0681h[]) list.toArray(new C0681h[list.size()]));
    }

    /* renamed from: a */
    public static void m2675a(HttpURLConnection httpURLConnection, String str, InterfaceC0679f interfaceC0679f, C0681h... c0681hArr) {
        long length;
        if (c0681hArr == null || c0681hArr.length == 0) {
            throw new IllegalArgumentException();
        }
        long j = 0;
        for (C0681h c0681h : c0681hArr) {
            j += c0681h.f2571a + r6.f2573c.length + "\r\n".length();
        }
        long length2 = j + "--**BOUNDARY**FDBF587B**--\r\n".length();
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestProperty(HttpHeaders.ACCEPT_ENCODING, HTTP.IDENTITY_CODING);
        httpURLConnection.setRequestProperty("Content-Type", "multipart/" + str + ";boundary=**BOUNDARY**FDBF587B**");
        m2671a(httpURLConnection, length2);
        httpURLConnection.connect();
        InterfaceC0678e interfaceC0678e = interfaceC0679f instanceof InterfaceC0678e ? (InterfaceC0678e) interfaceC0679f : null;
        OutputStream outputStream = httpURLConnection.getOutputStream();
        long j2 = 0;
        int length3 = c0681hArr.length;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= length3) {
                outputStream.write("--**BOUNDARY**FDBF587B**--\r\n".getBytes());
                long length4 = j2 + "--**BOUNDARY**FDBF587B**--\r\n".length();
                outputStream.flush();
                outputStream.close();
                if (interfaceC0678e != null) {
                    interfaceC0678e.mo2683a(length4, length2);
                }
                if (length4 != length2) {
                    Log.w("HttpClient", "upload wrong bytes: " + length4 + "/" + length2);
                    return;
                }
                return;
            }
            C0681h c0681h2 = c0681hArr[i2];
            outputStream.write(c0681h2.f2573c);
            long length5 = c0681h2.f2573c.length + j2;
            if (interfaceC0678e != null) {
                interfaceC0678e.mo2683a(length5, length2);
            }
            m2664a(interfaceC0679f);
            Object obj = c0681h2.f2572b;
            if (obj instanceof ByteBuffer) {
                ByteBuffer byteBuffer = (ByteBuffer) obj;
                byte[] bArr = new byte[16384];
                long remaining = byteBuffer.remaining();
                long j3 = remaining / 16384;
                int i3 = (int) (remaining - (16384 * j3));
                long j4 = 0;
                length = length5;
                while (j4 < j3) {
                    byteBuffer.get(bArr);
                    outputStream.write(bArr);
                    long length6 = bArr.length + length;
                    if (interfaceC0678e != null) {
                        interfaceC0678e.mo2683a(length6, length2);
                    }
                    m2664a(interfaceC0679f);
                    j4 = 1 + j4;
                    length = length6;
                }
                if (i3 > 0) {
                    byteBuffer.get(bArr, 0, i3);
                    outputStream.write(bArr, 0, i3);
                    length += i3;
                }
            } else if (obj instanceof InputStream) {
                InputStream inputStream = (InputStream) obj;
                byte[] bArr2 = new byte[16384];
                length = length5;
                while (true) {
                    int read = inputStream.read(bArr2);
                    if (read < 0) {
                        break;
                    }
                    if (read > 0) {
                        outputStream.write(bArr2, 0, read);
                        length += read;
                        if (interfaceC0678e != null) {
                            interfaceC0678e.mo2683a(length, length2);
                        }
                    }
                    m2664a(interfaceC0679f);
                }
            } else {
                outputStream.write((byte[]) obj);
                length = r2.length + length5;
            }
            if (length - length5 < c0681h2.f2571a) {
                throw new RuntimeException("upload wrong bytes: " + (length - length5) + "/" + c0681h2.f2571a);
            }
            outputStream.write("\r\n".getBytes());
            j2 = length + "\r\n".length();
            i = i2 + 1;
        }
    }

    /* renamed from: a */
    public static void m2676a(HttpURLConnection httpURLConnection, String str, InputStream inputStream, InterfaceC0679f interfaceC0679f) {
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestProperty("Content-Type", str);
        int available = inputStream.available();
        m2671a(httpURLConnection, available);
        httpURLConnection.connect();
        OutputStream outputStream = httpURLConnection.getOutputStream();
        long m2652a = m2652a(inputStream, outputStream, available, interfaceC0679f);
        outputStream.flush();
        outputStream.close();
        if (m2652a < available) {
            throw new RuntimeException("upload wrong bytes: " + m2652a + "/" + available);
        }
        if (m2652a != available) {
            Log.w("HttpClient", "upload wrong bytes: " + m2652a + "/" + available);
        }
    }

    /* renamed from: a */
    public static void m2677a(HttpURLConnection httpURLConnection, String str, String str2) {
        byte[] bytes = str2.getBytes("UTF-8");
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setRequestProperty("Content-Type", str);
        httpURLConnection.setRequestProperty("Content-Length", String.valueOf(bytes.length));
        m2671a(httpURLConnection, bytes.length);
        OutputStream outputStream = httpURLConnection.getOutputStream();
        outputStream.write(bytes);
        outputStream.flush();
        outputStream.close();
    }

    /* renamed from: a */
    public static void m2678a(HttpsURLConnection httpsURLConnection) {
        httpsURLConnection.setHostnameVerifier(new C0677d());
        httpsURLConnection.setSSLSocketFactory(m2682b().getSocketFactory());
    }

    /* renamed from: b */
    public static InputStream m2679b(HttpURLConnection httpURLConnection) {
        return m2653a(httpURLConnection.getInputStream(), httpURLConnection.getContentEncoding());
    }

    /* renamed from: b */
    public static String m2680b(String str) {
        String str2 = "";
        if (str != null) {
            int indexOf = str.indexOf(";");
            if (indexOf > 0) {
                str = str.substring(0, indexOf);
            }
            str2 = str.toLowerCase().trim();
        }
        return str2.length() == 0 ? "*/*" : str2;
    }

    /* renamed from: b */
    public static String m2681b(HttpURLConnection httpURLConnection, InterfaceC0679f interfaceC0679f) {
        InputStream inputStream = null;
        try {
            inputStream = m2653a(httpURLConnection.getErrorStream(), httpURLConnection.getContentEncoding());
            m2664a(interfaceC0679f);
            return m2655a(inputStream, m2657a(httpURLConnection.getContentType()), httpURLConnection.getContentLength(), interfaceC0679f);
        } finally {
            m2665a(inputStream);
        }
    }

    /* renamed from: b */
    public static SSLContext m2682b() {
        SSLContext sSLContext;
        synchronized (C0675b.class) {
            if (f2568a == null) {
                C0676c c0676c = new C0676c();
                try {
                    SSLContext sSLContext2 = SSLContext.getInstance("TLS");
                    sSLContext2.init(null, new X509TrustManager[]{c0676c}, null);
                    f2568a = sSLContext2;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            sSLContext = f2568a;
        }
        return sSLContext;
    }
}
