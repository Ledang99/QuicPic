package p000a.p006d;

/* renamed from: a.d.bl */
/* loaded from: classes.dex */
public class C0093bl implements InterfaceC0129i {

    /* renamed from: b */
    protected String f440b;

    /* renamed from: c */
    protected int f441c;

    /* renamed from: d */
    protected String f442d;

    public C0093bl() {
    }

    public C0093bl(String str, int i, String str2) {
        this.f440b = str;
        this.f441c = i;
        this.f442d = str2;
    }

    @Override // p000a.p006d.InterfaceC0129i
    /* renamed from: a */
    public String mo244a() {
        return this.f440b;
    }

    @Override // p000a.p006d.InterfaceC0129i
    /* renamed from: b */
    public int mo245b() {
        switch (this.f441c & 65535) {
            case 1:
                return 32;
            case 2:
            default:
                return 8;
            case 3:
                return 16;
        }
    }

    @Override // p000a.p006d.InterfaceC0129i
    /* renamed from: c */
    public int mo246c() {
        return 17;
    }

    @Override // p000a.p006d.InterfaceC0129i
    /* renamed from: d */
    public long mo247d() {
        return 0L;
    }

    @Override // p000a.p006d.InterfaceC0129i
    /* renamed from: e */
    public long mo248e() {
        return 0L;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C0093bl) {
            return this.f440b.equals(((C0093bl) obj).f440b);
        }
        return false;
    }

    @Override // p000a.p006d.InterfaceC0129i
    /* renamed from: f */
    public long mo249f() {
        return 0L;
    }

    public int hashCode() {
        return this.f440b.hashCode();
    }
}
