package p012b.p013a;

import android.content.Context;
import com.p045c.p046a.C1398a;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.iq */
/* loaded from: classes.dex */
public class C0448iq {

    /* renamed from: a */
    private final int f1598a = 128;

    /* renamed from: b */
    private final int f1599b = 256;

    /* renamed from: c */
    private C0446io f1600c;

    /* renamed from: d */
    private Context f1601d;

    /* renamed from: e */
    private C0443il f1602e;

    public C0448iq(Context context) {
        if (context == null) {
            throw new RuntimeException("Context is null, can't track event");
        }
        this.f1601d = context.getApplicationContext();
        this.f1600c = new C0446io(this.f1601d);
        this.f1600c.m1481a(!C1398a.f4962j);
        this.f1602e = C0443il.m1479a(this.f1601d);
    }

    /* renamed from: a */
    private boolean m1484a(String str) {
        int length;
        if (str != null && (length = str.trim().getBytes().length) > 0 && length <= 128) {
            return true;
        }
        C0382ge.m1281b("MobclickAgent", "Event id is empty or too long in tracking Event");
        return false;
    }

    /* renamed from: a */
    private boolean m1485a(Map map) {
        if (map == null || map.isEmpty()) {
            C0382ge.m1281b("MobclickAgent", "map is null or empty in onEvent");
            return false;
        }
        for (Map.Entry entry : map.entrySet()) {
            if (m1484a((String) entry.getKey()) && entry.getValue() != null) {
                if ((entry.getValue() instanceof String) && !m1486b(entry.getValue().toString())) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    /* renamed from: b */
    private boolean m1486b(String str) {
        if (str == null || str.trim().getBytes().length <= 256) {
            return true;
        }
        C0382ge.m1281b("MobclickAgent", "Event label or value is empty or too long in tracking Event");
        return false;
    }

    /* renamed from: a */
    public void m1487a(String str, String str2, long j, int i) {
        if (m1484a(str) && m1486b(str2)) {
            HashMap hashMap = new HashMap();
            if (str2 == null) {
                str2 = "";
            }
            hashMap.put(str, str2);
            this.f1602e.mo1465a(new C0350f(str, hashMap, j, i));
        }
    }

    /* renamed from: a */
    public void m1488a(String str, Map map, long j) {
        try {
            if (m1484a(str) && m1485a(map)) {
                this.f1602e.mo1465a(new C0350f(str, map, j, -1));
            }
        } catch (Exception e) {
            C0382ge.m1282b("MobclickAgent", "Exception occurred in Mobclick.onEvent(). ", e);
        }
    }
}
