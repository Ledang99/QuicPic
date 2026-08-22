package com.alensw.p023b.p028e;

import android.util.Log;
import java.io.InputStream;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import org.apache.http.Header;
import org.apache.http.HttpHeaders;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.RequestLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.DefaultHttpResponseFactory;
import org.apache.http.impl.DefaultHttpServerConnection;
import org.apache.http.message.BasicStatusLine;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.BasicHttpProcessor;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpRequestHandlerRegistry;
import org.apache.http.protocol.HttpService;
import org.apache.http.protocol.ResponseConnControl;
import org.apache.http.protocol.ResponseContent;
import org.apache.http.protocol.ResponseDate;
import org.apache.http.protocol.ResponseServer;

/* renamed from: com.alensw.b.e.j */
/* loaded from: classes.dex */
public class C0683j {

    /* renamed from: a */
    private ServerSocket f2579a;

    /* renamed from: b */
    private Thread f2580b;

    /* renamed from: c */
    private final int f2581c;

    /* renamed from: d */
    private final HttpService f2582d;

    /* renamed from: e */
    private final HttpParams f2583e;

    public C0683j(int i) {
        BasicHttpProcessor basicHttpProcessor = new BasicHttpProcessor();
        basicHttpProcessor.addInterceptor(new ResponseDate());
        basicHttpProcessor.addInterceptor(new ResponseServer());
        basicHttpProcessor.addInterceptor(new ResponseContent());
        basicHttpProcessor.addInterceptor(new ResponseConnControl());
        this.f2583e = new BasicHttpParams();
        this.f2583e.setIntParameter(CoreConnectionPNames.SO_TIMEOUT, 15000);
        this.f2583e.setIntParameter(CoreConnectionPNames.SOCKET_BUFFER_SIZE, 16384);
        this.f2583e.setBooleanParameter(CoreConnectionPNames.STALE_CONNECTION_CHECK, false);
        this.f2583e.setBooleanParameter(CoreConnectionPNames.TCP_NODELAY, true);
        HttpRequestHandlerRegistry httpRequestHandlerRegistry = new HttpRequestHandlerRegistry();
        m2705a(httpRequestHandlerRegistry);
        this.f2581c = i;
        this.f2582d = new HttpService(basicHttpProcessor, new DefaultConnectionReuseStrategy(), new DefaultHttpResponseFactory());
        this.f2582d.setHandlerResolver(httpRequestHandlerRegistry);
        this.f2582d.setParams(this.f2583e);
    }

    /* renamed from: a */
    public static String m2693a(Header header) {
        if (header != null) {
            return header.getValue();
        }
        return null;
    }

    /* renamed from: a */
    public static String m2694a(HttpRequest httpRequest, String str) {
        return m2693a(httpRequest.getFirstHeader(str));
    }

    /* renamed from: a */
    public static InputStreamEntity m2696a(InputStream inputStream, long j) {
        return new C0686m(inputStream, j);
    }

    /* renamed from: a */
    public static void m2697a(C0682i c0682i, long j, String str, HttpResponse httpResponse) {
        long j2;
        int indexOf;
        long j3 = -1;
        if (str == null || !str.startsWith("bytes=") || (indexOf = (str = str.substring("bytes=".length())).indexOf(45)) <= 0) {
            j2 = 0;
        } else {
            try {
                j2 = Long.parseLong(str.substring(0, indexOf));
                try {
                    j3 = Long.parseLong(str.substring(indexOf + 1));
                } catch (NumberFormatException e) {
                }
            } catch (NumberFormatException e2) {
                j2 = 0;
            }
        }
        Log.d("HttpServer", "range=" + str + "/" + j);
        httpResponse.addHeader(HttpHeaders.ACCEPT_RANGES, "bytes");
        httpResponse.addHeader("Content-Type", c0682i.f2576c);
        if (str == null || j2 < 0) {
            httpResponse.setEntity(m2696a(c0682i.f2578e, j));
            httpResponse.setStatusCode(HttpStatus.SC_OK);
            return;
        }
        if (j2 >= j) {
            httpResponse.addHeader(HttpHeaders.CONTENT_RANGE, "bytes 0-0/" + j);
            httpResponse.setStatusCode(HttpStatus.SC_REQUESTED_RANGE_NOT_SATISFIABLE);
            return;
        }
        long j4 = c0682i.f2574a;
        if (j4 <= 0) {
            j4 = j - j2;
        }
        if (j3 < 0) {
            j3 = (j2 + j4) - 1;
        }
        httpResponse.addHeader(HttpHeaders.CONTENT_RANGE, "bytes " + j2 + "-" + j3 + "/" + j);
        httpResponse.setEntity(m2696a(c0682i.f2578e, j4));
        httpResponse.setStatusCode(HttpStatus.SC_PARTIAL_CONTENT);
    }

    /* renamed from: a */
    protected static void m2698a(String str, Map map) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, "&");
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            int indexOf = nextToken.indexOf(61);
            if (indexOf >= 0) {
                map.put(URLDecoder.decode(nextToken.substring(0, indexOf)).trim(), URLDecoder.decode(nextToken.substring(indexOf + 1)));
            } else {
                map.put(URLDecoder.decode(nextToken).trim(), "");
            }
        }
    }

    /* renamed from: a */
    public static void m2699a(HttpRequest httpRequest, HttpResponse httpResponse, int i, String str) {
        if (str != null) {
            httpResponse.setStatusLine(new BasicStatusLine(httpRequest.getProtocolVersion(), i, str));
        } else {
            httpResponse.setStatusCode(i);
        }
    }

    /* renamed from: b */
    public static String m2700b(String str, Map map) {
        int indexOf = str.indexOf(63);
        if (indexOf < 0) {
            return URLDecoder.decode(str);
        }
        m2698a(str.substring(indexOf + 1), map);
        return URLDecoder.decode(str.substring(0, indexOf));
    }

    /* renamed from: a */
    protected void mo2702a(String str, Map map, HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) {
    }

    /* renamed from: a */
    protected void m2703a(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) {
        RequestLine requestLine = httpRequest.getRequestLine();
        HashMap hashMap = new HashMap(5);
        String m2700b = m2700b(requestLine.getUri(), hashMap);
        String method = requestLine.getMethod();
        if (HttpGet.METHOD_NAME.equalsIgnoreCase(method)) {
            mo2702a(m2700b, hashMap, httpRequest, httpResponse, httpContext);
        } else if (HttpPost.METHOD_NAME.equalsIgnoreCase(method)) {
            mo2706b(m2700b, hashMap, httpRequest, httpResponse, httpContext);
        } else {
            Log.w("HttpServer", "don't handle: " + method);
        }
    }

    /* renamed from: a */
    protected void m2704a(DefaultHttpServerConnection defaultHttpServerConnection) {
        try {
            try {
                BasicHttpContext basicHttpContext = new BasicHttpContext();
                basicHttpContext.setAttribute("RemoteAddress", defaultHttpServerConnection.getRemoteAddress());
                while (defaultHttpServerConnection.isOpen() && !Thread.interrupted()) {
                    this.f2582d.handleRequest(defaultHttpServerConnection, basicHttpContext);
                }
                try {
                    defaultHttpServerConnection.close();
                } catch (Exception e) {
                    Log.e("HttpServer", "close connection: ", e);
                }
            } finally {
                try {
                    defaultHttpServerConnection.close();
                } catch (Exception e2) {
                    Log.e("HttpServer", "close connection: ", e2);
                }
            }
        } catch (SocketException e3) {
            Log.w("HttpServer", "socket exception");
        } catch (SocketTimeoutException e4) {
            Log.w("HttpServer", "socket timeout");
            try {
                defaultHttpServerConnection.close();
            } catch (Exception e5) {
                Log.e("HttpServer", "close connection: ", e5);
            }
        } catch (Exception e6) {
            Log.e("HttpServer", "handle request: ", e6);
            try {
                defaultHttpServerConnection.close();
            } catch (Exception e7) {
                Log.e("HttpServer", "close connection: ", e7);
            }
        }
    }

    /* renamed from: a */
    protected void m2705a(HttpRequestHandlerRegistry httpRequestHandlerRegistry) {
        httpRequestHandlerRegistry.register("*", new C0685l(this));
    }

    /* renamed from: b */
    protected void mo2706b(String str, Map map, HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) {
    }

    /* renamed from: b */
    protected void m2707b(DefaultHttpServerConnection defaultHttpServerConnection) {
        new C0684k(this, defaultHttpServerConnection).start();
    }

    /* renamed from: c */
    public void m2708c() {
        if (this.f2580b == null) {
            try {
                this.f2579a = new ServerSocket();
                this.f2579a.bind(new InetSocketAddress(this.f2581c));
                this.f2580b = new C0687n(this);
                this.f2580b.setDaemon(true);
                this.f2580b.start();
            } catch (Exception e) {
                Log.e("HttpServer", "start: ", e);
            }
        }
    }

    /* renamed from: d */
    public void m2709d() {
        if (this.f2579a != null) {
            try {
                this.f2579a.close();
            } catch (Exception e) {
                Log.e("HttpServer", "close socket: ", e);
            }
        }
        if (this.f2580b != null) {
            try {
                this.f2580b.join();
                this.f2580b = null;
                this.f2579a = null;
            } catch (Exception e2) {
                Log.e("HttpServer", "stop: ", e2);
            }
        }
    }

    /* renamed from: e */
    public int m2710e() {
        ServerSocket serverSocket = this.f2579a;
        if (serverSocket != null) {
            return serverSocket.getLocalPort();
        }
        return 0;
    }

    /* renamed from: f */
    public boolean m2711f() {
        ServerSocket serverSocket = this.f2579a;
        Thread thread = this.f2580b;
        return (serverSocket == null || serverSocket.isClosed() || thread == null || !thread.isAlive()) ? false : true;
    }
}
