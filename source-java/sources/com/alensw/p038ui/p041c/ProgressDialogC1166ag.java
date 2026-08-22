package com.alensw.p038ui.p041c;

import android.app.Activity;
import android.content.ContentResolver;
import android.net.Uri;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;

/* renamed from: com.alensw.ui.c.ag */
/* loaded from: classes.dex */
class ProgressDialogC1166ag extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ ContentResolver f3864a;

    /* renamed from: b */
    final /* synthetic */ Uri f3865b;

    /* renamed from: c */
    final /* synthetic */ String f3866c;

    /* renamed from: e */
    final /* synthetic */ C1290z f3867e;

    /* renamed from: f */
    private boolean f3868f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1166ag(C1290z c1290z, Activity activity, String str, int i, ContentResolver contentResolver, Uri uri, String str2) {
        super(activity, str, i);
        this.f3867e = c1290z;
        this.f3864a = contentResolver;
        this.f3865b = uri;
        this.f3866c = str2;
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    protected void mo3653a() {
        this.f3868f = C0725a.m2907a(this.f3864a, this.f3865b, "vnd.android.document/directory", this.f3866c) != null;
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: b */
    protected void mo3654b() {
        if (this.f3868f && this.f3867e.f4087H == 2) {
            this.f3867e.m4185a(false);
            this.f3867e.mo4058n();
        }
    }
}
