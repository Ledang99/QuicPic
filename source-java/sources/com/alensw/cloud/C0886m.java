package com.alensw.cloud;

import android.content.res.Resources;
import com.alensw.p023b.p025b.C0655b;
import java.util.Comparator;

/* renamed from: com.alensw.cloud.m */
/* loaded from: classes.dex */
final class C0886m implements Comparator {

    /* renamed from: a */
    final /* synthetic */ Resources f3171a;

    C0886m(Resources resources) {
        this.f3171a = resources;
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(C0961x c0961x, C0961x c0961x2) {
        int i = c0961x.f3351d - c0961x2.f3351d;
        return i != 0 ? i : C0655b.f2525a.compare(this.f3171a.getString(c0961x.f3350c), this.f3171a.getString(c0961x2.f3350c));
    }
}
