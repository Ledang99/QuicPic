package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.ck */
/* loaded from: classes.dex */
public enum EnumC0280ck implements InterfaceC0394gq {
    SNAPSHOTS(1, "snapshots"),
    JOURNALS(2, "journals"),
    CHECKSUM(3, "checksum");


    /* renamed from: d */
    private static final Map f1137d = new HashMap();

    /* renamed from: e */
    private final short f1139e;

    /* renamed from: f */
    private final String f1140f;

    static {
        Iterator it = EnumSet.allOf(EnumC0280ck.class).iterator();
        while (it.hasNext()) {
            EnumC0280ck enumC0280ck = (EnumC0280ck) it.next();
            f1137d.put(enumC0280ck.m882b(), enumC0280ck);
        }
    }

    EnumC0280ck(short s, String str) {
        this.f1139e = s;
        this.f1140f = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1139e;
    }

    /* renamed from: b */
    public String m882b() {
        return this.f1140f;
    }
}
