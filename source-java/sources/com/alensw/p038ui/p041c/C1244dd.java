package com.alensw.p038ui.p041c;

import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.bean.CommonFile;
import com.alensw.bean.CommonFolder;
import com.alensw.bean.MediaStoreRoot;
import com.alensw.p022a.C0622d;
import com.alensw.p022a.C0623e;
import com.alensw.p023b.p034k.InterfaceCallableC0740k;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;

/* renamed from: com.alensw.ui.c.dd */
/* loaded from: classes.dex */
class C1244dd implements InterfaceCallableC0740k {

    /* renamed from: a */
    final /* synthetic */ C1243dc f4121a;

    /* renamed from: b */
    private volatile boolean f4122b;

    /* renamed from: c */
    private final String f4123c;

    /* renamed from: d */
    private final Pattern f4124d;

    /* renamed from: e */
    private final ArrayList f4125e;

    /* renamed from: f */
    private final CommonFolder f4126f;

    public C1244dd(C1243dc c1243dc, String str) {
        String str2;
        this.f4121a = c1243dc;
        str = str == null ? "" : str;
        this.f4123c = str.toLowerCase();
        this.f4124d = Pattern.compile(str, 2);
        str2 = c1243dc.f4118B;
        if ("moments".equals(str2)) {
            this.f4125e = null;
            this.f4126f = new MediaStoreRoot(c1243dc.m4032g(R.string.local_moments), "*/*").mo3052k();
        } else {
            this.f4125e = QuickApp.f2072o.m2512h();
            this.f4126f = null;
        }
    }

    /* renamed from: a */
    private int m4059a(CommonFolder commonFolder) {
        int i = 0;
        int m3047o = commonFolder.m3047o();
        for (int i2 = 0; i2 < m3047o; i2++) {
            CommonFile m3027a = commonFolder.m3027a(i2);
            if (m3027a != null) {
                if (m4061a(m3027a.m3012a())) {
                    this.f4121a.m4056b(m3027a);
                }
                if (m4061a(m3027a.m3019g())) {
                    this.f4121a.m4056b(m3027a);
                    i++;
                }
            }
            if (this.f4122b) {
                break;
            }
        }
        return i;
    }

    /* renamed from: a */
    private int m4060a(ArrayList arrayList) {
        int i;
        Iterator it = arrayList.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                i = i2;
                break;
            }
            C0623e c0623e = (C0623e) it.next();
            if (m4061a(c0623e.getName())) {
                this.f4121a.m4055b(c0623e);
                i = i2 + 1;
            } else {
                i = i2;
            }
            if (this.f4122b) {
                break;
            }
            i2 = i;
        }
        Iterator it2 = arrayList.iterator();
        do {
            int i3 = i;
            if (!it2.hasNext()) {
                return i3;
            }
            C0623e c0623e2 = (C0623e) it2.next();
            int m2390j = c0623e2.m2390j();
            int i4 = 0;
            while (true) {
                if (i4 >= m2390j) {
                    i = i3;
                    break;
                }
                C0622d m2381e = c0623e2.m2381e(i4);
                if (m2381e != null && m4061a(m2381e.f2404b)) {
                    this.f4121a.m4051a(m2381e);
                    i3++;
                }
                if (this.f4122b) {
                    i = i3;
                    break;
                }
                i4++;
            }
        } while (!this.f4122b);
        return i;
    }

    /* renamed from: a */
    private boolean m4061a(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return str.toLowerCase().contains(this.f4123c) || this.f4124d.matcher(str).matches();
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: a */
    public void mo2094a() {
        this.f4122b = true;
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: b */
    public void mo2095b() {
        this.f4121a.f3851b.post(new RunnableC1245de(this));
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public Void call() {
        if (this.f4125e != null) {
            m4060a(this.f4125e);
            return null;
        }
        if (this.f4126f == null) {
            return null;
        }
        m4059a(this.f4126f);
        return null;
    }
}
