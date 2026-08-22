package p012b.p013a;

/* renamed from: b.a.k */
/* loaded from: classes.dex */
public enum EnumC0461k {
    ACCESS_TYPE_UNKNOWN(0),
    ACCESS_TYPE_2G_3G(1),
    ACCESS_TYPE_WIFI(2),
    ACCESS_TYPE_ETHERNET(3);


    /* renamed from: e */
    private final int f1634e;

    EnumC0461k(int i) {
        this.f1634e = i;
    }

    /* renamed from: a */
    public static EnumC0461k m1540a(int i) {
        switch (i) {
            case 0:
                return ACCESS_TYPE_UNKNOWN;
            case 1:
                return ACCESS_TYPE_2G_3G;
            case 2:
                return ACCESS_TYPE_WIFI;
            case 3:
                return ACCESS_TYPE_ETHERNET;
            default:
                return null;
        }
    }

    /* renamed from: a */
    public int m1541a() {
        return this.f1634e;
    }
}
