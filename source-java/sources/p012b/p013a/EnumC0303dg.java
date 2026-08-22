package p012b.p013a;

import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* renamed from: b.a.dg */
/* loaded from: classes.dex */
public enum EnumC0303dg implements InterfaceC0394gq {
    ID(1, "id"),
    ERRORS(2, "errors"),
    EVENTS(3, "events"),
    GAME_EVENTS(4, "game_events");


    /* renamed from: e */
    private static final Map f1193e = new HashMap();

    /* renamed from: f */
    private final short f1195f;

    /* renamed from: g */
    private final String f1196g;

    static {
        Iterator it = EnumSet.allOf(EnumC0303dg.class).iterator();
        while (it.hasNext()) {
            EnumC0303dg enumC0303dg = (EnumC0303dg) it.next();
            f1193e.put(enumC0303dg.m950b(), enumC0303dg);
        }
    }

    EnumC0303dg(short s, String str) {
        this.f1195f = s;
        this.f1196g = str;
    }

    @Override // p012b.p013a.InterfaceC0394gq
    /* renamed from: a */
    public short mo639a() {
        return this.f1195f;
    }

    /* renamed from: b */
    public String m950b() {
        return this.f1196g;
    }
}
