package p012b.p013a;

import java.nio.ByteBuffer;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;

/* renamed from: b.a.gl */
/* loaded from: classes.dex */
public final class C0389gl {

    /* renamed from: a */
    private static final Comparator f1476a = new C0391gn();

    /* renamed from: a */
    public static int m1316a(byte b2, byte b3) {
        if (b2 < b3) {
            return -1;
        }
        return b3 < b2 ? 1 : 0;
    }

    /* renamed from: a */
    public static int m1317a(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i2 < i ? 1 : 0;
    }

    /* renamed from: a */
    public static int m1318a(Comparable comparable, Comparable comparable2) {
        return comparable.compareTo(comparable2);
    }

    /* renamed from: a */
    public static int m1319a(List list, List list2) {
        int m1317a = m1317a(list.size(), list2.size());
        if (m1317a != 0) {
            return m1317a;
        }
        for (int i = 0; i < list.size(); i++) {
            int compare = f1476a.compare(list.get(i), list2.get(i));
            if (compare != 0) {
                return compare;
            }
        }
        return 0;
    }

    /* renamed from: a */
    public static int m1320a(Map map, Map map2) {
        int m1317a = m1317a(map.size(), map2.size());
        if (m1317a != 0) {
            return m1317a;
        }
        TreeMap treeMap = new TreeMap(f1476a);
        treeMap.putAll(map);
        Iterator it = treeMap.entrySet().iterator();
        TreeMap treeMap2 = new TreeMap(f1476a);
        treeMap2.putAll(map2);
        Iterator it2 = treeMap2.entrySet().iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Map.Entry entry2 = (Map.Entry) it2.next();
            int compare = f1476a.compare(entry.getKey(), entry2.getKey());
            if (compare != 0) {
                return compare;
            }
            int compare2 = f1476a.compare(entry.getValue(), entry2.getValue());
            if (compare2 != 0) {
                return compare2;
            }
        }
        return 0;
    }

    /* renamed from: a */
    public static int m1321a(Set set, Set set2) {
        int m1317a = m1317a(set.size(), set2.size());
        if (m1317a != 0) {
            return m1317a;
        }
        TreeSet treeSet = new TreeSet(f1476a);
        treeSet.addAll(set);
        TreeSet treeSet2 = new TreeSet(f1476a);
        treeSet2.addAll(set2);
        Iterator it = treeSet.iterator();
        Iterator it2 = treeSet2.iterator();
        while (it.hasNext() && it2.hasNext()) {
            int compare = f1476a.compare(it.next(), it2.next());
            if (compare != 0) {
                return compare;
            }
        }
        return 0;
    }

    /* renamed from: a */
    public static int m1322a(byte[] bArr, byte[] bArr2) {
        int m1317a = m1317a(bArr.length, bArr2.length);
        if (m1317a != 0) {
            return m1317a;
        }
        for (int i = 0; i < bArr.length; i++) {
            int m1316a = m1316a(bArr[i], bArr2[i]);
            if (m1316a != 0) {
                return m1316a;
            }
        }
        return 0;
    }

    /* renamed from: a */
    public static String m1323a(byte b2) {
        return Integer.toHexString((b2 | 256) & 511).toUpperCase().substring(1);
    }

    /* renamed from: a */
    public static void m1324a(ByteBuffer byteBuffer, StringBuilder sb) {
        byte[] array = byteBuffer.array();
        int arrayOffset = byteBuffer.arrayOffset();
        int position = arrayOffset + byteBuffer.position();
        int limit = byteBuffer.limit() + arrayOffset;
        int i = limit - position > 128 ? position + 128 : limit;
        for (int i2 = position; i2 < i; i2++) {
            if (i2 > position) {
                sb.append(" ");
            }
            sb.append(m1323a(array[i2]));
        }
        if (limit != i) {
            sb.append("...");
        }
    }
}
