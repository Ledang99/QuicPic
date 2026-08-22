package com.alensw.p023b.p026c;

import java.io.File;
import java.io.FileFilter;

/* renamed from: com.alensw.b.c.c */
/* loaded from: classes.dex */
final class C0659c implements FileFilter {
    C0659c() {
    }

    @Override // java.io.FileFilter
    public boolean accept(File file) {
        if (file.isDirectory()) {
            C0658b.m2566a(file);
            return false;
        }
        file.delete();
        return false;
    }
}
