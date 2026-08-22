package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.http.cookie.ClientCookie;

/* renamed from: b.a.cs */
/* loaded from: classes.dex */
public enum EnumC0288cs implements InterfaceC0394gq {
    PROPERTY(1, "property"),
    VERSION(2, ClientCookie.VERSION_ATTR),
    CHECKSUM(3, "checksum");


    /* renamed from: d */
    private static final Map f1155d = new HashMap();

    /* renamed from: e */
    private final short f1157e;

    /* renamed from: f */
    private final String f1158f;

    static {
        Iterator it = EnumSet.allOf(EnumC0288cs.class).iterator();
        while (it.hasNext()) {
            EnumC0288cs enumC0288cs = (EnumC0288cs) it.next();
            f1155d.put(enumC0288cs.m904b(), enumC0288cs);
        }
    }

    EnumC0288cs(short s, String str) {
        this.f1157e = s;
        this.f1158f = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1157e;
    }

    /* renamed from: b */
    public String m904b() {
        return this.f1158f;
    }
}
