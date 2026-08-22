package com.p043b.p044a;

import java.util.HashMap;

/* renamed from: com.b.a.k */
/* loaded from: classes.dex */
class C1396k {

    /* renamed from: a */
    HashMap f4945a;

    private C1396k(String str) {
        this.f4945a = new HashMap();
        for (String str2 : str.split(";")) {
            String[] split = str2.split(":");
            if (split.length == 2) {
                this.f4945a.put(split[0], split[1]);
            }
        }
    }

    /* renamed from: a */
    public String m4562a(String str) {
        return (String) this.f4945a.get(str);
    }
}
