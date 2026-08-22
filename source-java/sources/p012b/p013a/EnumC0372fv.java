package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.fv */
/* loaded from: classes.dex */
public enum EnumC0372fv implements InterfaceC0394gq {
    CLIENT_STATS(1, "client_stats"),
    APP_INFO(2, "app_info"),
    DEVICE_INFO(3, "device_info"),
    MISC_INFO(4, "misc_info"),
    ACTIVATE_MSG(5, "activate_msg"),
    INSTANT_MSGS(6, "instant_msgs"),
    SESSIONS(7, "sessions"),
    IMPRINT(8, "imprint"),
    ID_TRACKING(9, "id_tracking"),
    ACTIVE_USER(10, "active_user"),
    CONTROL_POLICY(11, "control_policy");


    /* renamed from: l */
    private static final Map f1413l = new HashMap();

    /* renamed from: m */
    private final short f1415m;

    /* renamed from: n */
    private final String f1416n;

    static {
        Iterator it = EnumSet.allOf(EnumC0372fv.class).iterator();
        while (it.hasNext()) {
            EnumC0372fv enumC0372fv = (EnumC0372fv) it.next();
            f1413l.put(enumC0372fv.m1212b(), enumC0372fv);
        }
    }

    EnumC0372fv(short s, String str) {
        this.f1415m = s;
        this.f1416n = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1415m;
    }

    /* renamed from: b */
    public String m1212b() {
        return this.f1416n;
    }
}
