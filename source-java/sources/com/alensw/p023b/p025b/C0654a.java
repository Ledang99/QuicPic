package com.alensw.p023b.p025b;

/* renamed from: com.alensw.b.b.a */
/* loaded from: classes.dex */
public class C0654a extends C0656c {
    @Override // com.alensw.p023b.p025b.C0656c, java.util.Comparator
    /* renamed from: a */
    public int compare(String str, String str2) {
        int compare;
        int i;
        int i2;
        int length = str != null ? str.length() : 0;
        int length2 = str2 != null ? str2.length() : 0;
        int i3 = 0;
        int i4 = 0;
        while (i4 < length && i3 < length2) {
            char charAt = str.charAt(i4);
            char charAt2 = str2.charAt(i3);
            boolean z = charAt >= '0' && charAt <= '9';
            boolean z2 = charAt2 >= '0' && charAt2 <= '9';
            if (z && z2) {
                long j = charAt - '0';
                long j2 = charAt2 - '0';
                i = i4 + 1;
                i2 = i3 + 1;
                while (i < length) {
                    char charAt3 = str.charAt(i);
                    if (charAt3 < '0' || charAt3 > '9') {
                        break;
                    }
                    i++;
                    j = (j * 10) + (charAt3 - '0');
                }
                while (i2 < length2) {
                    char charAt4 = str2.charAt(i2);
                    if (charAt4 < '0' || charAt4 > '9') {
                        break;
                    }
                    i2++;
                    j2 = (j2 * 10) + (charAt4 - '0');
                }
                if (j == j2) {
                    int i5 = i - i4;
                    int i6 = i2 - i3;
                    compare = i5 == i6 ? 0 : i6 - i5;
                } else {
                    compare = j < j2 ? -1 : 1;
                }
            } else if (charAt == charAt2) {
                compare = 0;
                i = i4 + 1;
                i2 = i3 + 1;
            } else {
                compare = super.compare(str.substring(i4), str2.substring(i3));
                i = i4 + 1;
                i2 = i3 + 1;
            }
            if (compare != 0) {
                return compare;
            }
            i3 = i2;
            i4 = i;
        }
        return length - length2;
    }
}
