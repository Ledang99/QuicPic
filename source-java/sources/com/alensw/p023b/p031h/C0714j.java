package com.alensw.p023b.p031h;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.net.Uri;
import android.view.View;
import com.alensw.p023b.p034k.C0730a;
import java.util.Locale;

/* renamed from: com.alensw.b.h.j */
/* loaded from: classes.dex */
public class C0714j extends C0712h {

    /* renamed from: c */
    protected static C0730a f2704c = new C0730a(1, 2, 4, 5);

    /* renamed from: d */
    public int f2705d;

    /* renamed from: h */
    public String f2706h;

    /* renamed from: i */
    public Uri f2707i;

    public C0714j(int i, int i2, int i3, Uri uri, String str) {
        super(i, i2, 0, 0);
        this.f2706h = "image/bmp";
        this.f2707i = Uri.EMPTY;
        m2858a(i3, uri, str);
    }

    public C0714j(Bitmap bitmap, int i) {
        super(bitmap);
        this.f2706h = "image/bmp";
        this.f2707i = Uri.EMPTY;
        m2858a(i, (Uri) null, "image/bmp");
    }

    public C0714j(Bitmap bitmap, int i, Uri uri, C0705a c0705a) {
        super(bitmap, c0705a.f2664b, c0705a.f2665c);
        this.f2706h = "image/bmp";
        this.f2707i = Uri.EMPTY;
        m2858a(i, uri, c0705a.outMimeType);
    }

    public C0714j(Uri uri, C0705a c0705a) {
        super(c0705a.outWidth, c0705a.outHeight, c0705a.f2664b, c0705a.f2665c);
        this.f2706h = "image/bmp";
        this.f2707i = Uri.EMPTY;
        m2858a(c0705a.m2769c() ? -1 : 0, uri, c0705a.outMimeType);
    }

    /* renamed from: a */
    public static float m2856a(float[] fArr) {
        return (float) Math.hypot(fArr[0], fArr[3]);
    }

    /* renamed from: a */
    public static String m2857a(String str, boolean z) {
        int lastIndexOf = str != null ? str.lastIndexOf(46) : -1;
        if (lastIndexOf == -1) {
            return "";
        }
        String substring = str.substring(lastIndexOf + 1);
        return z ? substring.toLowerCase(Locale.ENGLISH) : substring;
    }

    /* renamed from: a */
    private void m2858a(int i, Uri uri, String str) {
        this.f2705d = i;
        if (str == null) {
            str = "image/bmp";
        }
        this.f2706h = str;
        if (uri == null) {
            uri = Uri.EMPTY;
        }
        this.f2707i = uri;
        this.f2698b.f2703e = m2859a(this.f2707i.toString());
    }

    /* renamed from: a */
    public static boolean m2859a(String str) {
        return "jps".equals(m2857a(str, true));
    }

    /* renamed from: b */
    public static float m2860b(float[] fArr) {
        return (float) Math.toDegrees(Math.atan2(fArr[3], fArr[4]));
    }

    /* renamed from: b */
    public static boolean m2861b(String str) {
        String m2857a = m2857a(str, true);
        return "jps".equals(m2857a) || "mpo".equals(m2857a);
    }

    /* renamed from: a */
    public void mo2862a(int i, int i2, Matrix matrix, RectF rectF) {
    }

    /* renamed from: a */
    public void mo2828a(Canvas canvas, Matrix matrix, C0714j c0714j, Matrix matrix2, Paint paint, boolean z) {
        if (m2854j()) {
            canvas.drawBitmap(m2848d(), matrix, paint);
        } else {
            if (c0714j == null || !c0714j.m2854j()) {
                return;
            }
            canvas.drawBitmap(c0714j.m2848d(), matrix2, paint);
        }
    }

    /* renamed from: a */
    public void mo2829a(boolean z) {
    }

    /* renamed from: a */
    public final boolean m2863a(Uri uri) {
        return this.f2707i == uri || this.f2707i.equals(uri);
    }

    /* renamed from: a */
    public boolean mo2830a(View view, Paint paint) {
        return true;
    }

    /* renamed from: b */
    public long mo2831b() {
        return 0L;
    }

    @Override // com.alensw.p023b.p031h.AbstractC0716l
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public C0714j mo2865l() {
        return (C0714j) super.mo2865l();
    }

    @Override // com.alensw.p023b.p031h.C0712h
    public String toString() {
        return super.toString() + ", type=" + this.f2705d + ", duration=" + mo2831b() + ", uri=" + this.f2707i;
    }
}
