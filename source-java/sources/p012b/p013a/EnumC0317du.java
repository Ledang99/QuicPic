package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.du */
/* loaded from: classes.dex */
public enum EnumC0317du implements InterfaceC0394gq {
    LAT(1, "lat"),
    LNG(2, "lng"),
    TS(3, "ts");


    /* renamed from: d */
    private static final Map f1224d = new HashMap();

    /* renamed from: e */
    private final short f1226e;

    /* renamed from: f */
    private final String f1227f;

    static {
        Iterator it = EnumSet.allOf(EnumC0317du.class).iterator();
        while (it.hasNext()) {
            EnumC0317du enumC0317du = (EnumC0317du) it.next();
            f1224d.put(enumC0317du.m983b(), enumC0317du);
        }
    }

    EnumC0317du(short s, String str) {
        this.f1226e = s;
        this.f1227f = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1226e;
    }

    /* renamed from: b */
    public String m983b() {
        return this.f1227f;
    }
}
