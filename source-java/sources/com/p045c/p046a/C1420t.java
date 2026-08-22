package com.p045c.p046a;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.io.FileInputStream;
import p012b.p013a.C0381gd;
import p012b.p013a.C0382ge;
import p012b.p013a.C0385gh;

/* renamed from: com.c.a.t */
/* loaded from: classes.dex */
public final class C1420t {

    /* renamed from: b */
    private static Context f5006b;

    /* renamed from: c */
    private static String f5007c;

    /* renamed from: d */
    private C1421u f5010d;

    /* renamed from: a */
    private static C1420t f5005a = null;

    /* renamed from: e */
    private static long f5008e = 1209600000;

    /* renamed from: f */
    private static long f5009f = 2097152;

    public C1420t(Context context) {
        this.f5010d = new C1421u(context);
        f5006b = context.getApplicationContext();
        f5007c = context.getPackageName();
    }

    /* renamed from: a */
    public static synchronized C1420t m4606a(Context context) {
        C1420t c1420t;
        synchronized (C1420t.class) {
            if (f5005a == null) {
                f5005a = new C1420t(context);
            }
            c1420t = f5005a;
        }
        return c1420t;
    }

    /* renamed from: a */
    private static boolean m4607a(File file) {
        return file.exists() && file.length() > f5009f;
    }

    /* renamed from: j */
    private SharedPreferences m4608j() {
        return f5006b.getSharedPreferences("mobclick_agent_user_" + f5007c, 0);
    }

    /* renamed from: k */
    private String m4609k() {
        return "mobclick_agent_header_" + f5007c;
    }

    /* renamed from: l */
    private String m4610l() {
        return "mobclick_agent_cached_" + f5007c + C0381gd.m1260a(f5006b);
    }

    /* renamed from: a */
    public void m4611a(int i) {
        SharedPreferences m4625i;
        if (i < 0 || i > 3 || (m4625i = m4625i()) == null) {
            return;
        }
        m4625i.edit().putInt("oc_dc", i).commit();
    }

    /* renamed from: a */
    public void m4612a(byte[] bArr) {
        try {
            C0385gh.m1301a(new File(f5006b.getFilesDir(), m4610l()), bArr);
        } catch (Exception e) {
            C0382ge.m1281b("MobclickAgent", e.getMessage());
        }
    }

    /* renamed from: a */
    public String[] m4613a() {
        SharedPreferences m4608j = m4608j();
        String string = m4608j.getString("au_p", null);
        String string2 = m4608j.getString("au_u", null);
        if (string == null || string2 == null) {
            return null;
        }
        return new String[]{string, string2};
    }

    /* renamed from: b */
    public void m4614b(int i) {
        SharedPreferences m4625i;
        if (i <= 0 || (m4625i = m4625i()) == null) {
            return;
        }
        m4625i.edit().putInt("oc_lt", i).commit();
    }

    /* renamed from: b */
    public void m4615b(byte[] bArr) {
        this.f5010d.m4627a(bArr);
    }

    /* renamed from: b */
    public int[] m4616b() {
        SharedPreferences m4625i = m4625i();
        int[] iArr = new int[2];
        if (m4625i.getInt("umeng_net_report_policy", -1) != -1) {
            iArr[0] = m4625i.getInt("umeng_net_report_policy", 1);
            iArr[1] = (int) m4625i.getLong("umeng_net_report_interval", 0L);
        } else {
            iArr[0] = m4625i.getInt("umeng_local_report_policy", 1);
            iArr[1] = (int) m4625i.getLong("umeng_local_report_interval", 0L);
        }
        return iArr;
    }

    /* renamed from: c */
    public int m4617c() {
        SharedPreferences m4625i = m4625i();
        if (m4625i != null) {
            return m4625i.getInt("oc_dc", 0);
        }
        return 0;
    }

    /* renamed from: c */
    public void m4618c(int i) {
        SharedPreferences m4625i = m4625i();
        if (m4625i != null) {
            m4625i.edit().putInt("oc_ec", i).commit();
        }
    }

    /* renamed from: d */
    public int m4619d() {
        SharedPreferences m4625i = m4625i();
        if (m4625i != null) {
            return m4625i.getInt("oc_lt", 0);
        }
        return 0;
    }

    /* renamed from: d */
    public int m4620d(int i) {
        SharedPreferences m4625i = m4625i();
        return m4625i != null ? m4625i.getInt("oc_ec", i) : i;
    }

    /* renamed from: e */
    public byte[] m4621e() {
        FileInputStream fileInputStream;
        Throwable th;
        byte[] bArr = null;
        String m4610l = m4610l();
        File file = new File(f5006b.getFilesDir(), m4610l);
        if (m4607a(file)) {
            file.delete();
        } else if (file.exists()) {
            try {
                fileInputStream = f5006b.openFileInput(m4610l);
                try {
                    try {
                        bArr = C0385gh.m1305b(fileInputStream);
                        C0385gh.m1306c(fileInputStream);
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        C0385gh.m1306c(fileInputStream);
                        return bArr;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    C0385gh.m1306c(fileInputStream);
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                fileInputStream = null;
            } catch (Throwable th3) {
                fileInputStream = null;
                th = th3;
                C0385gh.m1306c(fileInputStream);
                throw th;
            }
        }
        return bArr;
    }

    /* renamed from: f */
    public void m4622f() {
        f5006b.deleteFile(m4609k());
        f5006b.deleteFile(m4610l());
    }

    /* renamed from: g */
    public boolean m4623g() {
        return this.f5010d.m4628a();
    }

    /* renamed from: h */
    public C1421u m4624h() {
        return this.f5010d;
    }

    /* renamed from: i */
    public SharedPreferences m4625i() {
        return f5006b.getSharedPreferences("mobclick_agent_online_setting_" + f5007c, 0);
    }
}
