package p012b.p013a;

/* renamed from: b.a.gi */
/* loaded from: classes.dex */
public class C0386gi {
    /* renamed from: a */
    public static final byte m1307a(byte b2, int i, boolean z) {
        return (byte) m1308a((int) b2, i, z);
    }

    /* renamed from: a */
    public static final int m1308a(int i, int i2, boolean z) {
        return z ? (1 << i2) | i : m1311b(i, i2);
    }

    /* renamed from: a */
    public static final boolean m1309a(byte b2, int i) {
        return m1310a((int) b2, i);
    }

    /* renamed from: a */
    public static final boolean m1310a(int i, int i2) {
        return ((1 << i2) & i) != 0;
    }

    /* renamed from: b */
    public static final int m1311b(int i, int i2) {
        return ((1 << i2) ^ (-1)) & i;
    }
}
