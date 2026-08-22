package com.alensw.p038ui.p041c;

import android.app.Activity;
import android.content.ContentValues;
import android.net.Uri;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p022a.C0613ba;
import com.alensw.p022a.C0622d;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.alensw.ui.c.bh */
/* loaded from: classes.dex */
class ProgressDialogC1194bh extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ ArrayList f3973a;

    /* renamed from: b */
    final /* synthetic */ C0613ba f3974b;

    /* renamed from: c */
    final /* synthetic */ String[] f3975c;

    /* renamed from: e */
    final /* synthetic */ C1192bf f3976e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1194bh(C1192bf c1192bf, Activity activity, String str, int i, ArrayList arrayList, C0613ba c0613ba, String[] strArr) {
        super(activity, str, i);
        this.f3976e = c1192bf;
        this.f3973a = arrayList;
        this.f3974b = c0613ba;
        this.f3975c = strArr;
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    protected void mo3653a() {
        long j;
        Uri uri;
        Long m2276a;
        Iterator it = this.f3973a.iterator();
        while (it.hasNext()) {
            C0622d c0622d = (C0622d) it.next();
            File file = new File(this.f3976e.f3963g, c0622d.f2404b);
            String path = file.getPath();
            long lastModified = file.lastModified();
            long m2963a = C0742b.m2963a(file, c0622d.f2405c, lastModified);
            Integer m2275a = this.f3974b.m2275a(path, c0622d.f2405c);
            String str = null;
            if (m2275a != null) {
                Uri m2269a = C0613ba.m2269a(c0622d.f2405c);
                str = "_id=" + m2275a;
                if (c0622d.f2405c != 'V' || m2963a != lastModified || (m2276a = this.f3974b.m2276a(m2269a, this.f3975c, str)) == null || m2276a.longValue() <= 0) {
                    j = m2963a;
                    uri = m2269a;
                } else {
                    j = m2276a.longValue();
                    uri = m2269a;
                }
            } else {
                j = m2963a;
                uri = null;
            }
            if (lastModified != j) {
                try {
                    if (file.setLastModified(j)) {
                        lastModified = j;
                    }
                } catch (Throwable th) {
                }
            }
            c0622d.f2406d = (int) (lastModified / 1000);
            c0622d.f2407e = (int) (j / 1000);
            QuickApp.f2075r.m2310a(path, (int) (lastModified / 1000));
            if (str != null) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("datetaken", Long.valueOf(j));
                contentValues.put("date_modified", Integer.valueOf((int) (lastModified / 1000)));
                this.f3974b.m2272a(uri, contentValues, str, (String[]) null);
            }
            if (!m3732d()) {
                return;
            }
        }
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: b */
    protected void mo3654b() {
        if (this.f3976e.f3963g.m2382e()) {
            this.f3976e.f3963g.m2392l();
            this.f3976e.f3962f.requestLayout();
        }
    }
}
