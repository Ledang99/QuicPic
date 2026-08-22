package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.y */
/* loaded from: classes.dex */
public enum EnumC0475y implements InterfaceC0394gq {
    PROVIDER(1, "provider"),
    PUID(2, "puid");


    /* renamed from: c */
    private static final Map f1655c = new HashMap();

    /* renamed from: d */
    private final short f1657d;

    /* renamed from: e */
    private final String f1658e;

    static {
        Iterator it = EnumSet.allOf(EnumC0475y.class).iterator();
        while (it.hasNext()) {
            EnumC0475y enumC0475y = (EnumC0475y) it.next();
            f1655c.put(enumC0475y.m1566b(), enumC0475y);
        }
    }

    EnumC0475y(short s, String str) {
        this.f1657d = s;
        this.f1658e = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1657d;
    }

    /* renamed from: b */
    public String m1566b() {
        return this.f1658e;
    }
}
