package com.alensw.p022a;

import com.alensw.p023b.p025b.C0655b;
import java.util.Comparator;

/* renamed from: com.alensw.a.i */
/* loaded from: classes.dex */
final class C0627i implements Comparator {
    C0627i() {
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(C0622d c0622d, C0622d c0622d2) {
        int i = c0622d2.f2406d - c0622d.f2406d;
        return i == 0 ? C0655b.f2525a.compare(c0622d2.f2404b, c0622d.f2404b) : i;
    }
}
