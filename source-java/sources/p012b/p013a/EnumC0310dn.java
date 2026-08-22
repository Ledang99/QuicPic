package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.dn */
/* loaded from: classes.dex */
public enum EnumC0310dn implements InterfaceC0394gq {
    LATENCY(1, "latency"),
    INTERVAL(2, "interval");


    /* renamed from: c */
    private static final Map f1207c = new HashMap();

    /* renamed from: d */
    private final short f1209d;

    /* renamed from: e */
    private final String f1210e;

    static {
        Iterator it = EnumSet.allOf(EnumC0310dn.class).iterator();
        while (it.hasNext()) {
            EnumC0310dn enumC0310dn = (EnumC0310dn) it.next();
            f1207c.put(enumC0310dn.m965b(), enumC0310dn);
        }
    }

    EnumC0310dn(short s, String str) {
        this.f1209d = s;
        this.f1210e = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1209d;
    }

    /* renamed from: b */
    public String m965b() {
        return this.f1210e;
    }
}
