package com.alensw.cloud.sync;

import java.util.Comparator;

/* renamed from: com.alensw.cloud.sync.r */
/* loaded from: classes.dex */
class C0950r implements Comparator {

    /* renamed from: a */
    final /* synthetic */ SyncSettings f3329a;

    C0950r(SyncSettings syncSettings) {
        this.f3329a = syncSettings;
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(C0954v c0954v, C0954v c0954v2) {
        int compareTo = c0954v.f3345d.compareTo(c0954v2.f3345d);
        return compareTo == 0 ? c0954v.f3346e.compareTo(c0954v2.f3346e) : compareTo;
    }
}
