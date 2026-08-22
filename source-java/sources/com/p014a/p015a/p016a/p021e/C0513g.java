package com.p014a.p015a.p016a.p021e;

import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.a.a.a.e.g */
/* loaded from: classes.dex */
public final class C0513g extends ConcurrentHashMap {

    /* renamed from: a */
    public static final C0513g f1908a = new C0513g();

    /* renamed from: b */
    private static final Object f1909b = new Object();

    private C0513g() {
        super(180, 0.8f, 4);
    }

    /* renamed from: a */
    public String m1883a(String str) {
        String str2 = (String) get(str);
        if (str2 != null) {
            return str2;
        }
        if (size() >= 180) {
            synchronized (f1909b) {
                if (size() >= 180) {
                    clear();
                }
            }
        }
        String intern = str.intern();
        put(intern, intern);
        return intern;
    }
}
