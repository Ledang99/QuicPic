package com.alensw.p023b.p031h;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import android.view.View;
import com.alensw.jni.JniUtils;
import com.alensw.p023b.p026c.C0662f;

/* renamed from: com.alensw.b.h.d */
/* loaded from: classes.dex */
public class C0708d extends C0714j {

    /* renamed from: a */
    public static final boolean f2677a;

    /* renamed from: j */
    private int f2678j;

    /* renamed from: k */
    private int f2679k;

    /* renamed from: l */
    private int f2680l;

    /* renamed from: m */
    private int f2681m;

    /* renamed from: n */
    private int f2682n;

    /* renamed from: o */
    private int f2683o;

    /* renamed from: p */
    private int[] f2684p;

    /* renamed from: q */
    private int[] f2685q;

    /* renamed from: r */
    private Handler f2686r;

    /* renamed from: s */
    private C0711g f2687s;

    /* renamed from: t */
    private View f2688t;

    static {
        f2677a = Build.VERSION.SDK_INT >= 8 && (Build.VERSION.SDK_INT < 11 || Build.VERSION.SDK_INT > 13);
    }

    public C0708d(int i, Uri uri, Handler handler, int i2, int i3, int[] iArr) {
        super(i2, i3, 4, uri, "image/gif");
        this.f2682n = -1;
        this.f2683o = JniUtils.gifGetImageWidth(i) / i2;
        this.f2684p = iArr;
        m2817a(i, handler);
    }

    public C0708d(int i, Uri uri, Handler handler, Bitmap bitmap) {
        super(bitmap, 4);
        this.f2682n = -1;
        this.f2706h = "image/gif";
        this.f2707i = uri;
        m2817a(i, handler);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public int m2813a(int i, int i2, int i3) {
        int i4 = 0;
        synchronized (this) {
            if (this.f2678j != 0 && i2 != 0 && i3 == this.f2678j) {
                i4 = JniUtils.gifDecodeFrame(this.f2678j, i, i2);
            }
        }
        return i4;
    }

    /* renamed from: a */
    public static C0708d m2816a(C0662f c0662f, Uri uri, Handler handler) {
        try {
            int gifOpenFD = JniUtils.gifOpenFD(c0662f.m2596c(), f2677a);
            if (gifOpenFD == 0) {
                throw new RuntimeException("load error");
            }
            if (JniUtils.gifGetFrameCount(gifOpenFD) <= 1) {
                throw new RuntimeException("not animated");
            }
            int gifGetImageWidth = JniUtils.gifGetImageWidth(gifOpenFD);
            int gifGetImageHeight = JniUtils.gifGetImageHeight(gifOpenFD);
            int i = gifGetImageWidth * gifGetImageHeight;
            while (gifGetImageWidth > 0 && gifGetImageHeight > 0) {
                if (i <= C0706b.f2671d) {
                    if (f2677a) {
                        Bitmap m2773a = C0706b.m2773a(gifGetImageWidth, gifGetImageHeight, Bitmap.Config.ARGB_8888);
                        if (m2773a != null) {
                            return new C0708d(gifOpenFD, uri, handler, m2773a);
                        }
                    } else {
                        int[] m2819a = m2819a(i);
                        if (m2819a != null) {
                            return new C0708d(gifOpenFD, uri, handler, gifGetImageWidth, gifGetImageHeight, m2819a);
                        }
                    }
                }
                gifGetImageWidth >>= 1;
                gifGetImageHeight >>= 1;
                i >>= 2;
            }
            throw new RuntimeException("out of memory");
        } catch (Throwable th) {
            Log.e("GifMovie", "load GIF: ", th);
            if (0 != 0) {
                JniUtils.gifClose(0);
            }
            return null;
        }
    }

    /* renamed from: a */
    private void m2817a(int i, Handler handler) {
        this.f2680l = JniUtils.gifGetDuration(i);
        this.f2681m = JniUtils.gifGetFrameCount(i);
        int gifGetImageHeight = JniUtils.gifGetImageHeight(i) * JniUtils.gifGetImageWidth(i);
        this.f2685q = new int[2];
        for (int i2 = 0; i2 < 2; i2++) {
            int gifAllocBuffer = JniUtils.gifAllocBuffer(gifGetImageHeight);
            if (gifAllocBuffer == 0) {
                throw new RuntimeException("alloc buffer failed");
            }
            this.f2685q[i2] = gifAllocBuffer;
        }
        this.f2678j = i;
        this.f2686r = handler;
    }

    /* renamed from: a */
    private static int[] m2819a(int i) {
        try {
            return new int[i];
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public boolean m2823b(int i, int i2, int i3) {
        boolean z = false;
        synchronized (this) {
            try {
                if (f2677a) {
                    if (this.f2678j != 0 && i2 != 0 && i3 == this.f2678j && m2854j()) {
                        z = JniUtils.gifDrawFrame(this.f2678j, i, i2, m2848d());
                    }
                } else if (this.f2678j != 0 && i2 != 0 && i3 == this.f2678j && this.f2684p != null) {
                    z = JniUtils.gifDrawFrame2(this.f2678j, i, i2, this.f2684p, this.f2683o);
                }
            } catch (Throwable th) {
                Log.e("GifMovie", "draw frame: ", th);
            }
        }
        return z;
    }

    /* renamed from: d */
    static /* synthetic */ int m2825d(C0708d c0708d) {
        int i = c0708d.f2679k + 1;
        c0708d.f2679k = i;
        return i;
    }

    @Override // com.alensw.p023b.p031h.C0712h, com.alensw.p023b.p031h.AbstractC0716l
    /* renamed from: a */
    protected void mo2421a() {
        super.mo2421a();
        mo2829a(false);
        synchronized (this) {
            for (int i = 0; i < 2; i++) {
                if (this.f2685q[i] != 0) {
                    JniUtils.gifFreeBuffer(this.f2685q[i]);
                    this.f2685q[i] = 0;
                }
            }
            if (this.f2678j != 0) {
                JniUtils.gifClose(this.f2678j);
                this.f2678j = 0;
            }
        }
        this.f2681m = 0;
        this.f2682n = -1;
        this.f2684p = null;
    }

    @Override // com.alensw.p023b.p031h.C0714j
    /* renamed from: a */
    public void mo2828a(Canvas canvas, Matrix matrix, C0714j c0714j, Matrix matrix2, Paint paint, boolean z) {
        if (this.f2682n != -1) {
            if (f2677a && m2854j()) {
                canvas.drawBitmap(m2848d(), matrix, paint);
                return;
            }
            if (this.f2684p != null) {
                try {
                    canvas.save(1);
                    canvas.concat(matrix);
                    canvas.drawBitmap(this.f2684p, 0, this.f2698b.f2699a, 0, 0, this.f2698b.f2699a, this.f2698b.f2700b, false, paint);
                    canvas.restore();
                    return;
                } catch (Throwable th) {
                    Log.e("GifMovie", "draw: " + th);
                }
            }
        }
        if (c0714j == null || !c0714j.m2854j()) {
            return;
        }
        canvas.drawBitmap(c0714j.m2848d(), matrix2, paint);
    }

    @Override // com.alensw.p023b.p031h.C0714j
    /* renamed from: a */
    public void mo2829a(boolean z) {
        this.f2688t = null;
        if (this.f2687s != null) {
            this.f2687s.mo2094a();
            this.f2687s = null;
        }
    }

    @Override // com.alensw.p023b.p031h.C0714j
    /* renamed from: a */
    public boolean mo2830a(View view, Paint paint) {
        if (this.f2678j == 0) {
            return false;
        }
        this.f2688t = view;
        JniUtils.gifSetBkColor(this.f2678j, paint.getColor());
        if (this.f2687s != null) {
            this.f2687s.mo2094a();
        }
        this.f2687s = new C0711g(this);
        f2704c.m2936a(this.f2687s);
        for (int i : this.f2685q) {
            this.f2687s.m2834a(new RunnableC0710f(this, i, this.f2678j));
        }
        return true;
    }

    @Override // com.alensw.p023b.p031h.C0714j
    /* renamed from: b */
    public long mo2831b() {
        return this.f2680l;
    }
}
