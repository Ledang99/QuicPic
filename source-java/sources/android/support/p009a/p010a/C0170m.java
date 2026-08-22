package android.support.p009a.p010a;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;

/* renamed from: android.support.a.a.m */
/* loaded from: classes.dex */
public class C0170m extends Drawable {

    /* renamed from: b */
    private static final float f762b = (float) Math.toRadians(45.0d);

    /* renamed from: c */
    private final float f764c;

    /* renamed from: d */
    private final float f765d;

    /* renamed from: e */
    private final float f766e;

    /* renamed from: f */
    private final float f767f;

    /* renamed from: g */
    private final float f768g;

    /* renamed from: h */
    private final boolean f769h;

    /* renamed from: j */
    private final int f771j;

    /* renamed from: l */
    private float f773l;

    /* renamed from: a */
    private final Paint f763a = new Paint();

    /* renamed from: i */
    private final Path f770i = new Path();

    /* renamed from: k */
    private boolean f772k = false;

    public C0170m(Context context) {
        float f = context.getResources().getDisplayMetrics().density;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.textColorPrimary, typedValue, true);
        this.f771j = (int) (24.0f * f);
        this.f766e = 18.0f * f;
        this.f764c = 2.0f * f;
        this.f768g = 3.2f * f;
        this.f765d = 11.31f * f;
        this.f767f = f * 16.0f;
        this.f769h = true;
        int color = context.getResources().getColor(typedValue.resourceId);
        this.f763a.setAntiAlias(true);
        this.f763a.setColor(color);
        this.f763a.setStyle(Paint.Style.STROKE);
        this.f763a.setStrokeJoin(Paint.Join.ROUND);
        this.f763a.setStrokeCap(Paint.Cap.SQUARE);
        this.f763a.setStrokeWidth(this.f764c);
    }

    /* renamed from: a */
    private static float m415a(float f, float f2, float f3) {
        return ((f2 - f) * f3) + f;
    }

    /* renamed from: a */
    public void m416a(int i) {
        this.f763a.setColor(i);
        invalidateSelf();
    }

    /* renamed from: a */
    protected void m417a(boolean z) {
        this.f772k = z;
    }

    /* renamed from: a */
    protected boolean mo411a() {
        return false;
    }

    /* renamed from: b */
    public int m418b() {
        return this.f763a.getColor();
    }

    /* renamed from: b */
    public void m419b(float f) {
        this.f773l = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        boolean mo411a = mo411a();
        float m415a = m415a(this.f766e, this.f765d, this.f773l);
        float m415a2 = m415a(this.f766e, this.f767f, this.f773l);
        float m415a3 = m415a(0.0f, this.f764c / 2.0f, this.f773l);
        float m415a4 = m415a(0.0f, f762b, this.f773l);
        float m415a5 = m415a(mo411a ? 0.0f : -180.0f, mo411a ? 180.0f : 0.0f, this.f773l);
        float m415a6 = m415a(this.f768g + this.f764c, 0.0f, this.f773l);
        this.f770i.rewind();
        float f = (-m415a2) / 2.0f;
        this.f770i.moveTo(f + m415a3, 0.0f);
        this.f770i.rLineTo(m415a2 - m415a3, 0.0f);
        float round = Math.round(m415a * Math.cos(m415a4));
        float round2 = Math.round(Math.sin(m415a4) * m415a);
        this.f770i.moveTo(f, m415a6);
        this.f770i.rLineTo(round, round2);
        this.f770i.moveTo(f, -m415a6);
        this.f770i.rLineTo(round, -round2);
        this.f770i.moveTo(0.0f, 0.0f);
        this.f770i.close();
        canvas.save(1);
        if (this.f769h) {
            canvas.rotate((this.f772k ^ mo411a ? -1 : 1) * m415a5, bounds.centerX(), bounds.centerY());
        } else if (mo411a) {
            canvas.rotate(180.0f, bounds.centerX(), bounds.centerY());
        }
        canvas.translate(bounds.centerX(), bounds.centerY());
        canvas.drawPath(this.f770i, this.f763a);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f771j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f771j;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        int color = this.f763a.getColor();
        this.f763a.setColor((color & 16777215) | (((Color.alpha(color) * i) / 255) << 24));
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f763a.setColorFilter(colorFilter);
    }
}
