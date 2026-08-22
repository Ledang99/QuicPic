package p012b.p013a;

import android.content.Context;
import android.text.TextUtils;
import com.p045c.p046a.C1412l;
import com.p045c.p046a.C1420t;
import java.io.File;
import java.io.FileInputStream;
import java.nio.ByteBuffer;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

/* renamed from: b.a.id */
/* loaded from: classes.dex */
public class C0435id {

    /* renamed from: a */
    private static final byte[] f1558a = "pbl0".getBytes();

    /* renamed from: d */
    private static C0435id f1559d;

    /* renamed from: b */
    private InterfaceC0455ix f1560b;

    /* renamed from: c */
    private C0282cm f1561c = null;

    /* renamed from: e */
    private Context f1562e;

    C0435id(Context context) {
        this.f1562e = context;
    }

    /* renamed from: a */
    private int m1432a(String str) {
        C0282cm c0282cm = this.f1561c;
        if (c0282cm == null || !c0282cm.m892b()) {
            return -1;
        }
        C0289ct c0289ct = (C0289ct) c0282cm.m889a().get(str);
        if (c0289ct == null || TextUtils.isEmpty(c0289ct.m909a())) {
            return -1;
        }
        try {
            return Integer.parseInt(c0289ct.m909a().trim());
        } catch (Exception e) {
            return -1;
        }
    }

    /* renamed from: a */
    private C0282cm m1433a(C0282cm c0282cm, C0282cm c0282cm2) {
        if (c0282cm2 != null) {
            Map m889a = c0282cm.m889a();
            for (Map.Entry entry : c0282cm2.m889a().entrySet()) {
                if (((C0289ct) entry.getValue()).m912b()) {
                    m889a.put(entry.getKey(), entry.getValue());
                } else {
                    m889a.remove(entry.getKey());
                }
            }
            c0282cm.m887a(c0282cm2.m893c());
            c0282cm.m888a(m1438a(c0282cm));
        }
        return c0282cm;
    }

    /* renamed from: a */
    public static synchronized C0435id m1434a(Context context) {
        C0435id c0435id;
        synchronized (C0435id.class) {
            if (f1559d == null) {
                f1559d = new C0435id(context);
                f1559d.m1441b();
            }
            c0435id = f1559d;
        }
        return c0435id;
    }

    /* renamed from: c */
    private boolean m1435c(C0282cm c0282cm) {
        if (!c0282cm.m896e().equals(m1438a(c0282cm))) {
            return false;
        }
        for (C0289ct c0289ct : c0282cm.m889a().values()) {
            byte[] m4585a = C1412l.m4585a(c0289ct.m916e());
            byte[] m1440a = m1440a(c0289ct);
            for (int i = 0; i < 4; i++) {
                if (m4585a[i] != m1440a[i]) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: d */
    private void m1436d() {
        if (this.f1560b == null) {
            return;
        }
        int m1432a = m1432a("defcon");
        if (m1432a != -1) {
            this.f1560b.mo1464a(m1432a);
            C1420t.m4606a(this.f1562e).m4611a(m1432a);
        }
        int m1432a2 = m1432a("latent");
        if (m1432a2 != -1) {
            int i = m1432a2 * 1000;
            this.f1560b.mo1467b(i);
            C1420t.m4606a(this.f1562e).m4614b(i);
        }
        int m1432a3 = m1432a("codex");
        if (m1432a3 == 0 || m1432a3 == 1 || m1432a3 == -1) {
            this.f1560b.mo1469c(m1432a3);
            C1420t.m4606a(this.f1562e).m4618c(m1432a3);
        }
    }

    /* renamed from: a */
    public synchronized C0282cm m1437a() {
        return this.f1561c;
    }

    /* renamed from: a */
    public String m1438a(C0282cm c0282cm) {
        StringBuilder sb = new StringBuilder();
        for (Map.Entry entry : new TreeMap(c0282cm.m889a()).entrySet()) {
            sb.append((String) entry.getKey());
            sb.append(((C0289ct) entry.getValue()).m909a());
            sb.append(((C0289ct) entry.getValue()).m913c());
            sb.append(((C0289ct) entry.getValue()).m916e());
        }
        sb.append(c0282cm.f1149b);
        return C0385gh.m1300a(sb.toString()).toLowerCase(Locale.US);
    }

    /* renamed from: a */
    public void m1439a(InterfaceC0455ix interfaceC0455ix) {
        this.f1560b = interfaceC0455ix;
    }

    /* renamed from: a */
    public byte[] m1440a(C0289ct c0289ct) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(null);
        allocate.putLong(c0289ct.m913c());
        byte[] array = allocate.array();
        byte[] bArr = f1558a;
        byte[] bArr2 = new byte[4];
        for (int i = 0; i < 4; i++) {
            bArr2[i] = (byte) (array[i] ^ bArr[i]);
        }
        return bArr2;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0026 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m1441b() {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        byte[] bArr = null;
        if (new File(this.f1562e.getFilesDir(), ".imprint").exists()) {
            try {
                fileInputStream = this.f1562e.openFileInput(".imprint");
                try {
                    try {
                        bArr = C0385gh.m1305b(fileInputStream);
                        C0385gh.m1306c(fileInputStream);
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        C0385gh.m1306c(fileInputStream);
                        if (bArr == null) {
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                    C0385gh.m1306c(fileInputStream2);
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                C0385gh.m1306c(fileInputStream2);
                throw th;
            }
            if (bArr == null) {
                try {
                    C0282cm c0282cm = new C0282cm();
                    new C0392go().m1325a(c0282cm, bArr);
                    this.f1561c = c0282cm;
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        }
    }

    /* renamed from: b */
    public void m1442b(C0282cm c0282cm) {
        if (c0282cm != null && m1435c(c0282cm)) {
            synchronized (this) {
                C0282cm c0282cm2 = this.f1561c;
                if (c0282cm2 != null) {
                    c0282cm = m1433a(c0282cm2, c0282cm);
                }
                this.f1561c = c0282cm;
            }
            if (this.f1561c != null) {
                m1436d();
            }
        }
    }

    /* renamed from: c */
    public void m1443c() {
        if (this.f1561c == null) {
            return;
        }
        try {
            C0385gh.m1301a(new File(this.f1562e.getFilesDir(), ".imprint"), new C0395gr().m1326a(this.f1561c));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
