package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.ba */
/* loaded from: classes.dex */
public enum EnumC0243ba implements InterfaceC0394gq {
    DEVICE_ID(1, "device_id"),
    IDMD5(2, "idmd5"),
    MAC_ADDRESS(3, "mac_address"),
    OPEN_UDID(4, "open_udid"),
    MODEL(5, "model"),
    CPU(6, "cpu"),
    OS(7, "os"),
    OS_VERSION(8, "os_version"),
    RESOLUTION(9, "resolution"),
    IS_JAILBROKEN(10, "is_jailbroken"),
    IS_PIRATED(11, "is_pirated"),
    DEVICE_BOARD(12, "device_board"),
    DEVICE_BRAND(13, "device_brand"),
    DEVICE_MANUTIME(14, "device_manutime"),
    DEVICE_MANUFACTURER(15, "device_manufacturer"),
    DEVICE_MANUID(16, "device_manuid"),
    DEVICE_NAME(17, "device_name");


    /* renamed from: r */
    private static final Map f1034r = new HashMap();

    /* renamed from: s */
    private final short f1036s;

    /* renamed from: t */
    private final String f1037t;

    static {
        Iterator it = EnumSet.allOf(EnumC0243ba.class).iterator();
        while (it.hasNext()) {
            EnumC0243ba enumC0243ba = (EnumC0243ba) it.next();
            f1034r.put(enumC0243ba.m766b(), enumC0243ba);
        }
    }

    EnumC0243ba(short s, String str) {
        this.f1036s = s;
        this.f1037t = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1036s;
    }

    /* renamed from: b */
    public String m766b() {
        return this.f1037t;
    }
}
