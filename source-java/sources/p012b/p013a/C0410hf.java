package p012b.p013a;

/* renamed from: b.a.hf */
/* loaded from: classes.dex */
public class C0410hf implements InterfaceC0420hp {

    /* renamed from: a */
    protected boolean f1511a;

    /* renamed from: b */
    protected boolean f1512b;

    /* renamed from: c */
    protected int f1513c;

    public C0410hf() {
        this(false, true);
    }

    public C0410hf(boolean z, boolean z2) {
        this(z, z2, 0);
    }

    public C0410hf(boolean z, boolean z2, int i) {
        this.f1511a = false;
        this.f1512b = true;
        this.f1511a = z;
        this.f1512b = z2;
        this.f1513c = i;
    }

    @Override // p012b.p013a.InterfaceC0420hp
    /* renamed from: a */
    public AbstractC0418hn mo1377a(AbstractC0432ia abstractC0432ia) {
        C0409he c0409he = new C0409he(abstractC0432ia, this.f1511a, this.f1512b);
        if (this.f1513c != 0) {
            c0409he.m1355c(this.f1513c);
        }
        return c0409he;
    }
}
