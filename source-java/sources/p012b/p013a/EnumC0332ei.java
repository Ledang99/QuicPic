package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.ei */
/* loaded from: classes.dex */
public enum EnumC0332ei implements InterfaceC0394gq {
    PAGE_NAME(1, "page_name"),
    DURATION(2, "duration");


    /* renamed from: c */
    private static final Map f1279c = new HashMap();

    /* renamed from: d */
    private final short f1281d;

    /* renamed from: e */
    private final String f1282e;

    static {
        Iterator it = EnumSet.allOf(EnumC0332ei.class).iterator();
        while (it.hasNext()) {
            EnumC0332ei enumC0332ei = (EnumC0332ei) it.next();
            f1279c.put(enumC0332ei.m1049b(), enumC0332ei);
        }
    }

    EnumC0332ei(short s, String str) {
        this.f1281d = s;
        this.f1282e = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1281d;
    }

    /* renamed from: b */
    public String m1049b() {
        return this.f1282e;
    }
}
