package p000a.p006d;

/* renamed from: a.d.c */
/* loaded from: classes.dex */
public class C0108c {

    /* renamed from: a */
    static Object[] f550a = new Object[16];

    /* renamed from: b */
    private static int f551b = 0;

    /* renamed from: a */
    static void m295a(AbstractC0073as abstractC0073as, AbstractC0074at abstractC0074at) {
        synchronized (f550a) {
            abstractC0073as.f302V = m297a();
            abstractC0074at.f321O = m297a();
        }
    }

    /* renamed from: a */
    public static void m296a(byte[] bArr) {
        synchronized (f550a) {
            if (f551b < 16) {
                for (int i = 0; i < 16; i++) {
                    if (f550a[i] == null) {
                        f550a[i] = bArr;
                        f551b++;
                        return;
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static byte[] m297a() {
        byte[] bArr;
        synchronized (f550a) {
            if (f551b > 0) {
                for (int i = 0; i < 16; i++) {
                    if (f550a[i] != null) {
                        bArr = (byte[]) f550a[i];
                        f550a[i] = null;
                        f551b--;
                        break;
                    }
                }
            }
            bArr = new byte[65535];
        }
        return bArr;
    }
}
