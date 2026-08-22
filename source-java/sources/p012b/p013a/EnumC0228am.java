package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.am */
/* loaded from: classes.dex */
public enum EnumC0228am implements InterfaceC0394gq {
    SUCCESSFUL_REQUESTS(1, "successful_requests"),
    FAILED_REQUESTS(2, "failed_requests"),
    LAST_REQUEST_SPENT_MS(3, "last_request_spent_ms");


    /* renamed from: d */
    private static final Map f955d = new HashMap();

    /* renamed from: e */
    private final short f957e;

    /* renamed from: f */
    private final String f958f;

    static {
        Iterator it = EnumSet.allOf(EnumC0228am.class).iterator();
        while (it.hasNext()) {
            EnumC0228am enumC0228am = (EnumC0228am) it.next();
            f955d.put(enumC0228am.m663b(), enumC0228am);
        }
    }

    EnumC0228am(short s, String str) {
        this.f957e = s;
        this.f958f = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f957e;
    }

    /* renamed from: b */
    public String m663b() {
        return this.f958f;
    }
}
