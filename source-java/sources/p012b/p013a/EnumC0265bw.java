package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.http.cookie.ClientCookie;

/* renamed from: b.a.bw */
/* loaded from: classes.dex */
public enum EnumC0265bw implements InterfaceC0394gq {
    DOMAIN(1, ClientCookie.DOMAIN_ATTR),
    OLD_ID(2, "old_id"),
    NEW_ID(3, "new_id"),
    TS(4, "ts");


    /* renamed from: e */
    private static final Map f1101e = new HashMap();

    /* renamed from: f */
    private final short f1103f;

    /* renamed from: g */
    private final String f1104g;

    static {
        Iterator it = EnumSet.allOf(EnumC0265bw.class).iterator();
        while (it.hasNext()) {
            EnumC0265bw enumC0265bw = (EnumC0265bw) it.next();
            f1101e.put(enumC0265bw.m838b(), enumC0265bw);
        }
    }

    EnumC0265bw(short s, String str) {
        this.f1103f = s;
        this.f1104g = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1103f;
    }

    /* renamed from: b */
    public String m838b() {
        return this.f1104g;
    }
}
