package com.alensw.p038ui.p041c;

import android.app.Activity;
import android.content.ContentResolver;
import android.net.Uri;
import com.alensw.bean.CommonFile;
import com.alensw.p022a.C0615bc;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: com.alensw.ui.c.an */
/* loaded from: classes.dex */
class ProgressDialogC1173an extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ HashSet f3877a;

    /* renamed from: b */
    final /* synthetic */ ContentResolver f3878b;

    /* renamed from: c */
    final /* synthetic */ C0615bc f3879c;

    /* renamed from: e */
    final /* synthetic */ ArrayList f3880e;

    /* renamed from: f */
    final /* synthetic */ C1290z f3881f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1173an(C1290z c1290z, Activity activity, String str, int i, HashSet hashSet, ContentResolver contentResolver, C0615bc c0615bc, ArrayList arrayList) {
        super(activity, str, i);
        this.f3881f = c1290z;
        this.f3877a = hashSet;
        this.f3878b = contentResolver;
        this.f3879c = c0615bc;
        this.f3880e = arrayList;
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    protected void mo3653a() {
        Iterator it = this.f3877a.iterator();
        while (it.hasNext()) {
            CommonFile commonFile = (CommonFile) it.next();
            Uri mo3021i = commonFile.mo3021i();
            if (this.f3881f.f4292m ? this.f3878b.delete(mo3021i, null, null) > 0 : C0725a.m2917b(this.f3878b, mo3021i)) {
                this.f3879c.m2309a(mo3021i.toString());
                this.f3880e.add(commonFile);
            }
            if (!m3732d()) {
                return;
            }
        }
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: b */
    protected void mo3654b() {
        this.f3881f.m4183a(this.f3880e);
        this.f3881f.m4189l();
        this.f3881f.mo4058n();
    }
}
