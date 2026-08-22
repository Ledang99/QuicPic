package p012b.p013a;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* renamed from: b.a.he */
/* loaded from: classes.dex */
public class C0409he extends AbstractC0418hn {

    /* renamed from: f */
    private static final C0423hs f1498f = new C0423hs();

    /* renamed from: a */
    protected boolean f1499a;

    /* renamed from: b */
    protected boolean f1500b;

    /* renamed from: c */
    protected int f1501c;

    /* renamed from: d */
    protected boolean f1502d;

    /* renamed from: g */
    private byte[] f1503g;

    /* renamed from: h */
    private byte[] f1504h;

    /* renamed from: i */
    private byte[] f1505i;

    /* renamed from: j */
    private byte[] f1506j;

    /* renamed from: k */
    private byte[] f1507k;

    /* renamed from: l */
    private byte[] f1508l;

    /* renamed from: m */
    private byte[] f1509m;

    /* renamed from: n */
    private byte[] f1510n;

    public C0409he(AbstractC0432ia abstractC0432ia, boolean z, boolean z2) {
        super(abstractC0432ia);
        this.f1499a = false;
        this.f1500b = true;
        this.f1502d = false;
        this.f1503g = new byte[1];
        this.f1504h = new byte[2];
        this.f1505i = new byte[4];
        this.f1506j = new byte[8];
        this.f1507k = new byte[1];
        this.f1508l = new byte[2];
        this.f1509m = new byte[4];
        this.f1510n = new byte[8];
        this.f1499a = z;
        this.f1500b = z2;
    }

    /* renamed from: a */
    private int m1338a(byte[] bArr, int i, int i2) {
        m1357d(i2);
        return this.f1545e.m1431d(bArr, i, i2);
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1339a() {
    }

    /* renamed from: a */
    public void m1340a(byte b2) {
        this.f1503g[0] = b2;
        this.f1545e.mo1422b(this.f1503g, 0, 1);
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1341a(double d) {
        mo1343a(Double.doubleToLongBits(d));
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1342a(int i) {
        this.f1505i[0] = (byte) ((i >> 24) & 255);
        this.f1505i[1] = (byte) ((i >> 16) & 255);
        this.f1505i[2] = (byte) ((i >> 8) & 255);
        this.f1505i[3] = (byte) (i & 255);
        this.f1545e.mo1422b(this.f1505i, 0, 4);
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1343a(long j) {
        this.f1506j[0] = (byte) ((j >> 56) & 255);
        this.f1506j[1] = (byte) ((j >> 48) & 255);
        this.f1506j[2] = (byte) ((j >> 40) & 255);
        this.f1506j[3] = (byte) ((j >> 32) & 255);
        this.f1506j[4] = (byte) ((j >> 24) & 255);
        this.f1506j[5] = (byte) ((j >> 16) & 255);
        this.f1506j[6] = (byte) ((j >> 8) & 255);
        this.f1506j[7] = (byte) (255 & j);
        this.f1545e.mo1422b(this.f1506j, 0, 8);
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1344a(C0415hk c0415hk) {
        m1340a(c0415hk.f1538b);
        mo1350a(c0415hk.f1539c);
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1345a(C0416hl c0416hl) {
        m1340a(c0416hl.f1540a);
        mo1342a(c0416hl.f1541b);
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1346a(C0417hm c0417hm) {
        m1340a(c0417hm.f1542a);
        m1340a(c0417hm.f1543b);
        mo1342a(c0417hm.f1544c);
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1347a(C0423hs c0423hs) {
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1348a(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            mo1342a(bytes.length);
            this.f1545e.mo1422b(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException e) {
            throw new C0393gp("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1349a(ByteBuffer byteBuffer) {
        int limit = byteBuffer.limit() - byteBuffer.position();
        mo1342a(limit);
        this.f1545e.mo1422b(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), limit);
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1350a(short s) {
        this.f1504h[0] = (byte) ((s >> 8) & 255);
        this.f1504h[1] = (byte) (s & 255);
        this.f1545e.mo1422b(this.f1504h, 0, 2);
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1351a(boolean z) {
        m1340a(z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: b */
    public String m1352b(int i) {
        try {
            m1357d(i);
            byte[] bArr = new byte[i];
            this.f1545e.m1431d(bArr, 0, i);
            return new String(bArr, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new C0393gp("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: b */
    public void mo1353b() {
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: c */
    public void mo1354c() {
        m1340a((byte) 0);
    }

    /* renamed from: c */
    public void m1355c(int i) {
        this.f1501c = i;
        this.f1502d = true;
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: d */
    public void mo1356d() {
    }

    /* renamed from: d */
    protected void m1357d(int i) {
        if (i < 0) {
            throw new C0419ho("Negative length: " + i);
        }
        if (this.f1502d) {
            this.f1501c -= i;
            if (this.f1501c < 0) {
                throw new C0419ho("Message length exceeded: " + i);
            }
        }
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: e */
    public void mo1358e() {
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: f */
    public C0423hs mo1359f() {
        return f1498f;
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: g */
    public void mo1360g() {
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: h */
    public C0415hk mo1361h() {
        byte mo1370q = mo1370q();
        return new C0415hk("", mo1370q, mo1370q == 0 ? (short) 0 : mo1371r());
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: i */
    public void mo1362i() {
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: j */
    public C0417hm mo1363j() {
        return new C0417hm(mo1370q(), mo1370q(), mo1372s());
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: k */
    public void mo1364k() {
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: l */
    public C0416hl mo1365l() {
        return new C0416hl(mo1370q(), mo1372s());
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: m */
    public void mo1366m() {
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: n */
    public C0422hr mo1367n() {
        return new C0422hr(mo1370q(), mo1372s());
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: o */
    public void mo1368o() {
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: p */
    public boolean mo1369p() {
        return mo1370q() == 1;
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: q */
    public byte mo1370q() {
        if (this.f1545e.mo1429d() < 1) {
            m1338a(this.f1507k, 0, 1);
            return this.f1507k[0];
        }
        byte b2 = this.f1545e.mo1426b()[this.f1545e.mo1427c()];
        this.f1545e.mo1424a(1);
        return b2;
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: r */
    public short mo1371r() {
        int i = 0;
        byte[] bArr = this.f1508l;
        if (this.f1545e.mo1429d() >= 2) {
            bArr = this.f1545e.mo1426b();
            i = this.f1545e.mo1427c();
            this.f1545e.mo1424a(2);
        } else {
            m1338a(this.f1508l, 0, 2);
        }
        return (short) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: s */
    public int mo1372s() {
        int i = 0;
        byte[] bArr = this.f1509m;
        if (this.f1545e.mo1429d() >= 4) {
            bArr = this.f1545e.mo1426b();
            i = this.f1545e.mo1427c();
            this.f1545e.mo1424a(4);
        } else {
            m1338a(this.f1509m, 0, 4);
        }
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: t */
    public long mo1373t() {
        int i = 0;
        byte[] bArr = this.f1510n;
        if (this.f1545e.mo1429d() >= 8) {
            bArr = this.f1545e.mo1426b();
            i = this.f1545e.mo1427c();
            this.f1545e.mo1424a(8);
        } else {
            m1338a(this.f1510n, 0, 8);
        }
        return (bArr[i + 7] & 255) | ((bArr[i] & 255) << 56) | ((bArr[i + 1] & 255) << 48) | ((bArr[i + 2] & 255) << 40) | ((bArr[i + 3] & 255) << 32) | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 6] & 255) << 8);
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: u */
    public double mo1374u() {
        return Double.longBitsToDouble(mo1373t());
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: v */
    public String mo1375v() {
        int mo1372s = mo1372s();
        if (this.f1545e.mo1429d() < mo1372s) {
            return m1352b(mo1372s);
        }
        try {
            String str = new String(this.f1545e.mo1426b(), this.f1545e.mo1427c(), mo1372s, "UTF-8");
            this.f1545e.mo1424a(mo1372s);
            return str;
        } catch (UnsupportedEncodingException e) {
            throw new C0393gp("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: w */
    public ByteBuffer mo1376w() {
        int mo1372s = mo1372s();
        m1357d(mo1372s);
        if (this.f1545e.mo1429d() >= mo1372s) {
            ByteBuffer wrap = ByteBuffer.wrap(this.f1545e.mo1426b(), this.f1545e.mo1427c(), mo1372s);
            this.f1545e.mo1424a(mo1372s);
            return wrap;
        }
        byte[] bArr = new byte[mo1372s];
        this.f1545e.m1431d(bArr, 0, mo1372s);
        return ByteBuffer.wrap(bArr);
    }
}
