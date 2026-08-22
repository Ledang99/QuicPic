package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.fo */
/* loaded from: classes.dex */
public enum EnumC0365fo implements InterfaceC0394gq {
    UPLOAD_TRAFFIC(1, "upload_traffic"),
    DOWNLOAD_TRAFFIC(2, "download_traffic");


    /* renamed from: c */
    private static final Map f1372c = new HashMap();

    /* renamed from: d */
    private final short f1374d;

    /* renamed from: e */
    private final String f1375e;

    static {
        Iterator it = EnumSet.allOf(EnumC0365fo.class).iterator();
        while (it.hasNext()) {
            EnumC0365fo enumC0365fo = (EnumC0365fo) it.next();
            f1372c.put(enumC0365fo.m1158b(), enumC0365fo);
        }
    }

    EnumC0365fo(short s, String str) {
        this.f1374d = s;
        this.f1375e = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1374d;
    }

    /* renamed from: b */
    public String m1158b() {
        return this.f1375e;
    }
}
