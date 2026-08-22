package com.alensw.p038ui.p041c;

import android.app.Activity;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p022a.C0615bc;
import com.alensw.p022a.C0622d;
import com.alensw.p023b.p031h.C0707c;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;
import java.io.File;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.Iterator;

/* renamed from: com.alensw.ui.c.bm */
/* loaded from: classes.dex */
class ProgressDialogC1199bm extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ String f3987a;

    /* renamed from: b */
    final /* synthetic */ HashSet f3988b;

    /* renamed from: c */
    final /* synthetic */ C0615bc f3989c;

    /* renamed from: e */
    final /* synthetic */ ArrayList f3990e;

    /* renamed from: f */
    final /* synthetic */ C1192bf f3991f;

    /* renamed from: g */
    private final GregorianCalendar f3992g;

    /* renamed from: h */
    private final int[] f3993h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1199bm(C1192bf c1192bf, Activity activity, String str, int i, String str2, HashSet hashSet, C0615bc c0615bc, ArrayList arrayList) {
        super(activity, str, i);
        this.f3991f = c1192bf;
        this.f3987a = str2;
        this.f3988b = hashSet;
        this.f3989c = c0615bc;
        this.f3990e = arrayList;
        this.f3992g = new GregorianCalendar();
        this.f3993h = new int[C1192bf.f3961m.length];
    }

    /* renamed from: a */
    private String m3991a(long j) {
        GregorianCalendar gregorianCalendar = this.f3992g;
        int[] iArr = this.f3993h;
        gregorianCalendar.setTimeInMillis(j);
        iArr[0] = gregorianCalendar.get(1);
        iArr[1] = gregorianCalendar.get(2) + 1;
        iArr[2] = gregorianCalendar.get(5);
        iArr[3] = gregorianCalendar.get(11);
        iArr[4] = gregorianCalendar.get(12);
        iArr[5] = gregorianCalendar.get(13);
        String str = this.f3987a;
        for (int i = 0; i < C1192bf.f3961m.length; i++) {
            String num = Integer.toString(iArr[i]);
            if (num.length() < 2) {
                num = "0" + num;
            }
            str = str.replace(C1192bf.f3961m[i], num);
        }
        return str;
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    protected void mo3653a() {
        Iterator it = this.f3988b.iterator();
        while (it.hasNext()) {
            C0622d c0622d = (C0622d) it.next();
            String str = c0622d.f2404b;
            String m2975a = C0742b.m2975a(str, false);
            File file = new File(this.f3991f.f3963g, str);
            String path = file.getPath();
            long lastModified = file.lastModified();
            C0707c m2787a = C0707c.m2787a(path, true);
            if (m2787a != null) {
                lastModified = m2787a.m2789a(lastModified);
                m2787a.m2792a();
            }
            String str2 = m3991a(lastModified) + "." + m2975a;
            if (str.compareToIgnoreCase(str2) != 0) {
                File file2 = new File(this.f3991f.f3963g, str2);
                if (file2.exists()) {
                    file2 = C0742b.m2969a(file2, (String) null);
                }
                if (C0742b.m2995b(file, file2.getName())) {
                    c0622d.f2404b = file2.getName();
                    this.f3989c.m2309a(path);
                    this.f3990e.add(file2.getName());
                }
            }
            if (!m3732d()) {
                return;
            }
        }
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: b */
    protected void mo3654b() {
        QuickApp.f2076s.m2281a(this.f3991f.f3963g.getPath(), this.f3990e);
        QuickApp.f2072o.m2497a(this.f3991f.f3963g, true);
        if (this.f3991f.f3963g.m2386g()) {
            this.f3991f.f3963g.m2392l();
        }
        this.f3991f.f3967k.clear();
        this.f3991f.m3984o();
    }
}
