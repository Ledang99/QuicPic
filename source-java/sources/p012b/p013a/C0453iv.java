package p012b.p013a;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import com.p045c.p046a.C1398a;
import com.p045c.p046a.C1411k;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.params.ConnRoutePNames;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

/* renamed from: b.a.iv */
/* loaded from: classes.dex */
public class C0453iv {

    /* renamed from: a */
    private String f1609a;

    /* renamed from: b */
    private String f1610b = "10.0.0.172";

    /* renamed from: c */
    private int f1611c = 80;

    /* renamed from: d */
    private Context f1612d;

    /* renamed from: e */
    private InterfaceC0451it f1613e;

    public C0453iv(Context context) {
        this.f1612d = context;
        this.f1609a = m1503a(context);
    }

    /* renamed from: a */
    private String m1503a(Context context) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Android");
        stringBuffer.append("/");
        stringBuffer.append("5.5.3");
        stringBuffer.append(" ");
        try {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(C0381gd.m1276p(context));
            stringBuffer2.append("/");
            stringBuffer2.append(C0381gd.m1262b(context));
            stringBuffer2.append(" ");
            stringBuffer2.append(Build.MODEL);
            stringBuffer2.append("/");
            stringBuffer2.append(Build.VERSION.RELEASE);
            stringBuffer2.append(" ");
            stringBuffer2.append(C0385gh.m1300a(C1398a.m4565a(context)));
            stringBuffer.append(URLEncoder.encode(stringBuffer2.toString(), "UTF-8"));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x004a, code lost:
    
        if (r0.equals("uniwap") != false) goto L18;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean m1504a() {
        String extraInfo;
        if (this.f1612d.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", this.f1612d.getPackageName()) != 0) {
            return false;
        }
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f1612d.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.getType() != 1 && (extraInfo = activeNetworkInfo.getExtraInfo()) != null) {
                if (!extraInfo.equals("cmwap") && !extraInfo.equals("3gwap")) {
                }
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    /* renamed from: a */
    private byte[] m1505a(byte[] bArr, String str) {
        HttpPost httpPost = new HttpPost(str);
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, 10000);
        HttpConnectionParams.setSoTimeout(basicHttpParams, 30000);
        DefaultHttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
        httpPost.addHeader("X-Umeng-UTC", String.valueOf(System.currentTimeMillis()));
        httpPost.addHeader("X-Umeng-Sdk", this.f1609a);
        httpPost.addHeader("Msg-Type", "envelope");
        try {
            if (m1504a()) {
                defaultHttpClient.getParams().setParameter(ConnRoutePNames.DEFAULT_PROXY, new HttpHost(this.f1610b, this.f1611c));
            }
            httpPost.setEntity(new InputStreamEntity(new ByteArrayInputStream(bArr), bArr.length));
            if (this.f1613e != null) {
                this.f1613e.mo762k();
            }
            HttpResponse execute = defaultHttpClient.execute((HttpUriRequest) httpPost);
            if (this.f1613e != null) {
                this.f1613e.mo763l();
            }
            int statusCode = execute.getStatusLine().getStatusCode();
            boolean m1303a = C0385gh.m1303a(execute.getFirstHeader("Content-Type"), "application/thrift");
            C0382ge.m1283c("MobclickAgent", "status code : " + statusCode);
            if (statusCode != 200 || !m1303a) {
                return null;
            }
            C0382ge.m1279a("MobclickAgent", "Send message to " + str);
            HttpEntity entity = execute.getEntity();
            if (entity == null) {
                return null;
            }
            InputStream content = entity.getContent();
            try {
                return C0385gh.m1305b(content);
            } finally {
                C0385gh.m1306c(content);
            }
        } catch (ClientProtocolException e) {
            C0382ge.m1282b("MobclickAgent", "ClientProtocolException,Failed to send message.", e);
            return null;
        } catch (IOException e2) {
            C0382ge.m1282b("MobclickAgent", "IOException,Failed to send message.", e2);
            return null;
        }
    }

    /* renamed from: a */
    public void m1506a(InterfaceC0451it interfaceC0451it) {
        this.f1613e = interfaceC0451it;
    }

    /* renamed from: a */
    public byte[] m1507a(byte[] bArr) {
        byte[] bArr2 = null;
        int i = 0;
        while (true) {
            if (i >= C1411k.f4984a.length) {
                break;
            }
            bArr2 = m1505a(bArr, C1411k.f4984a[i]);
            if (bArr2 == null) {
                if (this.f1613e != null) {
                    this.f1613e.mo765n();
                }
                i++;
            } else if (this.f1613e != null) {
                this.f1613e.mo764m();
            }
        }
        return bArr2;
    }
}
