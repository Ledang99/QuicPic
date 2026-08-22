package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.http.cookie.ClientCookie;

/* renamed from: b.a.af */
/* loaded from: classes.dex */
public enum EnumC0221af implements InterfaceC0394gq {
    KEY(1, "key"),
    VERSION(2, ClientCookie.VERSION_ATTR),
    VERSION_INDEX(3, "version_index"),
    PACKAGE_NAME(4, "package_name"),
    SDK_TYPE(5, "sdk_type"),
    SDK_VERSION(6, "sdk_version"),
    CHANNEL(7, "channel"),
    WRAPPER_TYPE(8, "wrapper_type"),
    WRAPPER_VERSION(9, "wrapper_version"),
    VERTICAL_TYPE(10, "vertical_type");


    /* renamed from: k */
    private static final Map f937k = new HashMap();

    /* renamed from: l */
    private final short f939l;

    /* renamed from: m */
    private final String f940m;

    static {
        Iterator it = EnumSet.allOf(EnumC0221af.class).iterator();
        while (it.hasNext()) {
            EnumC0221af enumC0221af = (EnumC0221af) it.next();
            f937k.put(enumC0221af.m640b(), enumC0221af);
        }
    }

    EnumC0221af(short s, String str) {
        this.f939l = s;
        this.f940m = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f939l;
    }

    /* renamed from: b */
    public String m640b() {
        return this.f940m;
    }
}
