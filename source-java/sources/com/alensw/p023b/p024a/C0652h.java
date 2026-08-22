package com.alensw.p023b.p024a;

import java.lang.reflect.Method;
import java.util.LinkedHashMap;

/* renamed from: com.alensw.b.a.h */
/* loaded from: classes.dex */
public class C0652h {

    /* renamed from: c */
    private static Method f2521c;

    /* renamed from: a */
    private int f2522a;

    /* renamed from: b */
    private final LinkedHashMap f2523b;

    static {
        try {
            f2521c = LinkedHashMap.class.getMethod("eldest", new Class[0]);
        } catch (Throwable th) {
        }
    }

    public C0652h(int i) {
        this.f2522a = i;
        this.f2523b = new C0653i(this, i <= 0 ? 256 : i, 0.75f, true);
    }

    /* renamed from: a */
    public final Object m2555a(Object obj) {
        return this.f2523b.get(obj);
    }

    /* renamed from: a */
    public Object m2556a(Object obj, Object obj2) {
        Object put = this.f2523b.put(obj, obj2);
        if (put != null && put != obj2) {
            m2557b(put);
        }
        return put;
    }

    /* renamed from: b */
    protected void m2557b(Object obj) {
    }
}
