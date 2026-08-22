package com.alensw.p038ui.p041c;

import android.content.Intent;
import android.net.Uri;
import com.alensw.bean.CommonFile;
import com.alensw.cloud.UrlTaskService;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: com.alensw.ui.c.ao */
/* loaded from: classes.dex */
class C1174ao implements InterfaceC1277m {

    /* renamed from: a */
    final /* synthetic */ HashSet f3882a;

    /* renamed from: b */
    final /* synthetic */ C1290z f3883b;

    C1174ao(C1290z c1290z, HashSet hashSet) {
        this.f3883b = c1290z;
        this.f3882a = hashSet;
    }

    @Override // com.alensw.p038ui.p041c.InterfaceC1277m
    /* renamed from: a */
    public void mo3277a(Intent intent) {
        File file = new File(intent.getData().getPath());
        Iterator it = this.f3882a.iterator();
        while (it.hasNext()) {
            CommonFile commonFile = (CommonFile) it.next();
            String m3008g = C0742b.m3008g(commonFile.m3012a());
            if (C0690c.m2721a(m3008g) == 0) {
                m3008g = C0690c.m2723a(m3008g, commonFile.m3014b());
            }
            this.f3883b.f4082C.startService(UrlTaskService.m3121a(this.f3883b.f4082C, 1, Uri.fromFile(new File(file, m3008g)), commonFile.mo3021i()));
        }
    }
}
