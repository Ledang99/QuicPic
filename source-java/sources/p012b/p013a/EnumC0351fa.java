package p012b.p013a;

/* renamed from: b.a.fa */
/* loaded from: classes.dex */
public enum EnumC0351fa {
    ANDROID(0),
    IOS(1),
    WINDOWS_PHONE(2),
    WINDOWS_RT(3);


    /* renamed from: e */
    private final int f1331e;

    EnumC0351fa(int i) {
        this.f1331e = i;
    }

    /* renamed from: a */
    public static EnumC0351fa m1102a(int i) {
        switch (i) {
            case 0:
                return ANDROID;
            case 1:
                return IOS;
            case 2:
                return WINDOWS_PHONE;
            case 3:
                return WINDOWS_RT;
            default:
                return null;
        }
    }

    /* renamed from: a */
    public int m1103a() {
        return this.f1331e;
    }
}
