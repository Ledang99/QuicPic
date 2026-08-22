package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.r */
/* loaded from: classes.dex */
public enum EnumC0468r implements InterfaceC0394gq {
    TS(1, "ts");


    /* renamed from: b */
    private static final Map f1642b = new HashMap();

    /* renamed from: c */
    private final short f1644c;

    /* renamed from: d */
    private final String f1645d;

    static {
        Iterator it = EnumSet.allOf(EnumC0468r.class).iterator();
        while (it.hasNext()) {
            EnumC0468r enumC0468r = (EnumC0468r) it.next();
            f1642b.put(enumC0468r.m1553b(), enumC0468r);
        }
    }

    EnumC0468r(short s, String str) {
        this.f1644c = s;
        this.f1645d = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1644c;
    }

    /* renamed from: b */
    public String m1553b() {
        return this.f1645d;
    }
}
