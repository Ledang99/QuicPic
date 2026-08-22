package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.el */
/* loaded from: classes.dex */
public enum EnumC0335el implements InterfaceC0394gq {
    STRING_VALUE(1, "string_value"),
    LONG_VALUE(2, "long_value");


    /* renamed from: c */
    private static final Map f1290c = new HashMap();

    /* renamed from: d */
    private final short f1292d;

    /* renamed from: e */
    private final String f1293e;

    static {
        Iterator it = EnumSet.allOf(EnumC0335el.class).iterator();
        while (it.hasNext()) {
            EnumC0335el enumC0335el = (EnumC0335el) it.next();
            f1290c.put(enumC0335el.m1064b(), enumC0335el);
        }
    }

    EnumC0335el(short s, String str) {
        this.f1292d = s;
        this.f1293e = str;
    }

    /* renamed from: a */
    public static EnumC0335el m1062a(int i) {
        switch (i) {
            case 1:
                return STRING_VALUE;
            case 2:
                return LONG_VALUE;
            default:
                return null;
        }
    }

    /* renamed from: b */
    public static EnumC0335el m1063b(int i) {
        EnumC0335el m1062a = m1062a(i);
        if (m1062a == null) {
            throw new IllegalArgumentException("Field " + i + " doesn't exist!");
        }
        return m1062a;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1292d;
    }

    /* renamed from: b */
    public String m1064b() {
        return this.f1293e;
    }
}
