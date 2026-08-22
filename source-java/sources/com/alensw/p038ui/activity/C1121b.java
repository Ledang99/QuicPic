package com.alensw.p038ui.activity;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import java.util.Comparator;

/* renamed from: com.alensw.ui.activity.b */
/* loaded from: classes.dex */
final class C1121b implements Comparator {

    /* renamed from: a */
    final /* synthetic */ PackageManager f3772a;

    /* renamed from: b */
    final /* synthetic */ Context f3773b;

    /* renamed from: c */
    final /* synthetic */ SharedPreferences f3774c;

    /* renamed from: d */
    private final ResolveInfo.DisplayNameComparator f3775d;

    /* renamed from: e */
    private final String f3776e;

    C1121b(PackageManager packageManager, Context context, SharedPreferences sharedPreferences) {
        this.f3772a = packageManager;
        this.f3773b = context;
        this.f3774c = sharedPreferences;
        this.f3775d = new ResolveInfo.DisplayNameComparator(this.f3772a);
        this.f3776e = this.f3773b.getPackageName();
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(ResolveInfo resolveInfo, ResolveInfo resolveInfo2) {
        boolean equals = this.f3776e.equals(resolveInfo.activityInfo.packageName);
        boolean equals2 = this.f3776e.equals(resolveInfo2.activityInfo.packageName);
        int i = this.f3774c.getInt(resolveInfo2.activityInfo.name, equals2 ? 10 : 0) - this.f3774c.getInt(resolveInfo.activityInfo.name, equals ? 10 : 0);
        if (i != 0) {
            return i;
        }
        int i2 = (equals ? 0 : 1) - (equals2 ? 0 : 1);
        return i2 == 0 ? this.f3775d.compare(resolveInfo, resolveInfo2) : i2;
    }
}
