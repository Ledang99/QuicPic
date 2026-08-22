package p012b.p013a;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.gz */
/* loaded from: classes.dex */
public class C0403gz implements Serializable {

    /* renamed from: d */
    private static Map f1486d = new HashMap();

    /* renamed from: a */
    public final String f1487a;

    /* renamed from: b */
    public final byte f1488b;

    /* renamed from: c */
    public final C0405ha f1489c;

    public C0403gz(String str, byte b2, C0405ha c0405ha) {
        this.f1487a = str;
        this.f1488b = b2;
        this.f1489c = c0405ha;
    }

    /* renamed from: a */
    public static void m1336a(Class cls, Map map) {
        f1486d.put(cls, map);
    }
}
