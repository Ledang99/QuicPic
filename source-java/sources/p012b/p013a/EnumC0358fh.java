package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.fh */
/* loaded from: classes.dex */
public enum EnumC0358fh implements InterfaceC0394gq {
    ID(1, "id"),
    START_TIME(2, "start_time"),
    END_TIME(3, "end_time"),
    DURATION(4, "duration"),
    PAGES(5, "pages"),
    LOCATIONS(6, "locations"),
    TRAFFIC(7, "traffic");


    /* renamed from: h */
    private static final Map f1358h = new HashMap();

    /* renamed from: i */
    private final short f1360i;

    /* renamed from: j */
    private final String f1361j;

    static {
        Iterator it = EnumSet.allOf(EnumC0358fh.class).iterator();
        while (it.hasNext()) {
            EnumC0358fh enumC0358fh = (EnumC0358fh) it.next();
            f1358h.put(enumC0358fh.m1141b(), enumC0358fh);
        }
    }

    EnumC0358fh(short s, String str) {
        this.f1360i = s;
        this.f1361j = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1360i;
    }

    /* renamed from: b */
    public String m1141b() {
        return this.f1361j;
    }
}
