package p012b.p013a;

import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* renamed from: b.a.gn */
/* loaded from: classes.dex */
class C0391gn implements Comparator {
    private C0391gn() {
    }

    @Override // java.util.Comparator
    public int compare(Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return 0;
        }
        if (obj == null) {
            return -1;
        }
        if (obj2 == null) {
            return 1;
        }
        return obj instanceof List ? C0389gl.m1319a((List) obj, (List) obj2) : obj instanceof Set ? C0389gl.m1321a((Set) obj, (Set) obj2) : obj instanceof Map ? C0389gl.m1320a((Map) obj, (Map) obj2) : obj instanceof byte[] ? C0389gl.m1322a((byte[]) obj, (byte[]) obj2) : C0389gl.m1318a((Comparable) obj, (Comparable) obj2);
    }
}
