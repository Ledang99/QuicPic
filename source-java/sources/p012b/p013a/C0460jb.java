package p012b.p013a;

import android.content.Context;
import android.content.SharedPreferences;
import com.p045c.p046a.C1398a;
import java.util.Arrays;
import java.util.List;

/* renamed from: b.a.jb */
/* loaded from: classes.dex */
public class C0460jb {

    /* renamed from: c */
    private static String f1626c = null;

    /* renamed from: a */
    private final String f1627a = "a_start_time";

    /* renamed from: b */
    private final String f1628b = "a_end_time";

    /* renamed from: a */
    private String m1532a(Context context, SharedPreferences sharedPreferences) {
        C0443il m1479a = C0443il.m1479a(context);
        String m1537b = m1537b(context);
        C0431i m1536a = m1536a(context);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.putString("session_id", m1537b);
        edit.putLong("session_start_time", System.currentTimeMillis());
        edit.putLong("session_end_time", 0L);
        edit.putLong("a_start_time", System.currentTimeMillis());
        edit.putLong("a_end_time", 0L);
        edit.commit();
        if (m1536a != null) {
            m1479a.mo1465a(m1536a);
        } else {
            m1479a.mo1465a((C0431i) null);
        }
        return m1537b;
    }

    /* renamed from: a */
    private void m1533a(SharedPreferences sharedPreferences) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        edit.remove("session_start_time");
        edit.remove("session_end_time");
        edit.remove("a_start_time");
        edit.remove("a_end_time");
        edit.putString("activities", "");
        edit.commit();
    }

    /* renamed from: b */
    private boolean m1534b(SharedPreferences sharedPreferences) {
        long j = sharedPreferences.getLong("a_start_time", 0L);
        long j2 = sharedPreferences.getLong("a_end_time", 0L);
        long currentTimeMillis = System.currentTimeMillis();
        if (j == 0 || currentTimeMillis - j >= C1398a.f4964l) {
            return currentTimeMillis - j2 > C1398a.f4964l;
        }
        C0382ge.m1281b("MobclickAgent", "onResume called before onPause");
        return false;
    }

    /* renamed from: e */
    public static String m1535e(Context context) {
        if (f1626c == null) {
            f1626c = C0456iy.m1509a(context).getString("session_id", null);
        }
        return f1626c;
    }

    /* renamed from: a */
    public C0431i m1536a(Context context) {
        SharedPreferences m1509a = C0456iy.m1509a(context);
        String string = m1509a.getString("session_id", null);
        if (string == null) {
            return null;
        }
        long j = m1509a.getLong("session_start_time", 0L);
        long j2 = m1509a.getLong("session_end_time", 0L);
        long j3 = 0;
        if (j2 != 0) {
            j3 = j2 - j;
            if (Math.abs(j3) > 86400000) {
                j3 = 0;
            }
        }
        C0431i c0431i = new C0431i();
        c0431i.m1114a(string);
        c0431i.m1112a(j);
        c0431i.m1119b(j2);
        c0431i.m1123c(j3);
        double[] m4569b = C1398a.m4569b();
        if (m4569b != null) {
            C0311do c0311do = new C0311do(m4569b[0], m4569b[1], System.currentTimeMillis());
            if (c0431i.m1131f()) {
                c0431i.m1116a(c0311do);
            } else {
                c0431i.m1120b(Arrays.asList(c0311do));
            }
        }
        C0359fi m925a = C0296d.m925a(context);
        if (m925a != null) {
            c0431i.m1113a(m925a);
        }
        List m1027a = C0323e.m1027a(m1509a);
        if (m1027a != null && m1027a.size() > 0) {
            c0431i.m1115a(m1027a);
        }
        m1533a(m1509a);
        return c0431i;
    }

    /* renamed from: b */
    public String m1537b(Context context) {
        String m1263c = C0381gd.m1263c(context);
        String m4565a = C1398a.m4565a(context);
        long currentTimeMillis = System.currentTimeMillis();
        if (m4565a == null) {
            throw new RuntimeException("Appkey is null or empty, Please check AndroidManifest.xml");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(currentTimeMillis).append(m4565a).append(m1263c);
        f1626c = C0385gh.m1300a(sb.toString());
        return f1626c;
    }

    /* renamed from: c */
    public void m1538c(Context context) {
        SharedPreferences m1509a = C0456iy.m1509a(context);
        if (m1509a == null) {
            return;
        }
        if (m1534b(m1509a)) {
            C0382ge.m1279a("MobclickAgent", "Start new session: " + m1532a(context, m1509a));
            return;
        }
        String string = m1509a.getString("session_id", null);
        SharedPreferences.Editor edit = m1509a.edit();
        edit.putLong("a_start_time", System.currentTimeMillis());
        edit.putLong("a_end_time", 0L);
        edit.commit();
        C0382ge.m1279a("MobclickAgent", "Extend current session: " + string);
    }

    /* renamed from: d */
    public void m1539d(Context context) {
        SharedPreferences m1509a = C0456iy.m1509a(context);
        if (m1509a == null) {
            return;
        }
        if (m1509a.getLong("a_start_time", 0L) == 0 && C1398a.f4960h) {
            C0382ge.m1281b("MobclickAgent", "onPause called before onResume");
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        SharedPreferences.Editor edit = m1509a.edit();
        edit.putLong("a_start_time", 0L);
        edit.putLong("a_end_time", currentTimeMillis);
        edit.putLong("session_end_time", currentTimeMillis);
        edit.commit();
    }
}
