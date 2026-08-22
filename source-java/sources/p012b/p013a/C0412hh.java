package p012b.p013a;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* renamed from: b.a.hh */
/* loaded from: classes.dex */
public class C0412hh {

    /* renamed from: a */
    private Context f1522a;

    /* renamed from: b */
    private Set f1523b = new HashSet();

    public C0412hh(Context context) {
        this.f1522a = context;
    }

    /* renamed from: a */
    public void m1388a() {
        if (this.f1523b.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = this.f1523b.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
            sb.append(',');
        }
        sb.deleteCharAt(sb.length() - 1);
        C0456iy.m1509a(this.f1522a).edit().putString("invld_id", sb.toString()).commit();
    }

    /* renamed from: a */
    public boolean m1389a(String str) {
        return !this.f1523b.contains(str);
    }

    /* renamed from: b */
    public void m1390b() {
        String[] split;
        String string = C0456iy.m1509a(this.f1522a).getString("invld_id", null);
        if (TextUtils.isEmpty(string) || (split = string.split(",")) == null) {
            return;
        }
        for (String str : split) {
            if (!TextUtils.isEmpty(str)) {
                this.f1523b.add(str);
            }
        }
    }

    /* renamed from: b */
    public void m1391b(String str) {
        this.f1523b.add(str);
    }
}
