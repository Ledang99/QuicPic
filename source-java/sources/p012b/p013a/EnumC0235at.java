package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.at */
/* loaded from: classes.dex */
public enum EnumC0235at implements InterfaceC0394gq {
    LATENT(1, "latent");


    /* renamed from: b */
    private static final Map f966b = new HashMap();

    /* renamed from: c */
    private final short f968c;

    /* renamed from: d */
    private final String f969d;

    static {
        Iterator it = EnumSet.allOf(EnumC0235at.class).iterator();
        while (it.hasNext()) {
            EnumC0235at enumC0235at = (EnumC0235at) it.next();
            f966b.put(enumC0235at.m676b(), enumC0235at);
        }
    }

    EnumC0235at(short s, String str) {
        this.f968c = s;
        this.f969d = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f968c;
    }

    /* renamed from: b */
    public String m676b() {
        return this.f969d;
    }
}
