package com.alensw.p038ui.p041c;

import android.app.Activity;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p022a.C0613ba;
import com.alensw.p022a.C0615bc;
import com.alensw.p022a.C0622d;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: com.alensw.ui.c.bl */
/* loaded from: classes.dex */
class ProgressDialogC1198bl extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ HashSet f3982a;

    /* renamed from: b */
    final /* synthetic */ C0613ba f3983b;

    /* renamed from: c */
    final /* synthetic */ C0615bc f3984c;

    /* renamed from: e */
    final /* synthetic */ ArrayList f3985e;

    /* renamed from: f */
    final /* synthetic */ C1192bf f3986f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1198bl(C1192bf c1192bf, Activity activity, String str, int i, HashSet hashSet, C0613ba c0613ba, C0615bc c0615bc, ArrayList arrayList) {
        super(activity, str, i);
        this.f3986f = c1192bf;
        this.f3982a = hashSet;
        this.f3983b = c0613ba;
        this.f3984c = c0615bc;
        this.f3985e = arrayList;
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    protected void mo3653a() {
        Iterator it = this.f3982a.iterator();
        while (it.hasNext()) {
            C0622d c0622d = (C0622d) it.next();
            File file = new File(this.f3986f.f3963g, c0622d.f2404b);
            String path = file.getPath();
            if (C0742b.m2999c(file)) {
                this.f3983b.m2282a(path, c0622d.f2405c, false);
                this.f3984c.m2309a(path);
                this.f3985e.add(c0622d);
            }
            if (!m3732d()) {
                return;
            }
        }
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: b */
    protected void mo3654b() {
        if (this.f3985e.isEmpty()) {
            this.f3986f.m3879a(C0742b.m3006e(this.f3986f.f3963g.getPath()));
        } else {
            this.f3986f.m3968a(this.f3985e);
            QuickApp.f2072o.m2497a(this.f3986f.f3963g, true);
        }
        this.f3986f.m3984o();
    }
}
