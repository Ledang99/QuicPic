package com.alensw.cloud;

import android.net.Uri;

/* renamed from: com.alensw.cloud.ad */
/* loaded from: classes.dex */
public class C0863ad {

    /* renamed from: a */
    public final Uri f3137a;

    /* renamed from: b */
    public final Uri f3138b;

    /* renamed from: c */
    public int f3139c;

    /* renamed from: d */
    public volatile int f3140d;

    public C0863ad(Uri uri, Uri uri2) {
        this(uri, uri2, 0);
    }

    public C0863ad(Uri uri, Uri uri2, int i) {
        this.f3137a = uri;
        this.f3138b = uri2;
        this.f3140d = i;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C0863ad)) {
            return false;
        }
        C0863ad c0863ad = (C0863ad) obj;
        return this.f3137a.equals(c0863ad.f3137a) && this.f3138b.equals(c0863ad.f3138b);
    }

    public int hashCode() {
        return this.f3137a.hashCode() + this.f3138b.hashCode();
    }

    public String toString() {
        return this.f3137a.toString() + " <-> " + this.f3138b.toString();
    }
}
