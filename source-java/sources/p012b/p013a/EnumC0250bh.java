package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.bh */
/* loaded from: classes.dex */
public enum EnumC0250bh implements InterfaceC0394gq {
    TS(1, "ts"),
    CONTEXT(2, "context"),
    SOURCE(3, "source");


    /* renamed from: d */
    private static final Map f1052d = new HashMap();

    /* renamed from: e */
    private final short f1054e;

    /* renamed from: f */
    private final String f1055f;

    static {
        Iterator it = EnumSet.allOf(EnumC0250bh.class).iterator();
        while (it.hasNext()) {
            EnumC0250bh enumC0250bh = (EnumC0250bh) it.next();
            f1052d.put(enumC0250bh.m786b(), enumC0250bh);
        }
    }

    EnumC0250bh(short s, String str) {
        this.f1054e = s;
        this.f1055f = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1054e;
    }

    /* renamed from: b */
    public String m786b() {
        return this.f1055f;
    }
}
