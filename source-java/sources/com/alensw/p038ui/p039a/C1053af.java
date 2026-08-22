package com.alensw.p038ui.p039a;

import com.alensw.p023b.p025b.C0655b;
import java.io.File;
import java.util.Comparator;

/* renamed from: com.alensw.ui.a.af */
/* loaded from: classes.dex */
final class C1053af implements Comparator {
    C1053af() {
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(File file, File file2) {
        return C0655b.f2525a.compare(file.getName(), file2.getName());
    }
}
