package p012b.p013a;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: b.a.e */
/* loaded from: classes.dex */
public class C0323e {

    /* renamed from: a */
    private final Map f1253a = new HashMap();

    /* renamed from: b */
    private final ArrayList f1254b = new ArrayList();

    /* renamed from: a */
    public static List m1027a(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString("activities", "");
        if ("".equals(string)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        try {
            String[] split = string.split(";");
            for (String str : split) {
                if (!TextUtils.isEmpty(str)) {
                    arrayList.add(new C0404h(str));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (arrayList.size() > 0) {
            return arrayList;
        }
        return null;
    }

    /* renamed from: a */
    public void m1028a() {
        long j;
        String str;
        String str2 = null;
        long j2 = 0;
        synchronized (this.f1253a) {
            for (Map.Entry entry : this.f1253a.entrySet()) {
                if (((Long) entry.getValue()).longValue() > j2) {
                    long longValue = ((Long) entry.getValue()).longValue();
                    str = (String) entry.getKey();
                    j = longValue;
                } else {
                    j = j2;
                    str = str2;
                }
                str2 = str;
                j2 = j;
            }
        }
        if (str2 != null) {
            m1031b(str2);
        }
    }

    /* renamed from: a */
    public void m1029a(Context context) {
        SharedPreferences m1509a = C0456iy.m1509a(context);
        SharedPreferences.Editor edit = m1509a.edit();
        if (this.f1254b.size() > 0) {
            String string = m1509a.getString("activities", "");
            StringBuilder sb = new StringBuilder();
            if (!TextUtils.isEmpty(string)) {
                sb.append(string);
                sb.append(";");
            }
            synchronized (this.f1254b) {
                Iterator it = this.f1254b.iterator();
                while (it.hasNext()) {
                    C0269c c0269c = (C0269c) it.next();
                    sb.append(String.format("[\"%s\",%d]", c0269c.f1115a, Long.valueOf(c0269c.f1116b)));
                    sb.append(";");
                }
                this.f1254b.clear();
            }
            sb.deleteCharAt(sb.length() - 1);
            edit.remove("activities");
            edit.putString("activities", sb.toString());
        }
        edit.commit();
    }

    /* renamed from: a */
    public void m1030a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.f1253a) {
            this.f1253a.put(str, Long.valueOf(System.currentTimeMillis()));
        }
    }

    /* renamed from: b */
    public void m1031b(String str) {
        Long l;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.f1253a) {
            l = (Long) this.f1253a.remove(str);
        }
        if (l == null) {
            C0382ge.m1285d("MobclickAgent", String.format("please call 'onPageStart(%s)' before onPageEnd", str));
            return;
        }
        long currentTimeMillis = System.currentTimeMillis() - l.longValue();
        synchronized (this.f1254b) {
            this.f1254b.add(new C0269c(str, currentTimeMillis));
        }
    }
}
