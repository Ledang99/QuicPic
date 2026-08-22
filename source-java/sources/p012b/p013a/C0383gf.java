package p012b.p013a;

import android.content.Context;
import android.content.SharedPreferences;
import com.p045c.p046a.C1412l;

/* renamed from: b.a.gf */
/* loaded from: classes.dex */
public class C0383gf {

    /* renamed from: e */
    private String f1462e;

    /* renamed from: j */
    private int f1467j;

    /* renamed from: k */
    private int f1468k;

    /* renamed from: l */
    private byte[] f1469l;

    /* renamed from: m */
    private byte[] f1470m;

    /* renamed from: a */
    private final byte[] f1458a = {0, 0, 0, 0, 0, 0, 0, 0};

    /* renamed from: b */
    private final int f1459b = 1;

    /* renamed from: c */
    private final int f1460c = 0;

    /* renamed from: d */
    private String f1461d = "1.0";

    /* renamed from: f */
    private byte[] f1463f = null;

    /* renamed from: g */
    private byte[] f1464g = null;

    /* renamed from: h */
    private byte[] f1465h = null;

    /* renamed from: i */
    private int f1466i = 0;

    /* renamed from: n */
    private boolean f1471n = false;

    private C0383gf(byte[] bArr, String str, byte[] bArr2) {
        this.f1462e = null;
        this.f1467j = 0;
        this.f1468k = 0;
        this.f1469l = null;
        this.f1470m = null;
        if (bArr == null || bArr.length == 0) {
            throw new Exception("entity is null or empty");
        }
        this.f1462e = str;
        this.f1468k = bArr.length;
        this.f1469l = C0384gg.m1298a(bArr);
        this.f1467j = (int) (System.currentTimeMillis() / 1000);
        this.f1470m = bArr2;
    }

    /* renamed from: a */
    public static C0383gf m1286a(Context context, String str, byte[] bArr) {
        try {
            String m1271k = C0381gd.m1271k(context);
            String m1263c = C0381gd.m1263c(context);
            SharedPreferences m1509a = C0456iy.m1509a(context);
            String string = m1509a.getString("signature", null);
            int i = m1509a.getInt("serial", 1);
            C0383gf c0383gf = new C0383gf(bArr, str, (m1263c + m1271k).getBytes());
            c0383gf.m1294a(string);
            c0383gf.m1293a(i);
            c0383gf.m1296b();
            m1509a.edit().putInt("serial", i + 1).putString("signature", c0383gf.m1292a()).commit();
            return c0383gf;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    public static String m1287a(Context context) {
        SharedPreferences m1509a = C0456iy.m1509a(context);
        if (m1509a == null) {
            return null;
        }
        return m1509a.getString("signature", null);
    }

    /* renamed from: a */
    private byte[] m1288a(byte[] bArr, int i) {
        byte[] m4587b = C1412l.m4587b(this.f1470m);
        byte[] m4587b2 = C1412l.m4587b(this.f1469l);
        int length = m4587b.length;
        byte[] bArr2 = new byte[length * 2];
        for (int i2 = 0; i2 < length; i2++) {
            bArr2[i2 * 2] = m4587b2[i2];
            bArr2[(i2 * 2) + 1] = m4587b[i2];
        }
        for (int i3 = 0; i3 < 2; i3++) {
            bArr2[i3] = bArr[i3];
            bArr2[(bArr2.length - i3) - 1] = bArr[(bArr.length - i3) - 1];
        }
        byte[] bArr3 = {(byte) (i & 255), (byte) ((i >> 8) & 255), (byte) ((i >> 16) & 255), (byte) (i >>> 24)};
        for (int i4 = 0; i4 < bArr2.length; i4++) {
            bArr2[i4] = (byte) (bArr2[i4] ^ bArr3[i4 % 4]);
        }
        return bArr2;
    }

    /* renamed from: b */
    public static C0383gf m1289b(Context context, String str, byte[] bArr) {
        try {
            String m1271k = C0381gd.m1271k(context);
            String m1263c = C0381gd.m1263c(context);
            SharedPreferences m1509a = C0456iy.m1509a(context);
            String string = m1509a.getString("signature", null);
            int i = m1509a.getInt("serial", 1);
            C0383gf c0383gf = new C0383gf(bArr, str, (m1263c + m1271k).getBytes());
            c0383gf.m1295a(true);
            c0383gf.m1294a(string);
            c0383gf.m1293a(i);
            c0383gf.m1296b();
            m1509a.edit().putInt("serial", i + 1).putString("signature", c0383gf.m1292a()).commit();
            return c0383gf;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: d */
    private byte[] m1290d() {
        return m1288a(this.f1458a, (int) (System.currentTimeMillis() / 1000));
    }

    /* renamed from: e */
    private byte[] m1291e() {
        return C1412l.m4587b((C1412l.m4584a(this.f1463f) + this.f1466i + this.f1467j + this.f1468k + C1412l.m4584a(this.f1464g)).getBytes());
    }

    /* renamed from: a */
    public String m1292a() {
        return C1412l.m4584a(this.f1463f);
    }

    /* renamed from: a */
    public void m1293a(int i) {
        this.f1466i = i;
    }

    /* renamed from: a */
    public void m1294a(String str) {
        this.f1463f = C1412l.m4585a(str);
    }

    /* renamed from: a */
    public void m1295a(boolean z) {
        this.f1471n = z;
    }

    /* renamed from: b */
    public void m1296b() {
        if (this.f1463f == null) {
            this.f1463f = m1290d();
        }
        if (this.f1471n) {
            byte[] bArr = new byte[16];
            try {
                System.arraycopy(this.f1463f, 1, bArr, 0, 16);
                this.f1469l = C1412l.m4586a(this.f1469l, bArr);
            } catch (Exception e) {
            }
        }
        this.f1464g = m1288a(this.f1463f, this.f1467j);
        this.f1465h = m1291e();
    }

    /* renamed from: c */
    public byte[] m1297c() {
        C0373fw c0373fw = new C0373fw();
        c0373fw.m1225a(this.f1461d);
        c0373fw.m1231b(this.f1462e);
        c0373fw.m1235c(C1412l.m4584a(this.f1463f));
        c0373fw.m1224a(this.f1466i);
        c0373fw.m1230b(this.f1467j);
        c0373fw.m1234c(this.f1468k);
        c0373fw.m1227a(this.f1469l);
        c0373fw.m1238d(this.f1471n ? 1 : 0);
        c0373fw.m1239d(C1412l.m4584a(this.f1464g));
        c0373fw.m1242e(C1412l.m4584a(this.f1465h));
        try {
            return new C0395gr().m1326a(c0373fw);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(String.format("version : %s\n", this.f1461d));
        sb.append(String.format("address : %s\n", this.f1462e));
        sb.append(String.format("signature : %s\n", C1412l.m4584a(this.f1463f)));
        sb.append(String.format("serial : %s\n", Integer.valueOf(this.f1466i)));
        sb.append(String.format("timestamp : %d\n", Integer.valueOf(this.f1467j)));
        sb.append(String.format("length : %d\n", Integer.valueOf(this.f1468k)));
        sb.append(String.format("guid : %s\n", C1412l.m4584a(this.f1464g)));
        sb.append(String.format("checksum : %s ", C1412l.m4584a(this.f1465h)));
        Object[] objArr = new Object[1];
        objArr[0] = Integer.valueOf(this.f1471n ? 1 : 0);
        sb.append(String.format("codex : %d", objArr));
        return sb.toString();
    }
}
