package p000a.p001a;

import java.util.HashMap;
import p000a.p001a.p002a.C0005d;
import p000a.p001a.p002a.C0006e;
import p000a.p001a.p002a.C0013l;
import p000a.p001a.p002a.C0014m;

/* renamed from: a.a.b */
/* loaded from: classes.dex */
public class C0020b {

    /* renamed from: h */
    private static HashMap f39h = new HashMap();

    /* renamed from: a */
    String f40a;

    /* renamed from: b */
    String f41b;

    /* renamed from: c */
    String f42c = null;

    /* renamed from: d */
    HashMap f43d = null;

    /* renamed from: e */
    C0032i f44e = null;

    /* renamed from: f */
    int f45f;

    /* renamed from: g */
    int f46g;

    static {
        f39h.put("srvsvc", C0014m.m23a());
        f39h.put("lsarpc", C0005d.m18a());
        f39h.put("samr", C0013l.m22a());
        f39h.put("netdfs", C0006e.m19a());
    }

    C0020b(String str, String str2) {
        this.f40a = str;
        this.f41b = str2;
    }

    /* renamed from: a */
    Object m24a(String str) {
        if (str.equals("endpoint")) {
            return this.f42c;
        }
        if (this.f43d != null) {
            return this.f43d.get(str);
        }
        return null;
    }

    /* renamed from: a */
    void m25a(String str, Object obj) {
        String str2;
        if (!str.equals("endpoint")) {
            if (this.f43d == null) {
                this.f43d = new HashMap();
            }
            this.f43d.put(str, obj);
            return;
        }
        this.f42c = obj.toString();
        String lowerCase = this.f42c.toLowerCase();
        if (!lowerCase.startsWith("\\pipe\\") || (str2 = (String) f39h.get(lowerCase.substring(6))) == null) {
            throw new C0027d("Bad endpoint: " + this.f42c);
        }
        int indexOf = str2.indexOf(58);
        int indexOf2 = str2.indexOf(46, indexOf + 1);
        this.f44e = new C0032i(str2.substring(0, indexOf));
        this.f45f = Integer.parseInt(str2.substring(indexOf + 1, indexOf2));
        this.f46g = Integer.parseInt(str2.substring(indexOf2 + 1));
    }
}
