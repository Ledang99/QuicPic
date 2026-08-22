package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.ez */
/* loaded from: classes.dex */
public enum EnumC0349ez implements InterfaceC0394gq {
    RESP_CODE(1, "resp_code"),
    MSG(2, "msg"),
    IMPRINT(3, "imprint");


    /* renamed from: d */
    private static final Map f1322d = new HashMap();

    /* renamed from: e */
    private final short f1324e;

    /* renamed from: f */
    private final String f1325f;

    static {
        Iterator it = EnumSet.allOf(EnumC0349ez.class).iterator();
        while (it.hasNext()) {
            EnumC0349ez enumC0349ez = (EnumC0349ez) it.next();
            f1322d.put(enumC0349ez.m1099b(), enumC0349ez);
        }
    }

    EnumC0349ez(short s, String str) {
        this.f1324e = s;
        this.f1325f = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1324e;
    }

    /* renamed from: b */
    public String m1099b() {
        return this.f1325f;
    }
}
