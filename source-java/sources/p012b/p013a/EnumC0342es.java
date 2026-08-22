package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.es */
/* loaded from: classes.dex */
public enum EnumC0342es implements InterfaceC0394gq {
    HEIGHT(1, "height"),
    WIDTH(2, "width");


    /* renamed from: c */
    private static final Map f1304c = new HashMap();

    /* renamed from: d */
    private final short f1306d;

    /* renamed from: e */
    private final String f1307e;

    static {
        Iterator it = EnumSet.allOf(EnumC0342es.class).iterator();
        while (it.hasNext()) {
            EnumC0342es enumC0342es = (EnumC0342es) it.next();
            f1304c.put(enumC0342es.m1079b(), enumC0342es);
        }
    }

    EnumC0342es(short s, String str) {
        this.f1306d = s;
        this.f1307e = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1306d;
    }

    /* renamed from: b */
    public String m1079b() {
        return this.f1307e;
    }
}
