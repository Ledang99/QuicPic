package p012b.p013a;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import org.apache.commons.logging.impl.SimpleLog;

/* renamed from: b.a.hi */
/* loaded from: classes.dex */
public class C0413hi extends AbstractC0418hn {

    /* renamed from: d */
    private static final C0423hs f1524d = new C0423hs("");

    /* renamed from: f */
    private static final C0415hk f1525f = new C0415hk("", (byte) 0, 0);

    /* renamed from: g */
    private static final byte[] f1526g = new byte[16];

    /* renamed from: a */
    byte[] f1527a;

    /* renamed from: b */
    byte[] f1528b;

    /* renamed from: c */
    byte[] f1529c;

    /* renamed from: h */
    private C0387gj f1530h;

    /* renamed from: i */
    private short f1531i;

    /* renamed from: j */
    private C0415hk f1532j;

    /* renamed from: k */
    private Boolean f1533k;

    /* renamed from: l */
    private final long f1534l;

    /* renamed from: m */
    private byte[] f1535m;

    static {
        f1526g[0] = 0;
        f1526g[2] = 1;
        f1526g[3] = 3;
        f1526g[6] = 4;
        f1526g[8] = 5;
        f1526g[10] = 6;
        f1526g[4] = 7;
        f1526g[11] = 8;
        f1526g[15] = 9;
        f1526g[14] = 10;
        f1526g[13] = 11;
        f1526g[12] = 12;
    }

    public C0413hi(AbstractC0432ia abstractC0432ia, long j) {
        super(abstractC0432ia);
        this.f1530h = new C0387gj(15);
        this.f1531i = (short) 0;
        this.f1532j = null;
        this.f1533k = null;
        this.f1527a = new byte[5];
        this.f1528b = new byte[10];
        this.f1535m = new byte[1];
        this.f1529c = new byte[1];
        this.f1534l = j;
    }

    /* renamed from: A */
    private long m1392A() {
        int i = 0;
        long j = 0;
        if (this.f1545e.mo1429d() >= 10) {
            byte[] mo1426b = this.f1545e.mo1426b();
            int mo1427c = this.f1545e.mo1427c();
            int i2 = 0;
            while (true) {
                j |= (r6 & Byte.MAX_VALUE) << i2;
                if ((mo1426b[mo1427c + i] & 128) != 128) {
                    break;
                }
                i2 += 7;
                i++;
            }
            this.f1545e.mo1424a(i + 1);
        } else {
            while (true) {
                j |= (r1 & Byte.MAX_VALUE) << i;
                if ((mo1370q() & 128) != 128) {
                    break;
                }
                i += 7;
            }
        }
        return j;
    }

    /* renamed from: a */
    private long m1393a(byte[] bArr) {
        return ((bArr[7] & 255) << 56) | ((bArr[6] & 255) << 48) | ((bArr[5] & 255) << 40) | ((bArr[4] & 255) << 32) | ((bArr[3] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[1] & 255) << 8) | (bArr[0] & 255);
    }

    /* renamed from: a */
    private void m1394a(long j, byte[] bArr, int i) {
        bArr[i + 0] = (byte) (j & 255);
        bArr[i + 1] = (byte) ((j >> 8) & 255);
        bArr[i + 2] = (byte) ((j >> 16) & 255);
        bArr[i + 3] = (byte) ((j >> 24) & 255);
        bArr[i + 4] = (byte) ((j >> 32) & 255);
        bArr[i + 5] = (byte) ((j >> 40) & 255);
        bArr[i + 6] = (byte) ((j >> 48) & 255);
        bArr[i + 7] = (byte) ((j >> 56) & 255);
    }

    /* renamed from: a */
    private void m1395a(C0415hk c0415hk, byte b2) {
        if (b2 == -1) {
            b2 = m1406e(c0415hk.f1538b);
        }
        if (c0415hk.f1539c <= this.f1531i || c0415hk.f1539c - this.f1531i > 15) {
            m1397b(b2);
            mo1350a(c0415hk.f1539c);
        } else {
            m1405d(((c0415hk.f1539c - this.f1531i) << 4) | b2);
        }
        this.f1531i = c0415hk.f1539c;
    }

    /* renamed from: a */
    private void m1396a(byte[] bArr, int i, int i2) {
        m1398b(i2);
        this.f1545e.mo1422b(bArr, i, i2);
    }

    /* renamed from: b */
    private void m1397b(byte b2) {
        this.f1535m[0] = b2;
        this.f1545e.m1430b(this.f1535m);
    }

    /* renamed from: b */
    private void m1398b(int i) {
        int i2 = 0;
        while ((i & (-128)) != 0) {
            this.f1527a[i2] = (byte) ((i & 127) | 128);
            i >>>= 7;
            i2++;
        }
        this.f1527a[i2] = (byte) i;
        this.f1545e.mo1422b(this.f1527a, 0, i2 + 1);
    }

    /* renamed from: b */
    private void m1399b(long j) {
        int i = 0;
        while (((-128) & j) != 0) {
            this.f1528b[i] = (byte) ((127 & j) | 128);
            j >>>= 7;
            i++;
        }
        this.f1528b[i] = (byte) j;
        this.f1545e.mo1422b(this.f1528b, 0, i + 1);
    }

    /* renamed from: c */
    private int m1400c(int i) {
        return (i << 1) ^ (i >> 31);
    }

    /* renamed from: c */
    private long m1401c(long j) {
        return (j << 1) ^ (j >> 63);
    }

    /* renamed from: c */
    private boolean m1402c(byte b2) {
        int i = b2 & 15;
        return i == 1 || i == 2;
    }

    /* renamed from: d */
    private byte m1403d(byte b2) {
        switch ((byte) (b2 & 15)) {
            case 0:
                return (byte) 0;
            case 1:
            case 2:
                return (byte) 2;
            case 3:
                return (byte) 3;
            case 4:
                return (byte) 6;
            case 5:
                return (byte) 8;
            case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                return (byte) 10;
            case SimpleLog.LOG_LEVEL_OFF /* 7 */:
                return (byte) 4;
            case 8:
                return (byte) 11;
            case 9:
                return (byte) 15;
            case 10:
                return (byte) 14;
            case 11:
                return (byte) 13;
            case 12:
                return (byte) 12;
            default:
                throw new C0419ho("don't know what type: " + ((int) ((byte) (b2 & 15))));
        }
    }

    /* renamed from: d */
    private long m1404d(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    /* renamed from: d */
    private void m1405d(int i) {
        m1397b((byte) i);
    }

    /* renamed from: e */
    private byte m1406e(byte b2) {
        return f1526g[b2];
    }

    /* renamed from: e */
    private byte[] m1407e(int i) {
        if (i == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i];
        this.f1545e.m1431d(bArr, 0, i);
        return bArr;
    }

    /* renamed from: f */
    private void m1408f(int i) {
        if (i < 0) {
            throw new C0419ho("Negative length: " + i);
        }
        if (this.f1534l != -1 && i > this.f1534l) {
            throw new C0419ho("Length exceeded max allowed: " + i);
        }
    }

    /* renamed from: g */
    private int m1409g(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    /* renamed from: z */
    private int m1410z() {
        int i = 0;
        if (this.f1545e.mo1429d() >= 5) {
            byte[] mo1426b = this.f1545e.mo1426b();
            int mo1427c = this.f1545e.mo1427c();
            int i2 = 0;
            int i3 = 0;
            while (true) {
                byte b2 = mo1426b[mo1427c + i];
                i3 |= (b2 & Byte.MAX_VALUE) << i2;
                if ((b2 & 128) != 128) {
                    this.f1545e.mo1424a(i + 1);
                    return i3;
                }
                i2 += 7;
                i++;
            }
        } else {
            int i4 = 0;
            while (true) {
                byte mo1370q = mo1370q();
                i4 |= (mo1370q & Byte.MAX_VALUE) << i;
                if ((mo1370q & 128) != 128) {
                    return i4;
                }
                i += 7;
            }
        }
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1339a() {
        this.f1531i = this.f1530h.m1313a();
    }

    /* renamed from: a */
    public void m1411a(byte b2) {
        m1397b(b2);
    }

    /* renamed from: a */
    protected void m1412a(byte b2, int i) {
        if (i <= 14) {
            m1405d((i << 4) | m1406e(b2));
        } else {
            m1405d(m1406e(b2) | 240);
            m1398b(i);
        }
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1341a(double d) {
        byte[] bArr = {0, 0, 0, 0, 0, 0, 0, 0};
        m1394a(Double.doubleToLongBits(d), bArr, 0);
        this.f1545e.m1430b(bArr);
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1342a(int i) {
        m1398b(m1400c(i));
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1343a(long j) {
        m1399b(m1401c(j));
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1344a(C0415hk c0415hk) {
        if (c0415hk.f1538b == 2) {
            this.f1532j = c0415hk;
        } else {
            m1395a(c0415hk, (byte) -1);
        }
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1345a(C0416hl c0416hl) {
        m1412a(c0416hl.f1540a, c0416hl.f1541b);
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1346a(C0417hm c0417hm) {
        if (c0417hm.f1544c == 0) {
            m1405d(0);
        } else {
            m1398b(c0417hm.f1544c);
            m1405d((m1406e(c0417hm.f1542a) << 4) | m1406e(c0417hm.f1543b));
        }
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1347a(C0423hs c0423hs) {
        this.f1530h.m1314a(this.f1531i);
        this.f1531i = (short) 0;
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1348a(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            m1396a(bytes, 0, bytes.length);
        } catch (UnsupportedEncodingException e) {
            throw new C0393gp("UTF-8 not supported!");
        }
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1349a(ByteBuffer byteBuffer) {
        m1396a(byteBuffer.array(), byteBuffer.position() + byteBuffer.arrayOffset(), byteBuffer.limit() - byteBuffer.position());
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1350a(short s) {
        m1398b(m1400c((int) s));
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: a */
    public void mo1351a(boolean z) {
        if (this.f1532j == null) {
            m1397b(z ? (byte) 1 : (byte) 2);
        } else {
            m1395a(this.f1532j, z ? (byte) 1 : (byte) 2);
            this.f1532j = null;
        }
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: b */
    public void mo1353b() {
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: c */
    public void mo1354c() {
        m1397b((byte) 0);
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: d */
    public void mo1356d() {
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: e */
    public void mo1358e() {
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: f */
    public C0423hs mo1359f() {
        this.f1530h.m1314a(this.f1531i);
        this.f1531i = (short) 0;
        return f1524d;
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: g */
    public void mo1360g() {
        this.f1531i = this.f1530h.m1313a();
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: h */
    public C0415hk mo1361h() {
        byte mo1370q = mo1370q();
        if (mo1370q == 0) {
            return f1525f;
        }
        short s = (short) ((mo1370q & 240) >> 4);
        C0415hk c0415hk = new C0415hk("", m1403d((byte) (mo1370q & 15)), s == 0 ? mo1371r() : (short) (s + this.f1531i));
        if (m1402c(mo1370q)) {
            this.f1533k = ((byte) (mo1370q & 15)) == 1 ? Boolean.TRUE : Boolean.FALSE;
        }
        this.f1531i = c0415hk.f1539c;
        return c0415hk;
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: i */
    public void mo1362i() {
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: j */
    public C0417hm mo1363j() {
        int m1410z = m1410z();
        byte mo1370q = m1410z == 0 ? (byte) 0 : mo1370q();
        return new C0417hm(m1403d((byte) (mo1370q >> 4)), m1403d((byte) (mo1370q & 15)), m1410z);
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: k */
    public void mo1364k() {
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: l */
    public C0416hl mo1365l() {
        byte mo1370q = mo1370q();
        int i = (mo1370q >> 4) & 15;
        if (i == 15) {
            i = m1410z();
        }
        return new C0416hl(m1403d(mo1370q), i);
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: m */
    public void mo1366m() {
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: n */
    public C0422hr mo1367n() {
        return new C0422hr(mo1365l());
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: o */
    public void mo1368o() {
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: p */
    public boolean mo1369p() {
        if (this.f1533k == null) {
            return mo1370q() == 1;
        }
        boolean booleanValue = this.f1533k.booleanValue();
        this.f1533k = null;
        return booleanValue;
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: q */
    public byte mo1370q() {
        if (this.f1545e.mo1429d() <= 0) {
            this.f1545e.m1431d(this.f1529c, 0, 1);
            return this.f1529c[0];
        }
        byte b2 = this.f1545e.mo1426b()[this.f1545e.mo1427c()];
        this.f1545e.mo1424a(1);
        return b2;
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: r */
    public short mo1371r() {
        return (short) m1409g(m1410z());
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: s */
    public int mo1372s() {
        return m1409g(m1410z());
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: t */
    public long mo1373t() {
        return m1404d(m1392A());
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: u */
    public double mo1374u() {
        byte[] bArr = new byte[8];
        this.f1545e.m1431d(bArr, 0, 8);
        return Double.longBitsToDouble(m1393a(bArr));
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: v */
    public String mo1375v() {
        String str;
        int m1410z = m1410z();
        m1408f(m1410z);
        if (m1410z == 0) {
            return "";
        }
        try {
            if (this.f1545e.mo1429d() >= m1410z) {
                str = new String(this.f1545e.mo1426b(), this.f1545e.mo1427c(), m1410z, "UTF-8");
                this.f1545e.mo1424a(m1410z);
            } else {
                str = new String(m1407e(m1410z), "UTF-8");
            }
            return str;
        } catch (UnsupportedEncodingException e) {
            throw new C0393gp("UTF-8 not supported!");
        }
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: w */
    public ByteBuffer mo1376w() {
        int m1410z = m1410z();
        m1408f(m1410z);
        if (m1410z == 0) {
            return ByteBuffer.wrap(new byte[0]);
        }
        byte[] bArr = new byte[m1410z];
        this.f1545e.m1431d(bArr, 0, m1410z);
        return ByteBuffer.wrap(bArr);
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: x */
    public void mo1413x() {
        this.f1530h.m1315b();
        this.f1531i = (short) 0;
    }
}
