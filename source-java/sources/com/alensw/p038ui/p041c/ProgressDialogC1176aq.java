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

/* renamed from: com.alensw.ui.c.aq */
/* loaded from: classes.dex */
class ProgressDialogC1176aq extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ HashSet f3886a;

    /* renamed from: b */
    final /* synthetic */ ContentResolver f3887b;

    /* renamed from: c */
    final /* synthetic */ Uri f3888c;

    /* renamed from: e */
    final /* synthetic */ Uri f3889e;

    /* renamed from: f */
    final /* synthetic */ C0615bc f3890f;

    /* renamed from: g */
    final /* synthetic */ ArrayList f3891g;

    /* renamed from: h */
    final /* synthetic */ C1290z f3892h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1176aq(C1290z c1290z, Activity activity, String str, int i, HashSet hashSet, ContentResolver contentResolver, Uri uri, Uri uri2, C0615bc c0615bc, ArrayList arrayList) {
        super(activity, str, i);
        this.f3892h = c1290z;
        this.f3886a = hashSet;
        this.f3887b = contentResolver;
        this.f3888c = uri;
        this.f3889e = uri2;
        this.f3890f = c0615bc;
        this.f3891g = arrayList;
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    protected void mo3653a() {
        Iterator it = this.f3886a.iterator();
        while (it.hasNext()) {
            CommonFile commonFile = (CommonFile) it.next();
            Uri mo3021i = commonFile.mo3021i();
            if (C0725a.m2913a(this.f3887b, mo3021i, this.f3888c, this.f3889e)) {
                this.f3890f.m2309a(mo3021i.toString());
                this.f3891g.add(commonFile);
            }
            if (!m3732d()) {
                return;
            }
        }
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: b */
    protected void mo3654b() {
        this.f3892h.m4183a(this.f3891g);
        this.f3892h.m4189l();
        this.f3892h.mo4058n();
    }
}
