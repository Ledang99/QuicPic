package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.bp */
/* loaded from: classes.dex */
public enum EnumC0258bp implements InterfaceC0394gq {
    NAME(1, "name"),
    PROPERTIES(2, "properties"),
    DURATION(3, "duration"),
    ACC(4, "acc"),
    TS(5, "ts");


    /* renamed from: f */
    private static final Map f1080f = new HashMap();

    /* renamed from: g */
    private final short f1082g;

    /* renamed from: h */
    private final String f1083h;

    static {
        Iterator it = EnumSet.allOf(EnumC0258bp.class).iterator();
        while (it.hasNext()) {
            EnumC0258bp enumC0258bp = (EnumC0258bp) it.next();
            f1080f.put(enumC0258bp.m815b(), enumC0258bp);
        }
    }

    EnumC0258bp(short s, String str) {
        this.f1082g = s;
        this.f1083h = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1082g;
    }

    /* renamed from: b */
    public String m815b() {
        return this.f1083h;
    }
}
