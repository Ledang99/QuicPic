package p000a.p006d;

import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;

/* renamed from: a.d.j */
/* loaded from: classes.dex */
public class C0130j extends URLStreamHandler {

    /* renamed from: a */
    public static final URLStreamHandler f614a = new C0130j();

    @Override // java.net.URLStreamHandler
    protected int getDefaultPort() {
        return 445;
    }

    @Override // java.net.URLStreamHandler
    public URLConnection openConnection(URL url) {
        return new C0085bd(url);
    }

    @Override // java.net.URLStreamHandler
    protected void parseURL(URL url, String str, int i, int i2) {
        String host = url.getHost();
        if (str.equals("smb://")) {
            str = "smb:////";
            i2 += 2;
        } else if (!str.startsWith("smb://") && host != null && host.length() == 0) {
            str = "//" + str;
            i2 += 2;
        }
        super.parseURL(url, str, i, i2);
        String path = url.getPath();
        String ref = url.getRef();
        if (ref != null) {
            path = path + '#' + ref;
        }
        int port = url.getPort();
        if (port == -1) {
            port = getDefaultPort();
        }
        setURL(url, "smb", url.getHost(), port, url.getAuthority(), url.getUserInfo(), path, url.getQuery(), null);
    }
}
