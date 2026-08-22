package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.protocol.HTTP;

/* renamed from: b.a.cd */
/* loaded from: classes.dex */
public enum EnumC0273cd implements InterfaceC0394gq {
    IDENTITY(1, HTTP.IDENTITY_CODING),
    TS(2, "ts"),
    VERSION(3, ClientCookie.VERSION_ATTR);


    /* renamed from: d */
    private static final Map f1120d = new HashMap();

    /* renamed from: e */
    private final short f1122e;

    /* renamed from: f */
    private final String f1123f;

    static {
        Iterator it = EnumSet.allOf(EnumC0273cd.class).iterator();
        while (it.hasNext()) {
            EnumC0273cd enumC0273cd = (EnumC0273cd) it.next();
            f1120d.put(enumC0273cd.m861b(), enumC0273cd);
        }
    }

    EnumC0273cd(short s, String str) {
        this.f1122e = s;
        this.f1123f = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1122e;
    }

    /* renamed from: b */
    public String m861b() {
        return this.f1123f;
    }
}
