package com.alensw.p022a;

import android.content.Context;
import com.alensw.p023b.p026c.C0657a;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* renamed from: com.alensw.a.o */
/* loaded from: classes.dex */
public class C0633o {

    /* renamed from: b */
    private static C0633o f2429b;

    /* renamed from: a */
    private final C0657a f2430a = new C0657a(16);

    /* renamed from: a */
    public static synchronized C0633o m2410a(Context context) {
        C0633o c0633o;
        synchronized (C0633o.class) {
            if (f2429b == null) {
                f2429b = new C0633o();
                f2429b.m2411b(context);
            }
            c0633o = f2429b;
        }
        return c0633o;
    }

    /* renamed from: b */
    private void m2411b(Context context) {
        this.f2430a.m2608a(C0742b.m2990b(context, "folder_list"));
    }

    /* renamed from: a */
    public String m2412a() {
        ArrayList m2413a = m2413a(false);
        int size = m2413a.size();
        if (size == 0) {
            return null;
        }
        String str = (String) m2413a.get(0);
        if (size == 1) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        int indexOf = str.indexOf(File.separatorChar);
        while (indexOf >= 0 && indexOf < length - 1) {
            int indexOf2 = str.indexOf(File.separatorChar, indexOf + 1);
            int i = indexOf2 == -1 ? length : indexOf2;
            String substring = str.substring(indexOf, i);
            for (int i2 = 1; i2 < size; i2++) {
                if (!((String) m2413a.get(i2)).startsWith(substring, indexOf)) {
                    return sb.length() > 0 ? sb.toString() : File.separator;
                }
            }
            sb.append(substring);
            indexOf = i;
        }
        return sb.length() > 0 ? sb.toString() : File.separator;
    }

    /* renamed from: a */
    public synchronized ArrayList m2413a(boolean z) {
        ArrayList arrayList;
        arrayList = new ArrayList(this.f2430a.m2613c());
        for (Map.Entry entry : this.f2430a.m2618f()) {
            if (((Boolean) entry.getValue()).booleanValue() == z) {
                arrayList.add(entry.getKey());
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public synchronized void m2414a(C0623e c0623e) {
        this.f2430a.m2606a(c0623e.getPath(), (Object) true);
        this.f2430a.m2620h();
    }

    /* renamed from: a */
    public synchronized void m2415a(ArrayList arrayList, boolean z) {
        ArrayList arrayList2 = new ArrayList(this.f2430a.m2613c());
        for (Map.Entry entry : this.f2430a.m2618f()) {
            if (((Boolean) entry.getValue()).booleanValue() != z) {
                arrayList2.add(entry.getKey());
            }
        }
        this.f2430a.m2615d();
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            this.f2430a.m2606a((String) it.next(), Boolean.valueOf(!z));
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            this.f2430a.m2606a((String) it2.next(), Boolean.valueOf(z));
        }
        this.f2430a.m2620h();
    }
}
