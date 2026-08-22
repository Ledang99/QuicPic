package com.p043b.p044a;

import android.content.res.Resources;
import android.graphics.Picture;
import android.graphics.RectF;
import java.lang.ref.SoftReference;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.b.a.b */
/* loaded from: classes.dex */
public class C1387b {

    /* renamed from: a */
    private static final ConcurrentHashMap f4885a = new ConcurrentHashMap(64);

    /* renamed from: c */
    private Picture f4887c;

    /* renamed from: d */
    private RectF f4888d;

    /* renamed from: b */
    private int f4886b = 0;

    /* renamed from: e */
    private RectF f4889e = null;

    C1387b(Picture picture, RectF rectF) {
        this.f4887c = picture;
        this.f4888d = rectF;
    }

    /* renamed from: a */
    public static C1397l m4497a(Resources resources, int i) {
        return m4502b(resources, i).m4504a();
    }

    /* renamed from: a */
    public static C1397l m4498a(Resources resources, int i, int i2) {
        return m4503b(resources, i, i2).m4504a();
    }

    /* renamed from: a */
    public static C1397l m4499a(Resources resources, int i, int i2, int i3) {
        return m4503b(resources, i, i2).m4505a(i3);
    }

    /* renamed from: a */
    private static void m4500a(int i, C1387b c1387b) {
        synchronized (f4885a) {
            f4885a.put(Integer.valueOf(i), new SoftReference(c1387b));
        }
    }

    /* renamed from: b */
    private static C1387b m4501b(int i) {
        C1387b c1387b;
        synchronized (f4885a) {
            SoftReference softReference = (SoftReference) f4885a.get(Integer.valueOf(i));
            c1387b = softReference != null ? (C1387b) softReference.get() : null;
        }
        return c1387b;
    }

    /* renamed from: b */
    public static C1387b m4502b(Resources resources, int i) {
        C1387b m4501b = m4501b(i);
        if (m4501b != null) {
            return m4501b;
        }
        C1387b m4508a = C1389d.m4508a(resources, i);
        m4500a(i, m4508a);
        return m4508a;
    }

    /* renamed from: b */
    public static C1387b m4503b(Resources resources, int i, int i2) {
        C1387b m4501b = m4501b(i);
        if (m4501b != null && m4501b.f4886b == i2) {
            return m4501b;
        }
        C1387b m4509a = C1389d.m4509a(resources, i, i2);
        m4509a.f4886b = i2;
        m4500a(i, m4509a);
        return m4509a;
    }

    /* renamed from: a */
    public C1397l m4504a() {
        return new C1397l(this.f4887c, -1, -1);
    }

    /* renamed from: a */
    public C1397l m4505a(int i) {
        return new C1397l(this.f4887c, i, i);
    }

    /* renamed from: a */
    void m4506a(RectF rectF) {
        this.f4889e = rectF;
    }
}
