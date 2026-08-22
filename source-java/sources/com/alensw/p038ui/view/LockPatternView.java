package com.alensw.p038ui.view;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.logging.impl.SimpleLog;

/* loaded from: classes.dex */
public class LockPatternView extends View {

    /* renamed from: a */
    private final C1315ap[][] f4418a;

    /* renamed from: b */
    private final float f4419b;

    /* renamed from: c */
    private final float f4420c;

    /* renamed from: d */
    private final float f4421d;

    /* renamed from: e */
    private final Paint f4422e;

    /* renamed from: f */
    private final Paint f4423f;

    /* renamed from: g */
    private InterfaceC1316aq f4424g;

    /* renamed from: h */
    private final ArrayList f4425h;

    /* renamed from: i */
    private final boolean[][] f4426i;

    /* renamed from: j */
    private float f4427j;

    /* renamed from: k */
    private float f4428k;

    /* renamed from: l */
    private boolean f4429l;

    /* renamed from: m */
    private boolean f4430m;

    /* renamed from: n */
    private boolean f4431n;

    /* renamed from: o */
    private boolean f4432o;

    /* renamed from: p */
    private float f4433p;

    /* renamed from: q */
    private float f4434q;

    /* renamed from: r */
    private float f4435r;

    /* renamed from: s */
    private final Path f4436s;

    /* renamed from: t */
    private final Rect f4437t;

    /* renamed from: u */
    private final Rect f4438u;

    /* renamed from: v */
    private int f4439v;

    /* renamed from: w */
    private int f4440w;

    /* renamed from: x */
    private int f4441x;

    /* renamed from: y */
    private final Interpolator f4442y;

    /* renamed from: z */
    private final Interpolator f4443z;

    public LockPatternView(Context context) {
        this(context, null);
    }

    public LockPatternView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4422e = new Paint(5);
        this.f4423f = new Paint(5);
        this.f4425h = new ArrayList(9);
        this.f4426i = (boolean[][]) Array.newInstance((Class<?>) Boolean.TYPE, 3, 3);
        this.f4427j = -1.0f;
        this.f4428k = -1.0f;
        this.f4429l = true;
        this.f4430m = false;
        this.f4431n = false;
        this.f4432o = false;
        this.f4433p = 0.6f;
        this.f4436s = new Path();
        this.f4437t = new Rect();
        this.f4438u = new Rect();
        this.f4439v = 1;
        setClickable(true);
        Resources resources = getResources();
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.textColorPrimary, typedValue, true);
        int color = resources.getColor(typedValue.resourceId);
        float f = resources.getDisplayMetrics().density;
        this.f4440w = color;
        this.f4441x = color;
        this.f4423f.setColor(this.f4440w);
        this.f4423f.setStyle(Paint.Style.STROKE);
        this.f4423f.setStrokeJoin(Paint.Join.ROUND);
        this.f4423f.setStrokeCap(Paint.Cap.ROUND);
        this.f4421d = 3.0f * f;
        this.f4423f.setStrokeWidth(this.f4421d);
        this.f4419b = f * 12.0f;
        this.f4420c = 2.3333333f;
        this.f4418a = (C1315ap[][]) Array.newInstance((Class<?>) C1315ap.class, 3, 3);
        for (int i = 0; i < 3; i++) {
            for (int i2 = 0; i2 < 3; i2++) {
                this.f4418a[i][i2] = new C1315ap();
            }
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.f4442y = AnimationUtils.loadInterpolator(context, R.interpolator.fast_out_slow_in);
            this.f4443z = AnimationUtils.loadInterpolator(context, R.interpolator.linear_out_slow_in);
        } else {
            this.f4442y = new AccelerateDecelerateInterpolator();
            this.f4443z = new AccelerateDecelerateInterpolator();
        }
    }

    /* renamed from: a */
    private float m4271a(float f, float f2, float f3, float f4) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        return Math.min(1.0f, Math.max(0.0f, ((((float) Math.sqrt((f5 * f5) + (f6 * f6))) / this.f4434q) - 0.3f) * 4.0f));
    }

    /* renamed from: a */
    private float m4272a(int i) {
        return getPaddingLeft() + (i * this.f4434q) + (this.f4434q / 2.0f);
    }

    /* renamed from: a */
    private int m4274a(float f) {
        float f2 = this.f4435r;
        float f3 = f2 * this.f4433p;
        float paddingTop = ((f2 - f3) / 2.0f) + getPaddingTop();
        for (int i = 0; i < 3; i++) {
            float f4 = (i * f2) + paddingTop;
            if (f >= f4 && f <= f4 + f3) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    private int m4275a(int i, int i2) {
        int size = View.MeasureSpec.getSize(i);
        switch (View.MeasureSpec.getMode(i)) {
            case Integer.MIN_VALUE:
                return Math.max(size, i2);
            case 0:
                return i2;
            default:
                return size;
        }
    }

    /* renamed from: a */
    private int m4276a(boolean z) {
        return (!z || this.f4430m || this.f4432o) ? this.f4440w : this.f4441x;
    }

    /* renamed from: a */
    private C1314ao m4277a(float f, float f2) {
        int i;
        C1314ao c1314ao = null;
        C1314ao m4288b = m4288b(f, f2);
        if (m4288b == null) {
            return null;
        }
        ArrayList arrayList = this.f4425h;
        if (!arrayList.isEmpty()) {
            C1314ao c1314ao2 = (C1314ao) arrayList.get(arrayList.size() - 1);
            int i2 = m4288b.f4539a - c1314ao2.f4539a;
            int i3 = m4288b.f4540b - c1314ao2.f4540b;
            int i4 = c1314ao2.f4539a;
            int i5 = c1314ao2.f4540b;
            if (Math.abs(i2) == 2 && Math.abs(i3) != 1) {
                i4 = (i2 > 0 ? 1 : -1) + c1314ao2.f4539a;
            }
            if (Math.abs(i3) != 2 || Math.abs(i2) == 1) {
                i = i5;
            } else {
                i = c1314ao2.f4540b + (i3 <= 0 ? -1 : 1);
            }
            c1314ao = C1314ao.m4347a(i4, i);
        }
        if (c1314ao != null && !this.f4426i[c1314ao.f4539a][c1314ao.f4540b]) {
            m4283a(c1314ao);
        }
        m4283a(m4288b);
        return m4288b;
    }

    /* renamed from: a */
    public static String m4278a(List list) {
        if (list == null) {
            return "";
        }
        int size = list.size();
        StringBuilder sb = new StringBuilder(size);
        for (int i = 0; i < size; i++) {
            C1314ao c1314ao = (C1314ao) list.get(i);
            sb.append((char) (c1314ao.m4350b() + (c1314ao.m4349a() * 3) + 97));
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4279a(float f, float f2, long j, Interpolator interpolator, C1315ap c1315ap, Runnable runnable) {
        new C1313an(this, this, interpolator, c1315ap, f, f2, runnable).m4402a(j, true);
    }

    /* renamed from: a */
    private void m4280a(Canvas canvas, float f, float f2, float f3, boolean z, float f4) {
        this.f4422e.setColor(m4276a(z));
        this.f4422e.setAlpha((int) (255.0f * f4));
        canvas.drawCircle(f, f2, f3 / 2.0f, this.f4422e);
    }

    /* renamed from: a */
    private void m4281a(MotionEvent motionEvent) {
        float f;
        float f2;
        float f3;
        float f4 = this.f4421d;
        int historySize = motionEvent.getHistorySize();
        this.f4438u.setEmpty();
        boolean z = false;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= historySize + 1) {
                break;
            }
            float historicalX = i2 < historySize ? motionEvent.getHistoricalX(i2) : motionEvent.getX();
            float historicalY = i2 < historySize ? motionEvent.getHistoricalY(i2) : motionEvent.getY();
            C1314ao m4277a = m4277a(historicalX, historicalY);
            int size = this.f4425h.size();
            if (m4277a != null && size == 1) {
                this.f4432o = true;
                m4292c();
            }
            float abs = Math.abs(historicalX - this.f4427j);
            float abs2 = Math.abs(historicalY - this.f4428k);
            if (abs > 0.0f || abs2 > 0.0f) {
                z = true;
            }
            if (this.f4432o && size > 0) {
                C1314ao c1314ao = (C1314ao) this.f4425h.get(size - 1);
                float m4272a = m4272a(c1314ao.f4540b);
                float m4285b = m4285b(c1314ao.f4539a);
                float min = Math.min(m4272a, historicalX) - f4;
                float max = Math.max(m4272a, historicalX) + f4;
                float min2 = Math.min(m4285b, historicalY) - f4;
                float max2 = Math.max(m4285b, historicalY) + f4;
                if (m4277a != null) {
                    float f5 = this.f4434q * 0.5f;
                    float f6 = this.f4435r * 0.5f;
                    float m4272a2 = m4272a(m4277a.f4540b);
                    float m4285b2 = m4285b(m4277a.f4539a);
                    float min3 = Math.min(m4272a2 - f5, min);
                    float max3 = Math.max(f5 + m4272a2, max);
                    f = Math.min(m4285b2 - f6, min2);
                    max2 = Math.max(m4285b2 + f6, max2);
                    f2 = max3;
                    f3 = min3;
                } else {
                    f = min2;
                    f2 = max;
                    f3 = min;
                }
                this.f4438u.union(Math.round(f3), Math.round(f), Math.round(f2), Math.round(max2));
            }
            i = i2 + 1;
        }
        this.f4427j = motionEvent.getX();
        this.f4428k = motionEvent.getY();
        if (z) {
            this.f4437t.union(this.f4438u);
            invalidate(this.f4437t);
            this.f4437t.set(this.f4438u);
        }
    }

    /* renamed from: a */
    private void m4283a(C1314ao c1314ao) {
        this.f4426i[c1314ao.m4349a()][c1314ao.m4350b()] = true;
        this.f4425h.add(c1314ao);
        if (!this.f4430m) {
            m4291b(c1314ao);
        }
        m4289b();
    }

    /* renamed from: a */
    private void m4284a(C1315ap c1315ap, float f, float f2, float f3, float f4) {
        C1312am c1312am = new C1312am(this, this, this.f4442y, c1315ap, f, f3, f2, f4);
        c1312am.m4402a(100L, true);
        c1315ap.f4546f = c1312am;
    }

    /* renamed from: b */
    private float m4285b(int i) {
        return getPaddingTop() + (i * this.f4435r) + (this.f4435r / 2.0f);
    }

    /* renamed from: b */
    private int m4286b(float f) {
        float f2 = this.f4434q;
        float f3 = f2 * this.f4433p;
        float paddingLeft = ((f2 - f3) / 2.0f) + getPaddingLeft();
        for (int i = 0; i < 3; i++) {
            float f4 = (i * f2) + paddingLeft;
            if (f >= f4 && f <= f4 + f3) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: b */
    private C1314ao m4288b(float f, float f2) {
        int m4286b;
        int m4274a = m4274a(f2);
        if (m4274a >= 0 && (m4286b = m4286b(f)) >= 0 && !this.f4426i[m4274a][m4286b]) {
            return C1314ao.m4347a(m4274a, m4286b);
        }
        return null;
    }

    /* renamed from: b */
    private void m4289b() {
        if (this.f4424g != null) {
            this.f4424g.mo4352a(this.f4425h);
        }
    }

    /* renamed from: b */
    private void m4290b(MotionEvent motionEvent) {
        if (this.f4425h.isEmpty()) {
            return;
        }
        this.f4432o = false;
        m4298h();
        m4294d();
        invalidate();
    }

    /* renamed from: b */
    private void m4291b(C1314ao c1314ao) {
        C1315ap c1315ap = this.f4418a[c1314ao.f4539a][c1314ao.f4540b];
        m4279a(1.0f, this.f4420c, 96L, this.f4443z, c1315ap, new RunnableC1311al(this, c1315ap));
        m4284a(c1315ap, this.f4427j, this.f4428k, m4272a(c1314ao.f4540b), m4285b(c1314ao.f4539a));
    }

    /* renamed from: c */
    private void m4292c() {
        if (this.f4424g != null) {
            this.f4424g.mo4351a();
        }
    }

    /* renamed from: c */
    private void m4293c(MotionEvent motionEvent) {
        m4296f();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        C1314ao m4277a = m4277a(x, y);
        if (m4277a != null) {
            this.f4432o = true;
            m4292c();
        } else if (this.f4432o) {
            this.f4432o = false;
            m4295e();
        }
        if (m4277a != null) {
            float m4272a = m4272a(m4277a.f4540b);
            float m4285b = m4285b(m4277a.f4539a);
            float f = this.f4434q / 2.0f;
            float f2 = this.f4435r / 2.0f;
            invalidate((int) (m4272a - f), (int) (m4285b - f2), (int) (m4272a + f), (int) (m4285b + f2));
        }
        this.f4427j = x;
        this.f4428k = y;
    }

    /* renamed from: d */
    private void m4294d() {
        if (this.f4424g != null) {
            this.f4424g.mo4354b(this.f4425h);
        }
    }

    /* renamed from: e */
    private void m4295e() {
        if (this.f4424g != null) {
            this.f4424g.mo4353b();
        }
    }

    /* renamed from: f */
    private void m4296f() {
        this.f4425h.clear();
        m4297g();
        invalidate();
    }

    /* renamed from: g */
    private void m4297g() {
        for (int i = 0; i < 3; i++) {
            for (int i2 = 0; i2 < 3; i2++) {
                this.f4426i[i][i2] = false;
            }
        }
    }

    /* renamed from: h */
    private void m4298h() {
        for (int i = 0; i < 3; i++) {
            for (int i2 = 0; i2 < 3; i2++) {
                C1315ap c1315ap = this.f4418a[i][i2];
                if (c1315ap.f4546f != null) {
                    c1315ap.f4546f.mo4403c();
                    c1315ap.f4544d = Float.MIN_VALUE;
                    c1315ap.f4545e = Float.MIN_VALUE;
                }
            }
        }
    }

    /* renamed from: a */
    public void m4299a() {
        m4296f();
    }

    public C1315ap[][] getCellStates() {
        return this.f4418a;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        ArrayList arrayList = this.f4425h;
        int size = arrayList.size();
        boolean[][] zArr = this.f4426i;
        Path path = this.f4436s;
        path.rewind();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 3) {
                break;
            }
            float m4285b = m4285b(i2);
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 < 3) {
                    C1315ap c1315ap = this.f4418a[i2][i4];
                    m4280a(canvas, (int) m4272a(i4), c1315ap.f4542b + ((int) m4285b), c1315ap.f4541a * this.f4419b, zArr[i2][i4], c1315ap.f4543c);
                    i3 = i4 + 1;
                }
            }
            i = i2 + 1;
        }
        if (!this.f4430m) {
            this.f4423f.setColor(m4276a(true));
            boolean z = false;
            float f = 0.0f;
            float f2 = 0.0f;
            int i5 = 0;
            while (i5 < size) {
                C1314ao c1314ao = (C1314ao) arrayList.get(i5);
                if (!zArr[c1314ao.f4539a][c1314ao.f4540b]) {
                    break;
                }
                float m4272a = m4272a(c1314ao.f4540b);
                float m4285b2 = m4285b(c1314ao.f4539a);
                if (i5 != 0) {
                    C1315ap c1315ap2 = this.f4418a[c1314ao.f4539a][c1314ao.f4540b];
                    path.rewind();
                    path.moveTo(f, f2);
                    if (c1315ap2.f4544d == Float.MIN_VALUE || c1315ap2.f4545e == Float.MIN_VALUE) {
                        path.lineTo(m4272a, m4285b2);
                    } else {
                        path.lineTo(c1315ap2.f4544d, c1315ap2.f4545e);
                    }
                    canvas.drawPath(path, this.f4423f);
                }
                i5++;
                f2 = m4285b2;
                f = m4272a;
                z = true;
            }
            if (this.f4432o && z) {
                path.rewind();
                path.moveTo(f, f2);
                path.lineTo(this.f4427j, this.f4428k);
                this.f4423f.setAlpha((int) (m4271a(this.f4427j, this.f4428k, f, f2) * 255.0f));
                canvas.drawPath(path, this.f4423f);
            }
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        if (Build.VERSION.SDK_INT < 14) {
            return false;
        }
        if (((AccessibilityManager) getContext().getSystemService("accessibility")).isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            switch (action) {
                case SimpleLog.LOG_LEVEL_OFF /* 7 */:
                    motionEvent.setAction(2);
                    break;
                case 9:
                    motionEvent.setAction(0);
                    break;
                case 10:
                    motionEvent.setAction(1);
                    break;
            }
            onTouchEvent(motionEvent);
            motionEvent.setAction(action);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        int m4275a = m4275a(i, suggestedMinimumWidth);
        int m4275a2 = m4275a(i2, suggestedMinimumHeight);
        switch (this.f4439v) {
            case 0:
                m4275a2 = Math.min(m4275a, m4275a2);
                m4275a = m4275a2;
                break;
            case 1:
                m4275a2 = Math.min(m4275a, m4275a2);
                break;
            case 2:
                m4275a = Math.min(m4275a, m4275a2);
                break;
        }
        setMeasuredDimension(m4275a, m4275a2);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        this.f4434q = ((i - getPaddingLeft()) - getPaddingRight()) / 3.0f;
        this.f4435r = ((i2 - getPaddingTop()) - getPaddingBottom()) / 3.0f;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.f4429l || !isEnabled()) {
            return false;
        }
        switch (motionEvent.getAction()) {
            case 0:
                m4293c(motionEvent);
                break;
            case 1:
                m4290b(motionEvent);
                break;
            case 2:
                m4281a(motionEvent);
                break;
            case 3:
                if (this.f4432o) {
                    this.f4432o = false;
                    m4296f();
                    m4295e();
                    break;
                }
                break;
        }
        return false;
    }

    public void setInStealthMode(boolean z) {
        this.f4430m = z;
    }

    public void setOnPatternListener(InterfaceC1316aq interfaceC1316aq) {
        this.f4424g = interfaceC1316aq;
    }

    public void setTactileFeedbackEnabled(boolean z) {
        this.f4431n = z;
    }
}
