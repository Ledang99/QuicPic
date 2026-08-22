package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.http.cookie.ClientCookie;

/* renamed from: b.a.gc */
/* loaded from: classes.dex */
public enum EnumC0380gc implements InterfaceC0394gq {
    VERSION(1, ClientCookie.VERSION_ATTR),
    ADDRESS(2, "address"),
    SIGNATURE(3, "signature"),
    SERIAL_NUM(4, "serial_num"),
    TS_SECS(5, "ts_secs"),
    LENGTH(6, "length"),
    ENTITY(7, "entity"),
    GUID(8, "guid"),
    CHECKSUM(9, "checksum"),
    CODEX(10, "codex");


    /* renamed from: k */
    private static final Map f1452k = new HashMap();

    /* renamed from: l */
    private final short f1454l;

    /* renamed from: m */
    private final String f1455m;

    static {
        Iterator it = EnumSet.allOf(EnumC0380gc.class).iterator();
        while (it.hasNext()) {
            EnumC0380gc enumC0380gc = (EnumC0380gc) it.next();
            f1452k.put(enumC0380gc.m1257b(), enumC0380gc);
        }
    }

    EnumC0380gc(short s, String str) {
        this.f1454l = s;
        this.f1455m = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1454l;
    }

    /* renamed from: b */
    public String m1257b() {
        return this.f1455m;
    }
}
