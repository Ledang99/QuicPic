package com.alensw.p023b.p024a;

import java.util.LinkedHashMap;
import java.util.Map;

/* renamed from: com.alensw.b.a.i */
/* loaded from: classes.dex */
class C0653i extends LinkedHashMap {

    /* renamed from: a */
    final /* synthetic */ C0652h f2524a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0653i(C0652h c0652h, int i, float f, boolean z) {
        super(i, f, z);
        this.f2524a = c0652h;
    }

    @Override // java.util.LinkedHashMap
    protected boolean removeEldestEntry(Map.Entry entry) {
        int i;
        Object value;
        int size = size();
        i = this.f2524a.f2522a;
        boolean z = size > i;
        if (z && (value = entry.getValue()) != null) {
            this.f2524a.m2557b(value);
        }
        return z;
    }
}
