package com.alensw.p038ui.p041c;

import android.app.Activity;
import android.content.ContentResolver;
import android.net.Uri;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;

/* renamed from: com.alensw.ui.c.u */
/* loaded from: classes.dex */
class ProgressDialogC1285u extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ ContentResolver f4261a;

    /* renamed from: b */
    final /* synthetic */ Uri f4262b;

    /* renamed from: c */
    final /* synthetic */ String f4263c;

    /* renamed from: e */
    final /* synthetic */ C1280p f4264e;

    /* renamed from: f */
    private boolean f4265f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1285u(C1280p c1280p, Activity activity, String str, int i, ContentResolver contentResolver, Uri uri, String str2) {
        super(activity, str, i);
        this.f4264e = c1280p;
        this.f4261a = contentResolver;
        this.f4262b = uri;
        this.f4263c = str2;
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    protected void mo3653a() {
        this.f4265f = C0725a.m2907a(this.f4261a, this.f4262b, "vnd.android.document/directory", this.f4263c) != null;
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: b */
    protected void mo3654b() {
        if (!this.f4265f || this.f4264e.f4087H == 0) {
            return;
        }
        this.f4264e.m4164f_();
        this.f4264e.m4163e_();
    }
}
