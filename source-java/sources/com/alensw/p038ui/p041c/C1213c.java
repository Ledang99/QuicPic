package com.alensw.p038ui.p041c;

import android.content.ContentResolver;
import android.content.Intent;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;

/* renamed from: com.alensw.ui.c.c */
/* loaded from: classes.dex */
class C1213c implements InterfaceC1277m {

    /* renamed from: a */
    final /* synthetic */ InterfaceC1278n f4038a;

    /* renamed from: b */
    final /* synthetic */ boolean f4039b;

    /* renamed from: c */
    final /* synthetic */ int f4040c;

    /* renamed from: d */
    final /* synthetic */ HashSet f4041d;

    /* renamed from: e */
    final /* synthetic */ ContentResolver f4042e;

    /* renamed from: f */
    final /* synthetic */ C1159a f4043f;

    C1213c(C1159a c1159a, InterfaceC1278n interfaceC1278n, boolean z, int i, HashSet hashSet, ContentResolver contentResolver) {
        this.f4043f = c1159a;
        this.f4038a = interfaceC1278n;
        this.f4039b = z;
        this.f4040c = i;
        this.f4041d = hashSet;
        this.f4042e = contentResolver;
    }

    @Override // com.alensw.p038ui.p041c.InterfaceC1277m
    /* renamed from: a */
    public void mo3277a(Intent intent) {
        this.f4038a.mo3889a(this.f4039b);
        File file = new File(intent.getData().getPath());
        new ProgressDialogC1240d(this, this.f4043f.f4082C, this.f4043f.m4032g(this.f4039b ? R.string.copy_to : R.string.move_to) + ": " + file.getName(), this.f4040c, file, QuickApp.f2076s, QuickApp.f2075r, new HashSet(this.f4040c), new ArrayList(this.f4040c), new ArrayList(this.f4040c)).m3731c();
    }
}
