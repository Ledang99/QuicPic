package p012b.p013a;

/* renamed from: b.a.gj */
/* loaded from: classes.dex */
public class C0387gj {

    /* renamed from: a */
    private short[] f1474a;

    /* renamed from: b */
    private int f1475b = -1;

    public C0387gj(int i) {
        this.f1474a = new short[i];
    }

    /* renamed from: c */
    private void m1312c() {
        short[] sArr = new short[this.f1474a.length * 2];
        System.arraycopy(this.f1474a, 0, sArr, 0, this.f1474a.length);
        this.f1474a = sArr;
    }

    /* renamed from: a */
    public short m1313a() {
        short[] sArr = this.f1474a;
        int i = this.f1475b;
        this.f1475b = i - 1;
        return sArr[i];
    }

    /* renamed from: a */
    public void m1314a(short s) {
        if (this.f1474a.length == this.f1475b + 1) {
            m1312c();
        }
        short[] sArr = this.f1474a;
        int i = this.f1475b + 1;
        this.f1475b = i;
        sArr[i] = s;
    }

    /* renamed from: b */
    public void m1315b() {
        this.f1475b = -1;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("<ShortStack vector:[");
        for (int i = 0; i < this.f1474a.length; i++) {
            if (i != 0) {
                sb.append(" ");
            }
            if (i == this.f1475b) {
                sb.append(">>");
            }
            sb.append((int) this.f1474a[i]);
            if (i == this.f1475b) {
                sb.append("<<");
            }
        }
        sb.append("]>");
        return sb.toString();
    }
}
