package p012b.p013a;

import android.content.Context;
import android.content.SharedPreferences;
import java.lang.reflect.Method;

/* renamed from: b.a.d */
/* loaded from: classes.dex */
public class C0296d {
    /* renamed from: a */
    public static C0359fi m925a(Context context) {
        try {
            C0359fi c0359fi = new C0359fi();
            long[] m926b = m926b(context);
            if (m926b[0] <= 0 || m926b[1] <= 0) {
                return null;
            }
            SharedPreferences m1509a = C0456iy.m1509a(context);
            long j = m1509a.getLong("uptr", -1L);
            long j2 = m1509a.getLong("dntr", -1L);
            m1509a.edit().putLong("uptr", m926b[1]).putLong("dntr", m926b[0]).commit();
            if (j <= 0 || j2 <= 0) {
                return null;
            }
            m926b[0] = m926b[0] - j2;
            m926b[1] = m926b[1] - j;
            if (m926b[0] <= 0 || m926b[1] <= 0) {
                return null;
            }
            c0359fi.m1148b((int) m926b[0]);
            c0359fi.m1145a((int) m926b[1]);
            return c0359fi;
        } catch (Exception e) {
            C0382ge.m1285d("MobclickAgent", "sdk less than 2.2 has get no traffic");
            return null;
        }
    }

    /* renamed from: b */
    private static long[] m926b(Context context) {
        Class<?> cls = Class.forName("android.net.TrafficStats");
        Method method = cls.getMethod("getUidRxBytes", Integer.TYPE);
        Method method2 = cls.getMethod("getUidTxBytes", Integer.TYPE);
        int i = context.getApplicationInfo().uid;
        if (i == -1) {
            return null;
        }
        return new long[]{((Long) method.invoke(null, Integer.valueOf(i))).longValue(), ((Long) method2.invoke(null, Integer.valueOf(i))).longValue()};
    }
}
