package p012b.p013a;

import java.util.Collections;
import java.util.EnumMap;
import java.util.Map;

/* renamed from: b.a.ej */
/* loaded from: classes.dex */
public class C0333ej extends AbstractC0396gs {

    /* renamed from: a */
    public static final Map f1283a;

    /* renamed from: d */
    private static final C0423hs f1284d = new C0423hs("PropertyValue");

    /* renamed from: e */
    private static final C0415hk f1285e = new C0415hk("string_value", (byte) 11, 1);

    /* renamed from: f */
    private static final C0415hk f1286f = new C0415hk("long_value", (byte) 10, 2);

    static {
        EnumMap enumMap = new EnumMap(EnumC0335el.class);
        enumMap.put((EnumMap) EnumC0335el.STRING_VALUE, (EnumC0335el) new C0403gz("string_value", (byte) 3, new C0405ha((byte) 11)));
        enumMap.put((EnumMap) EnumC0335el.LONG_VALUE, (EnumC0335el) new C0403gz("long_value", (byte) 3, new C0405ha((byte) 10)));
        f1283a = Collections.unmodifiableMap(enumMap);
        C0403gz.m1336a(C0333ej.class, f1283a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p012b.p013a.AbstractC0396gs
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public EnumC0335el mo1059b(short s) {
        return EnumC0335el.m1063b(s);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p012b.p013a.AbstractC0396gs
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public C0415hk mo1052a(EnumC0335el enumC0335el) {
        switch (C0334ek.f1287a[enumC0335el.ordinal()]) {
            case 1:
                return f1285e;
            case 2:
                return f1286f;
            default:
                throw new IllegalArgumentException("Unknown field id " + enumC0335el);
        }
    }

    @Override // p012b.p013a.AbstractC0396gs
    /* renamed from: a */
    protected C0423hs mo1053a() {
        return f1284d;
    }

    @Override // p012b.p013a.AbstractC0396gs
    /* renamed from: a */
    protected Object mo1054a(AbstractC0418hn abstractC0418hn, C0415hk c0415hk) {
        EnumC0335el m1062a = EnumC0335el.m1062a(c0415hk.f1539c);
        if (m1062a == null) {
            return null;
        }
        switch (C0334ek.f1287a[m1062a.ordinal()]) {
            case 1:
                if (c0415hk.f1538b == f1285e.f1538b) {
                    return abstractC0418hn.mo1375v();
                }
                C0421hq.m1415a(abstractC0418hn, c0415hk.f1538b);
                return null;
            case 2:
                if (c0415hk.f1538b == f1286f.f1538b) {
                    return Long.valueOf(abstractC0418hn.mo1373t());
                }
                C0421hq.m1415a(abstractC0418hn, c0415hk.f1538b);
                return null;
            default:
                throw new IllegalStateException("setField wasn't null, but didn't match any of the case statements!");
        }
    }

    @Override // p012b.p013a.AbstractC0396gs
    /* renamed from: a */
    protected Object mo1055a(AbstractC0418hn abstractC0418hn, short s) {
        EnumC0335el m1062a = EnumC0335el.m1062a(s);
        if (m1062a == null) {
            throw new C0419ho("Couldn't find a field with field id " + ((int) s));
        }
        switch (C0334ek.f1287a[m1062a.ordinal()]) {
            case 1:
                return abstractC0418hn.mo1375v();
            case 2:
                return Long.valueOf(abstractC0418hn.mo1373t());
            default:
                throw new IllegalStateException("setField wasn't null, but didn't match any of the case statements!");
        }
    }

    /* renamed from: a */
    public void m1056a(long j) {
        this.f1484c = EnumC0335el.LONG_VALUE;
        this.f1483b = Long.valueOf(j);
    }

    /* renamed from: a */
    public void m1057a(String str) {
        if (str == null) {
            throw new NullPointerException();
        }
        this.f1484c = EnumC0335el.STRING_VALUE;
        this.f1483b = str;
    }

    /* renamed from: a */
    public boolean m1058a(C0333ej c0333ej) {
        return c0333ej != null && m1327b() == c0333ej.m1327b() && m1328c().equals(c0333ej.m1328c());
    }

    @Override // p012b.p013a.AbstractC0396gs
    /* renamed from: c */
    protected void mo1060c(AbstractC0418hn abstractC0418hn) {
        switch (C0334ek.f1287a[((EnumC0335el) this.f1484c).ordinal()]) {
            case 1:
                abstractC0418hn.mo1348a((String) this.f1483b);
                return;
            case 2:
                abstractC0418hn.mo1343a(((Long) this.f1483b).longValue());
                return;
            default:
                throw new IllegalStateException("Cannot write union with unknown field " + this.f1484c);
        }
    }

    @Override // p012b.p013a.AbstractC0396gs
    /* renamed from: d */
    protected void mo1061d(AbstractC0418hn abstractC0418hn) {
        switch (C0334ek.f1287a[((EnumC0335el) this.f1484c).ordinal()]) {
            case 1:
                abstractC0418hn.mo1348a((String) this.f1483b);
                return;
            case 2:
                abstractC0418hn.mo1343a(((Long) this.f1483b).longValue());
                return;
            default:
                throw new IllegalStateException("Cannot write union with unknown field " + this.f1484c);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof C0333ej) {
            return m1058a((C0333ej) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }
}
