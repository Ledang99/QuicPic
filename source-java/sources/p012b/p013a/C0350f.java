package p012b.p013a;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.f */
/* loaded from: classes.dex */
public class C0350f extends C0252bj implements InterfaceC0450is {
    public C0350f(String str, Map map, long j, int i) {
        m797a(str);
        m801b(System.currentTimeMillis());
        if (map.size() > 0) {
            m798a(m1100b(map));
        }
        m795a(i <= 0 ? 1 : i);
        if (j > 0) {
            m796a(j);
        }
    }

    /* renamed from: b */
    private HashMap m1100b(Map map) {
        Iterator it = map.entrySet().iterator();
        HashMap hashMap = new HashMap();
        int i = 0;
        while (i < 10 && it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            C0333ej c0333ej = new C0333ej();
            Object value = entry.getValue();
            if (value instanceof String) {
                c0333ej.m1057a((String) value);
            } else if (value instanceof Long) {
                c0333ej.m1056a(((Long) value).longValue());
            } else if (value instanceof Integer) {
                c0333ej.m1056a(((Integer) value).longValue());
            } else if (value instanceof Float) {
                c0333ej.m1056a(((Float) value).longValue());
            } else if (value instanceof Double) {
                c0333ej.m1056a(((Double) value).longValue());
            }
            if (c0333ej.m1329d()) {
                hashMap.put(entry.getKey(), c0333ej);
                i++;
            }
        }
        return hashMap;
    }

    @Override // p012b.p013a.InterfaceC0450is
    /* renamed from: a */
    public void mo1101a(C0366fp c0366fp, String str) {
        if (c0366fp.m1185b() > 0) {
            for (C0297da c0297da : c0366fp.m1188c()) {
                if (str.equals(c0297da.m933a())) {
                    break;
                }
            }
        }
        c0297da = null;
        if (c0297da == null) {
            c0297da = new C0297da();
            c0297da.m932a(str);
            c0366fp.m1181a(c0297da);
        }
        c0297da.m935a(this);
    }
}
