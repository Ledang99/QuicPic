package com.alensw.p038ui.view;

import android.content.ContentResolver;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.content.res.Resources;
import android.database.Cursor;
import com.alensw.PicFolder.GalleryActivity;
import com.alensw.bean.DocumentRoot;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p023b.p034k.InterfaceCallableC0740k;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* renamed from: com.alensw.ui.view.bf */
/* loaded from: classes.dex */
class C1332bf implements InterfaceCallableC0740k {

    /* renamed from: a */
    final /* synthetic */ ContentResolver f4587a;

    /* renamed from: b */
    final /* synthetic */ Resources f4588b;

    /* renamed from: c */
    final /* synthetic */ String f4589c;

    /* renamed from: d */
    final /* synthetic */ boolean f4590d;

    /* renamed from: e */
    final /* synthetic */ C1329bc f4591e;

    /* renamed from: f */
    private final ArrayList f4592f = new ArrayList(16);

    /* renamed from: g */
    private boolean f4593g = true;

    /* renamed from: h */
    private boolean f4594h;

    C1332bf(C1329bc c1329bc, ContentResolver contentResolver, Resources resources, String str, boolean z) {
        this.f4591e = c1329bc;
        this.f4587a = contentResolver;
        this.f4588b = resources;
        this.f4589c = str;
        this.f4590d = z;
    }

    /* renamed from: a */
    private void m4383a(List list, ArrayList arrayList) {
        Cursor cursor;
        int i;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            PackageInfo packageInfo = (PackageInfo) it.next();
            if (packageInfo.providers != null) {
                for (ProviderInfo providerInfo : packageInfo.providers) {
                    try {
                        if (C0725a.m2921c(providerInfo.authority)) {
                            cursor = this.f4587a.query(C0725a.m2914b(providerInfo.authority), DocumentRoot.f2823s, null, null, null);
                            while (cursor.moveToNext()) {
                                try {
                                    try {
                                        DocumentRoot m3056a = DocumentRoot.m3056a(providerInfo.authority, cursor);
                                        if (m3056a.m3057l() != null) {
                                            if (m3056a.f2812l != 0) {
                                                Resources resources = this.f4588b;
                                                int i2 = m3056a.f2812l;
                                                i = this.f4591e.f4579f;
                                                m3056a.f2816p = C0742b.m2966a(resources, i2, i);
                                            }
                                            arrayList.add(m3056a);
                                        }
                                    } catch (Throwable th) {
                                        th = th;
                                        th.printStackTrace();
                                        if (cursor != null) {
                                            cursor.close();
                                        }
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    throw th;
                                }
                            }
                        } else {
                            cursor = null;
                        }
                        if (cursor != null) {
                            cursor.close();
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        cursor = null;
                    }
                }
            }
        }
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: a */
    public void mo2094a() {
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: b */
    public void mo2095b() {
        GalleryActivity galleryActivity;
        galleryActivity = this.f4591e.f4577d;
        galleryActivity.runOnUiThread(new RunnableC1333bg(this));
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public Void call() {
        List<PackageInfo> list;
        GalleryActivity galleryActivity;
        try {
            galleryActivity = this.f4591e.f4577d;
            list = galleryActivity.getPackageManager().getInstalledPackages(8);
        } catch (Throwable th) {
            this.f4594h = true;
            th.printStackTrace();
            list = null;
        }
        if (list != null) {
            this.f4592f.clear();
            m4383a(list, this.f4592f);
            if (this.f4592f.isEmpty()) {
                this.f4591e.m4379b(this.f4592f);
            }
        }
        return null;
    }

    /* renamed from: d */
    protected void m4385d() {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        arrayList = this.f4591e.f4584k;
        arrayList.clear();
        arrayList2 = this.f4591e.f4584k;
        arrayList2.addAll(this.f4592f);
        C1329bc c1329bc = this.f4591e;
        arrayList3 = this.f4591e.f4584k;
        c1329bc.m4374a(arrayList3);
        this.f4591e.notifyDataSetChanged();
        if (!this.f4592f.isEmpty()) {
            if (this.f4589c != null) {
                this.f4591e.m4376a(this.f4589c, this.f4590d);
            }
        } else if (this.f4594h && this.f4593g) {
            this.f4593g = false;
            AbstractProgressDialogC1062ao.f3641d.m2936a(this);
        }
    }
}
