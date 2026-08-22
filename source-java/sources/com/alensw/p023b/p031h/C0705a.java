package com.alensw.p023b.p031h;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.alensw.p023b.p032i.C0724c;
import java.lang.reflect.Field;

/* renamed from: com.alensw.b.h.a */
/* loaded from: classes.dex */
public class C0705a extends BitmapFactory.Options {

    /* renamed from: a */
    public static Bitmap.Config f2661a = Bitmap.Config.ARGB_8888;

    /* renamed from: f */
    private static final C0724c f2662f = new C0724c(4);

    /* renamed from: g */
    private static Field f2663g;

    /* renamed from: b */
    public int f2664b;

    /* renamed from: c */
    public int f2665c;

    /* renamed from: d */
    public boolean f2666d;

    /* renamed from: e */
    protected boolean f2667e;

    static {
        try {
            f2663g = BitmapFactory.Options.class.getField("inNativeAlloc");
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public static void m2764a(C0705a c0705a) {
        synchronized (f2662f) {
            f2662f.mo2899b(c0705a);
        }
    }

    /* renamed from: e */
    public static C0705a m2765e() {
        C0705a c0705a;
        synchronized (f2662f) {
            c0705a = (C0705a) f2662f.m2906a();
        }
        if (c0705a == null) {
            return new C0705a();
        }
        c0705a.m2766a();
        return c0705a;
    }

    /* renamed from: a */
    public void m2766a() {
        this.mCancel = false;
        this.inDither = false;
        this.inJustDecodeBounds = false;
        this.inPreferredConfig = null;
        this.inSampleSize = 1;
        this.outWidth = 0;
        this.outHeight = 0;
        this.outMimeType = null;
        this.f2664b = 0;
        this.f2665c = 0;
        this.f2666d = false;
        this.f2667e = false;
    }

    /* renamed from: a */
    public void m2767a(boolean z) {
        if (f2663g != null) {
            try {
                f2663g.setBoolean(this, z);
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: b */
    public void m2768b() {
        this.inJustDecodeBounds = false;
        this.inSampleSize = 1;
        this.inPreferredConfig = f2661a;
    }

    /* renamed from: c */
    public boolean m2769c() {
        return this.outWidth < 0 || this.outHeight < 0;
    }

    /* renamed from: d */
    public boolean m2770d() {
        if (f2663g != null) {
            try {
                return f2663g.getBoolean(this);
            } catch (Throwable th) {
            }
        }
        return false;
    }

    public String toString() {
        return "(" + this.outWidth + "x" + this.outHeight + "/" + this.inSampleSize + "x" + this.f2665c + "°), type=" + this.outMimeType + ", cancel=" + this.mCancel;
    }
}
