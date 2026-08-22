package com.alensw.bean;

import com.alensw.p023b.p025b.C0655b;
import java.util.Comparator;

/* renamed from: com.alensw.bean.b */
/* loaded from: classes.dex */
final class C0745b implements Comparator {
    C0745b() {
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(CommonFile commonFile, CommonFile commonFile2) {
        int i = commonFile.f2792b == 'D' ? 0 : 1;
        int i2 = commonFile2.f2792b != 'D' ? 1 : 0;
        return i != i2 ? i2 - i : C0655b.f2525a.compare(commonFile2.f2793c, commonFile.f2793c);
    }
}
