package com.alensw.p038ui.p041c;

import android.app.Activity;
import android.content.ContentResolver;
import android.net.Uri;
import com.alensw.bean.CommonFolder;
import com.alensw.p022a.C0615bc;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;

/* renamed from: com.alensw.ui.c.bd */
/* loaded from: classes.dex */
class ProgressDialogC1190bd extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ ContentResolver f3955a;

    /* renamed from: b */
    final /* synthetic */ Uri f3956b;

    /* renamed from: c */
    final /* synthetic */ C0615bc f3957c;

    /* renamed from: e */
    final /* synthetic */ C1178as f3958e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1190bd(C1178as c1178as, Activity activity, String str, int i, ContentResolver contentResolver, Uri uri, C0615bc c0615bc) {
        super(activity, str, i);
        this.f3958e = c1178as;
        this.f3955a = contentResolver;
        this.f3956b = uri;
        this.f3957c = c0615bc;
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    protected void mo3653a() {
        CommonFolder commonFolder;
        if (C0725a.m2917b(this.f3955a, this.f3956b)) {
            this.f3957c.m2309a(this.f3956b.toString());
            ContentResolver contentResolver = this.f3955a;
            commonFolder = this.f3958e.f3921k;
            contentResolver.notifyChange(commonFolder.mo3021i(), null);
        }
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: b */
    protected void mo3654b() {
        this.f3958e.m3924n();
    }
}
