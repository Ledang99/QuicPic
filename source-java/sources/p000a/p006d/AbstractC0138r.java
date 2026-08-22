package p000a.p006d;

/* renamed from: a.d.r */
/* loaded from: classes.dex */
public abstract class AbstractC0138r {

    /* renamed from: a */
    private static AbstractC0138r f632a;

    /* renamed from: b */
    private String f633b;

    /* renamed from: c */
    private C0143w f634c;

    /* renamed from: a */
    public static C0140t m308a(String str, C0143w c0143w) {
        C0140t m309a;
        if (f632a == null) {
            return null;
        }
        synchronized (f632a) {
            f632a.f633b = str;
            f632a.f634c = c0143w;
            m309a = f632a.m309a();
        }
        return m309a;
    }

    /* renamed from: a */
    protected C0140t m309a() {
        return null;
    }
}
