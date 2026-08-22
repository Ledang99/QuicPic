package com.alensw.bean;

import com.alensw.p023b.p025b.C0655b;
import java.util.Comparator;

/* renamed from: com.alensw.bean.d */
/* loaded from: classes.dex */
final class C0747d implements Comparator {
    C0747d() {
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(CommonFile commonFile, CommonFile commonFile2) {
        long j = commonFile2.f2798h - commonFile.f2798h;
        if (j == 0) {
            j = C0655b.f2525a.compare(commonFile2.f2793c, commonFile.f2793c);
        }
        if (j > 0) {
            return 1;
        }
        return j < 0 ? -1 : 0;
    }
}
