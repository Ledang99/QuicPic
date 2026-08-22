package p012b.p013a;

import java.util.BitSet;

/* renamed from: b.a.ht */
/* loaded from: classes.dex */
public final class C0424ht extends C0413hi {
    /* renamed from: a */
    public static BitSet m1417a(byte[] bArr) {
        BitSet bitSet = new BitSet();
        for (int i = 0; i < bArr.length * 8; i++) {
            if ((bArr[(bArr.length - (i / 8)) - 1] & (1 << (i % 8))) > 0) {
                bitSet.set(i);
            }
        }
        return bitSet;
    }

    /* renamed from: b */
    public static byte[] m1418b(BitSet bitSet, int i) {
        byte[] bArr = new byte[(int) Math.ceil(i / 8.0d)];
        for (int i2 = 0; i2 < bitSet.length(); i2++) {
            if (bitSet.get(i2)) {
                int length = (bArr.length - (i2 / 8)) - 1;
                bArr[length] = (byte) (bArr[length] | (1 << (i2 % 8)));
            }
        }
        return bArr;
    }

    /* renamed from: a */
    public void m1419a(BitSet bitSet, int i) {
        for (byte b2 : m1418b(bitSet, i)) {
            m1411a(b2);
        }
    }

    /* renamed from: b */
    public BitSet m1420b(int i) {
        int ceil = (int) Math.ceil(i / 8.0d);
        byte[] bArr = new byte[ceil];
        for (int i2 = 0; i2 < ceil; i2++) {
            bArr[i2] = mo1370q();
        }
        return m1417a(bArr);
    }

    @Override // p012b.p013a.AbstractC0418hn
    /* renamed from: y */
    public Class mo1414y() {
        return AbstractC0428hx.class;
    }
}
