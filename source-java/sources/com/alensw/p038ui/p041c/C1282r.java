package com.alensw.p038ui.p041c;

import android.content.ContentResolver;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.alensw.bean.CommonFile;
import com.alensw.bean.CommonFolder;
import com.alensw.bean.CommonRoot;
import com.alensw.bean.DocumentRoot;
import com.alensw.cloud.C0879e;
import com.alensw.cloud.C0961x;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p023b.p034k.InterfaceCallableC0740k;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.alensw.ui.c.r */
/* loaded from: classes.dex */
class C1282r implements InterfaceCallableC0740k {

    /* renamed from: a */
    final /* synthetic */ ContentResolver f4252a;

    /* renamed from: b */
    final /* synthetic */ String f4253b;

    /* renamed from: c */
    final /* synthetic */ boolean f4254c;

    /* renamed from: d */
    final /* synthetic */ C1280p f4255d;

    /* renamed from: e */
    private final ArrayList f4256e = new ArrayList(8);

    /* renamed from: f */
    private boolean f4257f = true;

    /* renamed from: g */
    private boolean f4258g;

    C1282r(C1280p c1280p, ContentResolver contentResolver, String str, boolean z) {
        this.f4255d = c1280p;
        this.f4252a = contentResolver;
        this.f4253b = str;
        this.f4254c = z;
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: a */
    public void mo2094a() {
    }

    /* renamed from: a */
    protected void m4166a(ArrayList arrayList) {
        CommonFolder commonFolder;
        ListView listView;
        ListView listView2;
        AdapterView.OnItemClickListener onItemClickListener;
        CommonFolder commonFolder2;
        ListView listView3;
        ListView listView4;
        CommonFolder commonFolder3;
        commonFolder = this.f4255d.f4243n;
        commonFolder.m3050r();
        if (arrayList.isEmpty()) {
            if (this.f4258g && this.f4257f) {
                this.f4257f = false;
                AbstractProgressDialogC1062ao.f3641d.m2936a(this);
                return;
            } else {
                if (this.f4254c) {
                    this.f4255d.m4160n();
                    return;
                }
                return;
            }
        }
        int i = -1;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            CommonRoot commonRoot = (CommonRoot) arrayList.get(i2);
            commonFolder3 = this.f4255d.f4243n;
            commonFolder3.m3029a(i2, commonRoot);
            if (i == -1 && commonRoot.f2814n.equals(this.f4253b)) {
                i = i2;
            }
        }
        listView = this.f4255d.f4241l;
        listView.setAdapter((ListAdapter) this.f4255d.f4235f);
        listView2 = this.f4255d.f4241l;
        onItemClickListener = this.f4255d.f4249t;
        listView2.setOnItemClickListener(onItemClickListener);
        C1280p c1280p = this.f4255d;
        commonFolder2 = this.f4255d.f4243n;
        c1280p.m4161a((CommonFile) commonFolder2, false);
        if (i != -1) {
            listView3 = this.f4255d.f4241l;
            listView4 = this.f4255d.f4241l;
            listView3.performItemClick(listView4, i, 0L);
        }
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: b */
    public void mo2095b() {
        this.f4255d.f4082C.runOnUiThread(new RunnableC1283s(this));
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public Void call() {
        Cursor cursor;
        boolean z;
        int[] iArr;
        boolean z2;
        Cursor cursor2 = null;
        try {
            List<PackageInfo> installedPackages = this.f4255d.f4082C.getPackageManager().getInstalledPackages(8);
            if (installedPackages != null) {
                for (PackageInfo packageInfo : installedPackages) {
                    if (packageInfo.providers != null) {
                        for (ProviderInfo providerInfo : packageInfo.providers) {
                            try {
                                if (C0725a.m2921c(providerInfo.authority)) {
                                    cursor = this.f4252a.query(C0725a.m2914b(providerInfo.authority), DocumentRoot.f2823s, null, null, null);
                                    while (cursor.moveToNext()) {
                                        try {
                                            DocumentRoot m3056a = DocumentRoot.m3056a(providerInfo.authority, cursor);
                                            if (m3056a.f2814n != null && m3056a.m3057l() != null) {
                                                z = this.f4255d.f4236g;
                                                if (!z || m3056a.f2814n.equals(this.f4253b)) {
                                                    C0961x m3314a = C0879e.m3314a(m3056a.f2811k);
                                                    if (m3314a != null) {
                                                        iArr = this.f4255d.f4237h;
                                                        if (C0879e.m3316a(iArr, m3314a.f3351d)) {
                                                            this.f4256e.add(m3056a);
                                                            z2 = this.f4255d.f4236g;
                                                            if (z2) {
                                                                break;
                                                            }
                                                        } else {
                                                            continue;
                                                        }
                                                    } else {
                                                        continue;
                                                    }
                                                }
                                            }
                                        } catch (Throwable th) {
                                            if (cursor != null) {
                                                cursor.close();
                                            }
                                        }
                                    }
                                } else {
                                    cursor = null;
                                }
                                if (cursor != null) {
                                    cursor.close();
                                }
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                    }
                }
            }
        } catch (Throwable th3) {
            this.f4258g = true;
        }
        return null;
    }
}
