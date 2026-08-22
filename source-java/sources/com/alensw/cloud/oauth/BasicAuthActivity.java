package com.alensw.cloud.oauth;

import android.R;
import android.content.ContentValues;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.alensw.cloud.EnumC0963z;
import com.alensw.cloud.p036a.AbstractC0808bv;
import com.alensw.cloud.p036a.C0812bz;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;
import com.alensw.p038ui.p039a.C1071f;
import java.io.FileNotFoundException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.auth.BasicScheme;
import p000a.p006d.C0130j;

/* loaded from: classes.dex */
public class BasicAuthActivity extends ActivityC0907e {

    /* renamed from: d */
    private EditText f3182d;

    /* renamed from: e */
    private EditText f3183e;

    /* renamed from: f */
    private EditText f3184f;

    /* renamed from: g */
    private Button f3185g;

    /* renamed from: i */
    private volatile boolean f3187i;

    /* renamed from: h */
    private final ConcurrentHashMap f3186h = new ConcurrentHashMap();

    /* renamed from: j */
    private InterfaceC0679f f3188j = new C0913k(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public C0889a m3320a(URL url, String str, String str2) {
        String value = BasicScheme.authenticate((Credentials) new UsernamePasswordCredentials(str, str2), "US-ASCII", false).getValue();
        if (value.startsWith("Basic ")) {
            value = value.substring(6);
        }
        String host = url.getHost();
        C0889a c0889a = new C0889a();
        c0889a.f3190a = this.f3234a.m3379d();
        c0889a.f3191b = str + '@' + host + url.getPath();
        c0889a.f3193d = url.toString();
        c0889a.f3196g.f3229a = value;
        c0889a.f3196g.f3230b = str2;
        c0889a.f3196g.f3232d = this.f3186h.containsKey(host) ? -1L : 0L;
        return c0889a;
    }

    /* renamed from: a */
    private static String m3322a(EnumC0963z enumC0963z, String str) {
        int lastIndexOf;
        if (enumC0963z == EnumC0963z.SAMBA) {
            while (str.length() > 0 && str.charAt(0) == '\\') {
                str = str.substring(1);
            }
            str = str.replaceAll("\\\\", "/");
        } else if (enumC0963z == EnumC0963z.OWNCLOUD && (lastIndexOf = str.lastIndexOf("remote.php/webdav")) > 0) {
            str = str.substring(0, lastIndexOf);
        }
        return (str.length() <= 0 || str.charAt(str.length() + (-1)) == '/') ? str : str + '/';
    }

    /* renamed from: a */
    private String m3323a(String str, boolean z) {
        String[] strArr = new String[1];
        C0675b.m2668a(str, HttpGet.METHOD_NAME, (Map) null, new C0919q(this, this.f3188j, z, strArr));
        return strArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public String m3324a(URL url) {
        String url2 = url.toString();
        if (url2.charAt(url2.length() - 1) != '/') {
            url2 = url2 + '/';
        }
        String str = url2 + "status.php";
        String host = url.getHost();
        boolean containsKey = this.f3186h.containsKey(host);
        try {
            return m3323a(str, containsKey);
        } catch (SSLException e) {
            if (containsKey) {
                throw e;
            }
            if (!this.f3187i) {
                runOnUiThread(new RunnableC0918p(this, host, e));
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3328a(Exception exc) {
        if (exc instanceof UnknownHostException) {
            m3330a("httpErrorBadUrl", "Unknown host!");
            return;
        }
        if (exc instanceof FileNotFoundException) {
            m3330a("httpErrorFileNotFound", "Server not found!");
            return;
        }
        if (exc instanceof SocketTimeoutException) {
            m3330a("httpErrorTimeout", exc.getMessage());
            return;
        }
        if (exc instanceof SSLHandshakeException) {
            m3330a("httpErrorFailedSslHandshake", exc.getMessage());
        } else if (exc instanceof C0812bz) {
            m3330a("httpErrorAuth", "Could not authenticate.");
        } else {
            C0742b.m2977a(this, exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3329a(String str, Exception exc) {
        C1071f.m3739a(this, R.string.dialog_alert_title, "The server certificate is not trusted.\n\nAlways trust this certificate?", new RunnableC0920r(this, str), (Runnable) null);
    }

    /* renamed from: a */
    private void m3330a(String str, String str2) {
        C0742b.m2998c(this, C0742b.m2971a(getResources(), str, str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3333b() {
        URL url = null;
        EnumC0963z m3379d = this.f3234a.m3379d();
        String m3322a = m3322a(m3379d, this.f3182d.getText().toString());
        if (m3322a.length() == 0) {
            this.f3182d.requestFocus();
            return;
        }
        this.f3182d.setText(m3322a);
        String obj = this.f3183e.getText().toString();
        if (obj.length() == 0 && m3379d == EnumC0963z.SAMBA) {
            obj = "guest";
            this.f3183e.setText("guest");
        }
        if (obj.length() == 0) {
            this.f3183e.requestFocus();
            return;
        }
        String obj2 = this.f3184f.getText().toString();
        try {
            url = m3379d == EnumC0963z.SAMBA ? new URL((URL) null, m3322a, C0130j.f614a) : new URL(m3322a);
        } catch (MalformedURLException e) {
            try {
                url = m3379d == EnumC0963z.SAMBA ? new URL((URL) null, "smb://" + m3322a, C0130j.f614a) : new URL("http://" + m3322a);
            } catch (MalformedURLException e2) {
                e2.printStackTrace();
            }
        }
        if (url == null) {
            this.f3182d.requestFocus();
            return;
        }
        m3824i(true);
        this.f3185g.setEnabled(false);
        this.f3187i = false;
        AbstractProgressDialogC1062ao.f3641d.submit(new RunnableC0916n(this, m3379d, url, obj, obj2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3334b(C0889a c0889a) {
        AbstractC0808bv m3235a = AbstractC0808bv.m3235a(this, c0889a);
        ContentValues mo3141a = m3235a.mo3141a();
        m3235a.mo3148a(mo3141a.getAsString("document_id"), mo3141a, this.f3188j);
    }

    @Override // com.alensw.cloud.oauth.ActivityC0907e, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(com.alensw.PicFolder.R.layout.login_server);
        m3820g(true);
        getWindow().setSoftInputMode(16);
        Resources resources = getResources();
        this.f3182d = (EditText) findViewById(com.alensw.PicFolder.R.id.server);
        this.f3183e = (EditText) findViewById(com.alensw.PicFolder.R.id.username);
        this.f3184f = (EditText) findViewById(com.alensw.PicFolder.R.id.password);
        this.f3182d.setHint(this.f3234a.m3379d() == EnumC0963z.OWNCLOUD ? "http(s)://example.com/owncloud" : "(domain;)server/(path)");
        String stringExtra = getIntent().getStringExtra("server");
        if (stringExtra != null && stringExtra.length() > 0) {
            this.f3182d.setText(stringExtra);
            this.f3183e.requestFocus();
        }
        String m2971a = C0742b.m2971a(resources, "lockscreen_glogin_username_hint", "Username");
        int indexOf = m2971a.indexOf(40);
        if (indexOf < 0) {
            indexOf = m2971a.indexOf(65288);
        }
        if (indexOf > 0) {
            m2971a = m2971a.substring(0, indexOf);
        }
        this.f3183e.setHint(m2971a);
        this.f3184f.setHint(C0742b.m2971a(resources, "lockscreen_glogin_password_hint", "Password"));
        this.f3184f.setOnEditorActionListener(new C0914l(this));
        this.f3185g = (Button) findViewById(com.alensw.PicFolder.R.id.submit);
        String m2971a2 = C0742b.m2971a(resources, "lockscreen_glogin_submit_button", (String) null);
        if (m2971a2 != null) {
            this.f3185g.setText(m2971a2);
        }
        if (Build.VERSION.SDK_INT < 11) {
            this.f3185g.setBackgroundResource(com.alensw.PicFolder.R.drawable.item_background);
            this.f3185g.setTextColor(this.f3746Y);
            this.f3185g.setTextSize(16.0f);
        }
        this.f3185g.setOnClickListener(new ViewOnClickListenerC0915m(this));
        TextView textView = (TextView) findViewById(com.alensw.PicFolder.R.id.link);
        textView.setMovementMethod(LinkMovementMethod.getInstance());
        if (this.f3234a.m3379d() == EnumC0963z.OWNCLOUD) {
            textView.setText("http://owncloud.org");
        } else {
            textView.setVisibility(8);
        }
    }

    @Override // com.alensw.cloud.oauth.ActivityC0907e, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onDestroy() {
        this.f3187i = true;
        super.onDestroy();
    }
}
