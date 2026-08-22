package com.p045c.p046a;

import java.io.File;
import java.io.FilenameFilter;

/* renamed from: com.c.a.v */
/* loaded from: classes.dex */
class C1422v implements FilenameFilter {

    /* renamed from: a */
    final /* synthetic */ C1421u f5014a;

    C1422v(C1421u c1421u) {
        this.f5014a = c1421u;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return str.startsWith("um");
    }
}
