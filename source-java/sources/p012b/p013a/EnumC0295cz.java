package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.cz */
/* loaded from: classes.dex */
public enum EnumC0295cz implements InterfaceC0394gq {
    VALUE(1, "value"),
    TS(2, "ts"),
    GUID(3, "guid");


    /* renamed from: d */
    private static final Map f1173d = new HashMap();

    /* renamed from: e */
    private final short f1175e;

    /* renamed from: f */
    private final String f1176f;

    static {
        Iterator it = EnumSet.allOf(EnumC0295cz.class).iterator();
        while (it.hasNext()) {
            EnumC0295cz enumC0295cz = (EnumC0295cz) it.next();
            f1173d.put(enumC0295cz.m924b(), enumC0295cz);
        }
    }

    EnumC0295cz(short s, String str) {
        this.f1175e = s;
        this.f1176f = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1175e;
    }

    /* renamed from: b */
    public String m924b() {
        return this.f1176f;
    }
}
