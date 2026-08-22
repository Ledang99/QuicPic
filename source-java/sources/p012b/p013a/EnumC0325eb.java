package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.eb */
/* loaded from: classes.dex */
public enum EnumC0325eb implements InterfaceC0394gq {
    TIME_ZONE(1, "time_zone"),
    LANGUAGE(2, "language"),
    COUNTRY(3, "country"),
    LATITUDE(4, "latitude"),
    LONGITUDE(5, "longitude"),
    CARRIER(6, "carrier"),
    LATENCY(7, "latency"),
    DISPLAY_NAME(8, "display_name"),
    ACCESS_TYPE(9, "access_type"),
    ACCESS_SUBTYPE(10, "access_subtype");


    /* renamed from: k */
    private static final Map f1265k = new HashMap();

    /* renamed from: l */
    private final short f1267l;

    /* renamed from: m */
    private final String f1268m;

    static {
        Iterator it = EnumSet.allOf(EnumC0325eb.class).iterator();
        while (it.hasNext()) {
            EnumC0325eb enumC0325eb = (EnumC0325eb) it.next();
            f1265k.put(enumC0325eb.m1033b(), enumC0325eb);
        }
    }

    EnumC0325eb(short s, String str) {
        this.f1267l = s;
        this.f1268m = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1267l;
    }

    /* renamed from: b */
    public String m1033b() {
        return this.f1268m;
    }
}
