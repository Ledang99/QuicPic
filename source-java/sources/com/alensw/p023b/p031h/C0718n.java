package com.alensw.p023b.p031h;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import com.alensw.p023b.p024a.C0645a;
import com.alensw.p023b.p026c.C0662f;
import com.alensw.p023b.p032i.C0722a;

/* renamed from: com.alensw.b.h.n */
/* loaded from: classes.dex */
public class C0718n extends C0714j {

    /* renamed from: a */
    public static final boolean f2723a;

    /* renamed from: j */
    public static final boolean f2724j;

    /* renamed from: w */
    private static int f2725w;

    /* renamed from: x */
    private static C0722a f2726x;

    /* renamed from: k */
    private final BitmapRegionDecoder f2727k;

    /* renamed from: l */
    private C0720p f2728l;

    /* renamed from: m */
    private View f2729m;

    /* renamed from: n */
    private final C0645a f2730n;

    /* renamed from: o */
    private final Matrix f2731o;

    /* renamed from: p */
    private Paint f2732p;

    /* renamed from: q */
    private volatile int f2733q;

    /* renamed from: r */
    private int f2734r;

    /* renamed from: s */
    private final Rect f2735s;

    /* renamed from: t */
    private final RectF f2736t;

    /* renamed from: u */
    private final Matrix f2737u;

    /* renamed from: v */
    private final float[] f2738v;

    static {
        f2723a = Build.VERSION.SDK_INT >= 14;
        f2724j = Build.VERSION.SDK_INT >= 16;
        f2725w = 64;
    }

    @TargetApi(10)
    public C0718n(BitmapRegionDecoder bitmapRegionDecoder, Uri uri, String str, Handler handler) {
        super(bitmapRegionDecoder.getWidth(), bitmapRegionDecoder.getHeight(), 3, uri, str);
        this.f2730n = new C0719o(this, f2725w);
        this.f2731o = new Matrix();
        this.f2733q = 1;
        this.f2734r = 1;
        this.f2735s = new Rect();
        this.f2736t = new RectF();
        this.f2737u = new Matrix();
        this.f2738v = new float[9];
        this.f2727k = bitmapRegionDecoder;
    }

    /* renamed from: a */
    public static int m2874a(float f, float f2) {
        int i = 0;
        while (f > (1 << (i + 1)) * f2 && i < 256) {
            i++;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0017 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x006a  */
    @TargetApi(10)
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C0718n m2876a(C0662f c0662f, Uri uri, String str, Handler handler) {
        BitmapRegionDecoder bitmapRegionDecoder;
        BitmapRegionDecoder newInstance;
        try {
            bitmapRegionDecoder = BitmapRegionDecoder.newInstance(c0662f.m2595b(), false);
        } catch (Throwable th) {
            Log.e("TilePicture", "load fd decoder: " + c0662f.m2600g() + ", " + th);
            bitmapRegionDecoder = null;
        }
        if (bitmapRegionDecoder == null) {
            try {
                newInstance = BitmapRegionDecoder.newInstance(c0662f.m2597d(), false);
            } catch (Throwable th2) {
                Log.e("TilePicture", "load fn decoder: " + c0662f.m2597d() + ", " + th2);
            }
            if (newInstance != null) {
                return null;
            }
            return new C0718n(newInstance, uri, str, handler);
        }
        newInstance = bitmapRegionDecoder;
        if (newInstance != null) {
        }
    }

    /* renamed from: a */
    private C0721q m2877a(int i, int i2) {
        int m2871c = C0717m.m2871c(i);
        int m2872d = C0717m.m2872d(i);
        int m2868a = C0717m.m2868a(i);
        while (m2868a <= i2) {
            C0721q m2889a = m2889a(i);
            if (m2889a != null) {
                return m2889a;
            }
            int i3 = m2868a + 1;
            int i4 = C0717m.f2721a + i3;
            i = C0717m.m2869a((m2871c >> i4) << i4, (m2872d >> i4) << i4, i3);
            m2868a = i3;
        }
        return null;
    }

    /* renamed from: a */
    public static void m2878a(Context context, int i) {
        if (i >= 1440) {
            C0717m.f2721a = 9;
        } else if (i >= 480) {
            C0717m.f2721a = 8;
        } else {
            C0717m.f2721a = 7;
        }
        C0717m.f2722b = 1 << C0717m.f2721a;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int round = Math.round(((displayMetrics.heightPixels * displayMetrics.widthPixels) / C0717m.f2722b) / C0717m.f2722b);
        f2725w = (C0706b.f2671d / (C0717m.f2722b * C0717m.f2722b)) - round;
        if (!f2724j) {
            round = 1;
        }
        f2726x = new C0722a(round, C0717m.f2722b, C0717m.f2722b, Bitmap.Config.ARGB_8888);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(12)
    /* renamed from: a */
    public boolean m2879a(int i, Rect rect, C0705a c0705a) {
        c0705a.inSampleSize = C0717m.m2870b(i);
        Bitmap m2888a = m2888a(rect, c0705a);
        if (m2888a == null) {
            if (c0705a.mCancel) {
                return false;
            }
            if (c0705a.m2769c()) {
                Log.e("TilePicture", "decoder tile: " + C0717m.m2873e(i));
            }
        }
        this.f2730n.m2517a(Integer.valueOf(i), m2888a != null ? new C0721q(this, i, m2888a) : new C0721q(this, i, C0717m.f2722b, C0717m.f2722b));
        return true;
    }

    @TargetApi(10)
    /* renamed from: b */
    private Bitmap m2882b(Rect rect, C0705a c0705a) {
        try {
            c0705a.inPreferredConfig = Bitmap.Config.ARGB_8888;
        } catch (Throwable th) {
            Log.e("TilePicture", "decode region: " + rect + ", scale=" + c0705a.inSampleSize + ", " + th);
        }
        synchronized (this.f2727k) {
            if (this.f2727k.isRecycled()) {
                return null;
            }
            return this.f2727k.decodeRegion(rect, c0705a);
        }
    }

    /* renamed from: b */
    public static void m2883b(Bitmap bitmap) {
        if (f2724j) {
            f2726x.mo2899b(bitmap);
        } else if (bitmap != null) {
            bitmap.recycle();
        }
    }

    /* renamed from: c */
    private Bitmap m2884c(Rect rect, C0705a c0705a) {
        boolean z = true;
        boolean z2 = false;
        Bitmap m2887o = m2887o();
        if (m2887o == null) {
            Log.e("TilePicture", "create bitmap out of memory");
            return null;
        }
        if (rect.right > this.f2698b.f2699a) {
            rect.right = this.f2698b.f2699a;
            z2 = true;
        }
        if (rect.bottom > this.f2698b.f2700b) {
            rect.bottom = this.f2698b.f2700b;
        } else {
            z = z2;
        }
        if (z) {
            try {
                m2887o.eraseColor(0);
            } catch (Throwable th) {
            }
        }
        c0705a.inBitmap = m2887o;
        Bitmap m2882b = m2882b(rect, c0705a);
        c0705a.inBitmap = null;
        if (m2882b == m2887o) {
            return m2882b;
        }
        m2883b(m2887o);
        if (m2882b == null) {
            return m2882b;
        }
        Bitmap m2774a = C0706b.m2774a(m2882b);
        Log.w("TilePicture", "decoder create bitmap: " + rect);
        return m2774a;
    }

    /* renamed from: d */
    private Bitmap m2886d(Rect rect, C0705a c0705a) {
        if (rect.right > this.f2698b.f2699a) {
            rect.right = this.f2698b.f2699a;
        }
        if (rect.bottom > this.f2698b.f2700b) {
            rect.bottom = this.f2698b.f2700b;
        }
        Bitmap m2882b = m2882b(rect, c0705a);
        if (m2882b != null) {
            return C0706b.m2774a(m2882b);
        }
        return null;
    }

    /* renamed from: o */
    public static Bitmap m2887o() {
        return f2726x.m2895a(C0717m.f2722b, C0717m.f2722b, Bitmap.Config.ARGB_8888);
    }

    /* renamed from: a */
    public Bitmap m2888a(Rect rect, C0705a c0705a) {
        return f2724j ? m2884c(rect, c0705a) : m2886d(rect, c0705a);
    }

    /* renamed from: a */
    public C0721q m2889a(int i) {
        C0721q c0721q = (C0721q) this.f2730n.m2521b(Integer.valueOf(i));
        if (c0721q != null) {
            return (C0721q) c0721q.mo2865l();
        }
        return null;
    }

    @Override // com.alensw.p023b.p031h.C0712h, com.alensw.p023b.p031h.AbstractC0716l
    /* renamed from: a */
    protected void mo2421a() {
        super.mo2421a();
        mo2829a(true);
        synchronized (this.f2727k) {
            this.f2727k.recycle();
        }
    }

    @Override // com.alensw.p023b.p031h.C0714j
    /* renamed from: a */
    public void mo2862a(int i, int i2, Matrix matrix, RectF rectF) {
        RectF rectF2 = this.f2736t;
        rectF2.set(0.0f, 0.0f, i, i2);
        if (!rectF2.intersect(rectF)) {
            synchronized (this.f2735s) {
                this.f2735s.setEmpty();
            }
            return;
        }
        matrix.getValues(this.f2738v);
        int m2874a = m2874a(1.0f / C0714j.m2856a(this.f2738v), 0.85f);
        if (this.f2734r < m2874a) {
            this.f2734r = m2874a;
        }
        matrix.invert(this.f2737u);
        this.f2737u.mapRect(rectF2);
        int i3 = C0717m.f2721a + m2874a;
        int max = (Math.max((int) Math.floor(rectF2.left), 0) >> i3) << i3;
        int max2 = (Math.max((int) Math.floor(rectF2.top), 0) >> i3) << i3;
        int min = Math.min((int) Math.ceil(rectF2.right), this.f2698b.f2699a);
        int min2 = Math.min((int) Math.ceil(rectF2.bottom), this.f2698b.f2700b);
        synchronized (this.f2735s) {
            this.f2733q = m2874a;
            this.f2735s.left = max;
            this.f2735s.top = max2;
            this.f2735s.right = min;
            this.f2735s.bottom = min2;
        }
    }

    @Override // com.alensw.p023b.p031h.C0714j
    /* renamed from: a */
    public void mo2828a(Canvas canvas, Matrix matrix, C0714j c0714j, Matrix matrix2, Paint paint, boolean z) {
        Paint paint2 = this.f2732p;
        int i = c0714j != null ? c0714j.f2698b.f2701c : 3;
        boolean z2 = (i == 3 || i == 1 || paint2 == null) ? false : true;
        if (c0714j == null || !c0714j.m2854j()) {
            Log.w("TilePicture", "draw without preview: " + this.f2707i);
            return;
        }
        if (z2 && c0714j.m2853i()) {
            canvas.save(1);
            canvas.concat(matrix2);
            canvas.drawRect(0.0f, 0.0f, c0714j.m2849e(), c0714j.m2850f(), paint2);
            canvas.restore();
        }
        canvas.drawBitmap(c0714j.m2848d(), matrix2, paint);
        int i2 = this.f2733q;
        int min = Math.min(i2 + 1, this.f2734r);
        int i3 = C0717m.f2722b << i2;
        C0720p c0720p = this.f2728l;
        Matrix matrix3 = this.f2731o;
        int i4 = this.f2735s.left;
        int i5 = this.f2735s.top;
        int i6 = this.f2735s.right;
        int i7 = this.f2735s.bottom;
        int max = (z || this.f2729m == null) ? 1 : Math.max(i6 - i4, i7 - i5) >> (C0717m.f2721a + i2);
        for (int i8 = i5; i8 < i7; i8 += i3) {
            int i9 = i4;
            while (i9 < i6) {
                int m2869a = C0717m.m2869a(i9, i8, i2);
                C0721q m2877a = m2877a(m2869a, min);
                int i10 = m2877a != null ? m2877a.f2746c : -1;
                if (m2877a != null) {
                    Bitmap d = m2877a.m2848d();
                    if (d != null && !d.isRecycled()) {
                        int m2870b = C0717m.m2870b(i10);
                        int m2871c = C0717m.m2871c(i10);
                        int m2872d = C0717m.m2872d(i10);
                        matrix3.setScale(m2870b, m2870b);
                        matrix3.postTranslate(m2871c, m2872d);
                        matrix3.postConcat(matrix);
                        if (z2 && m2877a.f2745a) {
                            canvas.save(1);
                            canvas.concat(matrix3);
                            canvas.drawRect(0.0f, 0.0f, Math.min(i6 - m2871c, C0717m.f2722b), Math.min(i7 - m2872d, C0717m.f2722b), paint2);
                            canvas.drawBitmap(d, 0.0f, 0.0f, paint);
                            canvas.restore();
                        } else {
                            canvas.drawBitmap(d, matrix3, paint);
                        }
                    }
                    m2877a.m2866m();
                }
                i9 += i3;
                max = (max <= 0 || i10 == m2869a || c0720p == null || !c0720p.m2892a(m2869a)) ? max : max - 1;
            }
        }
    }

    @Override // com.alensw.p023b.p031h.C0714j
    /* renamed from: a */
    public void mo2829a(boolean z) {
        synchronized (this.f2735s) {
            this.f2735s.setEmpty();
        }
        this.f2729m = null;
        if (this.f2728l != null) {
            this.f2728l.mo2094a();
            this.f2728l = null;
        }
        if (z) {
            this.f2730n.m2524c();
        }
    }

    @Override // com.alensw.p023b.p031h.C0714j
    /* renamed from: a */
    public boolean mo2830a(View view, Paint paint) {
        this.f2729m = view;
        this.f2732p = paint;
        if (this.f2728l != null) {
            this.f2728l.mo2094a();
        }
        this.f2728l = new C0720p(this, null);
        f2704c.m2936a(this.f2728l);
        return true;
    }
}
