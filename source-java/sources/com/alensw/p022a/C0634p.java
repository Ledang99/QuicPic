package com.alensw.p022a;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.p023b.p031h.C0706b;
import com.alensw.p023b.p031h.C0712h;
import com.p043b.p044a.C1387b;
import com.p043b.p044a.C1397l;

/* renamed from: com.alensw.a.p */
/* loaded from: classes.dex */
public class C0634p extends C0712h {

    /* renamed from: a */
    private static final RectF f2431a = new RectF();

    /* renamed from: c */
    private static final Matrix f2432c = new Matrix();

    /* renamed from: d */
    private static final Paint f2433d = new Paint(1);

    /* renamed from: o */
    private static final Bitmap f2434o = C0706b.m2773a(1, 1, Bitmap.Config.RGB_565);

    /* renamed from: p */
    private static final Canvas f2435p = new Canvas();

    /* renamed from: q */
    private static final Paint f2436q = new Paint(3);

    /* renamed from: r */
    private static final RectF f2437r = new RectF();

    /* renamed from: h */
    private int f2438h;

    /* renamed from: i */
    private final int f2439i;

    /* renamed from: j */
    private final int f2440j;

    /* renamed from: k */
    private final int f2441k;

    /* renamed from: l */
    private final float f2442l;

    /* renamed from: m */
    private final boolean f2443m;

    /* renamed from: n */
    private final C0712h[] f2444n;

    public C0634p(int i, int i2, int i3, float f, int i4, int i5, boolean z) {
        super(i2, i3, 0, 0);
        this.f2444n = new C0712h[5];
        this.f2441k = i;
        this.f2439i = i5;
        this.f2442l = f;
        this.f2443m = z;
        this.f2440j = Math.min(m2418b(i), i4);
        if (i == 2) {
            this.f2698b.f2699a = Math.min(i2, (((this.f2440j - 1) * i3) / 10) + i3);
        }
    }

    /* renamed from: a */
    public static C0712h m2416a(Resources resources, int i, int i2, int i3, int i4) {
        C0712h m2837a;
        int i5 = 0;
        int i6 = i == 2 ? QuickApp.f2075r.f2373d : i2;
        int i7 = i == 2 ? QuickApp.f2075r.f2374e : i3;
        C0712h m2837a2 = C0712h.m2837a(i6, i7, C0615bc.f2368a);
        if (m2837a2 == null) {
            return null;
        }
        int argb = Color.argb(255, ((Color.red(i4) * 208) + 6144) / 256, ((Color.green(i4) * 208) + 6144) / 256, ((208 * Color.blue(i4)) + 6144) / 256);
        m2837a2.m2848d().eraseColor(argb);
        int min = Math.min((i6 * 3) / 4, (i7 * 3) / 4);
        C1397l m4499a = C1387b.m4499a(resources, R.raw.ic_menu_folder, -7829368, min);
        m4499a.setBounds((i6 - min) / 2, (i7 - min) / 2, (i6 + min) / 2, (min + i7) / 2);
        m4499a.draw(new Canvas(m2837a2.m2848d()));
        if (i != 2 || (m2837a = C0712h.m2837a(i6, i7, C0615bc.f2368a)) == null) {
            return m2837a2;
        }
        m2837a.m2848d().eraseColor(argb);
        C0634p c0634p = new C0634p(i, i2, i3, resources.getDisplayMetrics().density, 4, i4, false);
        int m2418b = m2418b(i);
        while (i5 < m2418b) {
            c0634p.m2422a(i5, i5 == 0 ? m2837a2 : m2837a);
            i5++;
        }
        m2837a2.m2866m();
        m2837a.m2866m();
        return c0634p;
    }

    /* renamed from: a */
    private void m2417a(Canvas canvas, RectF rectF, Paint paint) {
        if (this.f2441k == 2) {
            for (int i = this.f2440j - 1; i >= 0; i--) {
                C0712h c0712h = this.f2444n[i];
                if (c0712h != null && c0712h.m2854j()) {
                    m2428c(canvas, rectF, i, c0712h, paint);
                }
            }
            return;
        }
        for (int i2 = 0; i2 < this.f2440j; i2++) {
            C0712h c0712h2 = this.f2444n[i2];
            if (c0712h2 != null && c0712h2.m2854j()) {
                if (this.f2441k == 1) {
                    m2424a(canvas, rectF, i2, c0712h2, paint);
                } else if (this.f2441k == 3) {
                    m2426b(canvas, rectF, i2, c0712h2, paint);
                }
            }
        }
    }

    /* renamed from: b */
    public static int m2418b(int i) {
        switch (i) {
            case 1:
                return 4;
            case 2:
            case 3:
                return 3;
            default:
                return 1;
        }
    }

    /* renamed from: o */
    private C0712h m2419o() {
        int e = m2849e();
        int f = m2850f();
        C0712h m2837a = C0712h.m2837a(e, f, C0615bc.f2368a);
        if (m2837a != null) {
            f2435p.setBitmap(m2837a.m2848d());
            if (!m2837a.m2853i()) {
                f2435p.drawColor(this.f2439i);
            }
            f2437r.set(0.0f, 0.0f, e, f);
            m2417a(f2435p, f2437r, f2436q);
            f2435p.setBitmap(f2434o);
            m2420p();
            this.f2444n[4] = m2837a;
        }
        return m2837a;
    }

    /* renamed from: p */
    private void m2420p() {
        for (int i = 0; i < this.f2444n.length; i++) {
            if (this.f2444n[i] != null) {
                this.f2444n[i].m2866m();
                this.f2444n[i] = null;
            }
        }
    }

    @Override // com.alensw.p023b.p031h.C0712h, com.alensw.p023b.p031h.AbstractC0716l
    /* renamed from: a */
    protected void mo2421a() {
        super.mo2421a();
        m2420p();
    }

    /* renamed from: a */
    public void m2422a(int i, C0712h c0712h) {
        if (m2867n() <= 0) {
            return;
        }
        boolean m2427b = m2427b();
        if (i >= 0 && i < 4) {
            this.f2438h |= 1 << i;
            if (this.f2444n[i] != null) {
                this.f2444n[i].m2866m();
            }
            this.f2444n[i] = c0712h != null ? (C0712h) c0712h.mo2865l() : null;
        }
        if (m2427b || !m2427b()) {
            return;
        }
        m2419o();
    }

    @Override // com.alensw.p023b.p031h.C0712h
    /* renamed from: a */
    public void mo2423a(Canvas canvas, Rect rect, RectF rectF, Paint paint) {
        C0712h c0712h = this.f2444n[4];
        if (c0712h == null || !c0712h.m2854j()) {
            m2417a(canvas, rectF, paint);
            return;
        }
        int i = this.f2698b.f2699a;
        int i2 = this.f2698b.f2700b;
        float width = rectF.width() - i;
        float height = rectF.height() - i2;
        if (Math.abs(width) >= 2.0f || Math.abs(height) >= 2.0f) {
            canvas.drawBitmap(c0712h.m2848d(), rect, rectF, paint);
            return;
        }
        canvas.drawBitmap(c0712h.m2848d(), (width / 2.0f) + rectF.left, (height / 2.0f) + rectF.top, paint);
    }

    /* renamed from: a */
    protected void m2424a(Canvas canvas, RectF rectF, int i, C0712h c0712h, Paint paint) {
        float width = rectF.width() / 2.0f;
        float height = rectF.height() / 2.0f;
        RectF rectF2 = f2431a;
        rectF2.left = ((i - (r0 * 2)) * width) + rectF.left;
        rectF2.right = rectF2.left + width;
        rectF2.top = ((i / 2) * height) + rectF.top;
        rectF2.bottom = rectF2.top + height;
        f2432c.reset();
        c0712h.m2844a(f2432c, width, height, this.f2443m ? 2 : 1);
        f2432c.postTranslate(rectF2.left, rectF2.top);
        c0712h.m2845a(f2432c, rectF2);
        canvas.save(2);
        canvas.clipRect(rectF2);
        canvas.drawBitmap(c0712h.m2848d(), f2432c, paint);
        canvas.restore();
    }

    /* renamed from: a */
    public boolean m2425a(int i) {
        return (this.f2438h & (1 << i)) != 0;
    }

    /* renamed from: b */
    protected void m2426b(Canvas canvas, RectF rectF, int i, C0712h c0712h, Paint paint) {
        float min = Math.min(rectF.width(), rectF.height());
        RectF rectF2 = f2431a;
        if (i == 0) {
            rectF2.left = rectF.left;
            rectF2.right = rectF2.left + min;
            rectF2.top = rectF.top;
            rectF2.bottom = rectF.bottom;
        } else {
            rectF2.left = rectF.left + min;
            rectF2.right = rectF2.left + (min / 2.0f);
            rectF2.top = (i == 1 ? 0.0f : min / 2.0f) + rectF.top;
            rectF2.bottom = rectF2.top + (min / 2.0f);
        }
        f2432c.reset();
        c0712h.m2844a(f2432c, rectF2.width(), rectF2.height(), this.f2443m ? 2 : 1);
        f2432c.postTranslate(rectF2.left, rectF2.top);
        c0712h.m2845a(f2432c, rectF2);
        canvas.save(2);
        canvas.clipRect(rectF2);
        canvas.drawBitmap(c0712h.m2848d(), f2432c, paint);
        canvas.restore();
    }

    /* renamed from: b */
    public boolean m2427b() {
        return this.f2438h == (1 << this.f2440j) + (-1);
    }

    /* renamed from: c */
    protected void m2428c(Canvas canvas, RectF rectF, int i, C0712h c0712h, Paint paint) {
        float width = rectF.width();
        float min = Math.min(width, rectF.height());
        float f = min / 10.0f;
        float f2 = min - ((f / 4.0f) * i);
        RectF rectF2 = f2431a;
        rectF2.right = (((width - min) - ((this.f2440j - 1) * f)) / 2.0f) + rectF.left + min + (i * f);
        rectF2.left = rectF2.right - f2;
        rectF2.bottom = rectF.bottom;
        rectF2.top = rectF2.bottom - f2;
        f2432c.reset();
        c0712h.m2844a(f2432c, rectF2.width(), rectF2.height(), 1);
        f2432c.postTranslate(rectF2.left, rectF2.top);
        c0712h.m2845a(f2432c, rectF2);
        f2433d.setColor(this.f2439i);
        f2433d.setShadowLayer(this.f2442l / 3.0f, this.f2442l / 3.0f, 0.0f, -16777216);
        canvas.drawRect(rectF2, f2433d);
        canvas.drawBitmap(c0712h.m2848d(), f2432c, paint);
    }

    /* renamed from: c */
    public boolean m2429c() {
        return m2867n() > 0;
    }
}
