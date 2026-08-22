package android.support.v4.widget;

import android.content.Context;
import android.support.v4.p011a.C0177f;
import android.support.v4.p011a.C0182k;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.util.Arrays;
import org.apache.commons.logging.impl.SimpleLog;

/* renamed from: android.support.v4.widget.l */
/* loaded from: classes.dex */
public class C0209l {

    /* renamed from: v */
    private static final Interpolator f898v = new InterpolatorC0210m();

    /* renamed from: a */
    private int f899a;

    /* renamed from: b */
    private int f900b;

    /* renamed from: d */
    private float[] f902d;

    /* renamed from: e */
    private float[] f903e;

    /* renamed from: f */
    private float[] f904f;

    /* renamed from: g */
    private float[] f905g;

    /* renamed from: h */
    private int[] f906h;

    /* renamed from: i */
    private int[] f907i;

    /* renamed from: j */
    private int[] f908j;

    /* renamed from: k */
    private int f909k;

    /* renamed from: l */
    private VelocityTracker f910l;

    /* renamed from: m */
    private float f911m;

    /* renamed from: n */
    private float f912n;

    /* renamed from: o */
    private int f913o;

    /* renamed from: p */
    private int f914p;

    /* renamed from: q */
    private Scroller f915q;

    /* renamed from: r */
    private final AbstractC0212o f916r;

    /* renamed from: s */
    private View f917s;

    /* renamed from: t */
    private boolean f918t;

    /* renamed from: u */
    private final ViewGroup f919u;

    /* renamed from: c */
    private int f901c = -1;

    /* renamed from: w */
    private final Runnable f920w = new RunnableC0211n(this);

    private C0209l(Context context, ViewGroup viewGroup, AbstractC0212o abstractC0212o) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (abstractC0212o == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.f919u = viewGroup;
        this.f916r = abstractC0212o;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f913o = (int) ((context.getResources().getDisplayMetrics().density * 16.0f) + 0.5f);
        this.f900b = viewConfiguration.getScaledTouchSlop();
        this.f911m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f912n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f915q = new Scroller(context, f898v);
    }

    /* renamed from: a */
    private float m577a(float f, float f2, float f3) {
        float abs = Math.abs(f);
        if (abs < f2) {
            return 0.0f;
        }
        return abs > f3 ? f <= 0.0f ? -f3 : f3 : f;
    }

    /* renamed from: a */
    private int m578a(int i, int i2, int i3) {
        if (i == 0) {
            return 0;
        }
        int width = this.f919u.getWidth();
        int i4 = width / 2;
        float m587b = (m587b(Math.min(1.0f, Math.abs(i) / width)) * i4) + i4;
        int abs = Math.abs(i2);
        return Math.min(abs > 0 ? Math.round(Math.abs(m587b / abs) * 1000.0f) * 4 : (int) (((Math.abs(i) / i3) + 1.0f) * 256.0f), 600);
    }

    /* renamed from: a */
    private int m579a(View view, int i, int i2, int i3, int i4) {
        int m588b = m588b(i3, (int) this.f912n, (int) this.f911m);
        int m588b2 = m588b(i4, (int) this.f912n, (int) this.f911m);
        int abs = Math.abs(i);
        int abs2 = Math.abs(i2);
        int abs3 = Math.abs(m588b);
        int abs4 = Math.abs(m588b2);
        int i5 = abs3 + abs4;
        int i6 = abs + abs2;
        return (int) (((m588b2 != 0 ? abs4 / i5 : abs2 / i6) * m578a(i2, m588b2, this.f916r.m618b(view))) + ((m588b != 0 ? abs3 / i5 : abs / i6) * m578a(i, m588b, this.f916r.mo542a(view))));
    }

    /* renamed from: a */
    public static C0209l m580a(ViewGroup viewGroup, float f, AbstractC0212o abstractC0212o) {
        C0209l m581a = m581a(viewGroup, abstractC0212o);
        m581a.f900b = (int) (m581a.f900b * (1.0f / f));
        return m581a;
    }

    /* renamed from: a */
    public static C0209l m581a(ViewGroup viewGroup, AbstractC0212o abstractC0212o) {
        return new C0209l(viewGroup.getContext(), viewGroup, abstractC0212o);
    }

    /* renamed from: a */
    private void m582a(float f, float f2) {
        this.f918t = true;
        this.f916r.mo548a(this.f917s, f, f2);
        this.f918t = false;
        if (this.f899a == 1) {
            m612c(0);
        }
    }

    /* renamed from: a */
    private void m583a(float f, float f2, int i) {
        m595f(i);
        float[] fArr = this.f902d;
        this.f904f[i] = f;
        fArr[i] = f;
        float[] fArr2 = this.f903e;
        this.f905g[i] = f2;
        fArr2[i] = f2;
        this.f906h[i] = m592e((int) f, (int) f2);
        this.f909k |= 1 << i;
    }

    /* renamed from: a */
    private boolean m584a(float f, float f2, int i, int i2) {
        float abs = Math.abs(f);
        float abs2 = Math.abs(f2);
        if ((this.f906h[i] & i2) != i2 || (this.f914p & i2) == 0 || (this.f908j[i] & i2) == i2 || (this.f907i[i] & i2) == i2) {
            return false;
        }
        if (abs <= this.f900b && abs2 <= this.f900b) {
            return false;
        }
        if (abs >= abs2 * 0.5f || !this.f916r.mo554b(i2)) {
            return (this.f907i[i] & i2) == 0 && abs > ((float) this.f900b);
        }
        int[] iArr = this.f908j;
        iArr[i] = iArr[i] | i2;
        return false;
    }

    /* renamed from: a */
    private boolean m585a(int i, int i2, int i3, int i4) {
        int left = this.f917s.getLeft();
        int top = this.f917s.getTop();
        int i5 = i - left;
        int i6 = i2 - top;
        if (i5 == 0 && i6 == 0) {
            this.f915q.abortAnimation();
            m612c(0);
            return false;
        }
        this.f915q.startScroll(left, top, i5, i6, m579a(this.f917s, i5, i6, i3, i4));
        m612c(2);
        return true;
    }

    /* renamed from: a */
    private boolean m586a(View view, float f, float f2) {
        if (view == null) {
            return false;
        }
        boolean z = this.f916r.mo542a(view) > 0;
        boolean z2 = this.f916r.m618b(view) > 0;
        return (z && z2) ? (f * f) + (f2 * f2) > ((float) (this.f900b * this.f900b)) : z ? Math.abs(f) > ((float) this.f900b) : z2 && Math.abs(f2) > ((float) this.f900b);
    }

    /* renamed from: b */
    private float m587b(float f) {
        return (float) Math.sin((float) ((f - 0.5f) * 0.4712389167638204d));
    }

    /* renamed from: b */
    private int m588b(int i, int i2, int i3) {
        int abs = Math.abs(i);
        if (abs < i2) {
            return 0;
        }
        return abs > i3 ? i <= 0 ? -i3 : i3 : i;
    }

    /* renamed from: b */
    private void m589b(float f, float f2, int i) {
        int i2 = m584a(f, f2, i, 1) ? 1 : 0;
        if (m584a(f2, f, i, 4)) {
            i2 |= 4;
        }
        if (m584a(f, f2, i, 2)) {
            i2 |= 2;
        }
        if (m584a(f2, f, i, 8)) {
            i2 |= 8;
        }
        if (i2 != 0) {
            int[] iArr = this.f907i;
            iArr[i] = iArr[i] | i2;
            this.f916r.mo552b(i2, i);
        }
    }

    /* renamed from: b */
    private void m590b(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int left = this.f917s.getLeft();
        int top = this.f917s.getTop();
        if (i3 != 0) {
            i5 = this.f916r.mo543a(this.f917s, i, i3);
            this.f917s.offsetLeftAndRight(i5 - left);
        } else {
            i5 = i;
        }
        if (i4 != 0) {
            i6 = this.f916r.mo551b(this.f917s, i2, i4);
            this.f917s.offsetTopAndBottom(i6 - top);
        } else {
            i6 = i2;
        }
        if (i3 == 0 && i4 == 0) {
            return;
        }
        this.f916r.mo549a(this.f917s, i5, i6, i5 - left, i6 - top);
    }

    /* renamed from: c */
    private void m591c(MotionEvent motionEvent) {
        int m429c = C0177f.m429c(motionEvent);
        for (int i = 0; i < m429c; i++) {
            int m427b = C0177f.m427b(motionEvent, i);
            float m428c = C0177f.m428c(motionEvent, i);
            float m430d = C0177f.m430d(motionEvent, i);
            this.f904f[m427b] = m428c;
            this.f905g[m427b] = m430d;
        }
    }

    /* renamed from: e */
    private int m592e(int i, int i2) {
        int i3 = i < this.f919u.getLeft() + this.f913o ? 1 : 0;
        if (i2 < this.f919u.getTop() + this.f913o) {
            i3 |= 4;
        }
        if (i > this.f919u.getRight() - this.f913o) {
            i3 |= 2;
        }
        return i2 > this.f919u.getBottom() - this.f913o ? i3 | 8 : i3;
    }

    /* renamed from: e */
    private void m593e(int i) {
        if (this.f902d == null) {
            return;
        }
        this.f902d[i] = 0.0f;
        this.f903e[i] = 0.0f;
        this.f904f[i] = 0.0f;
        this.f905g[i] = 0.0f;
        this.f906h[i] = 0;
        this.f907i[i] = 0;
        this.f908j[i] = 0;
        this.f909k &= (1 << i) ^ (-1);
    }

    /* renamed from: f */
    private void m594f() {
        if (this.f902d == null) {
            return;
        }
        Arrays.fill(this.f902d, 0.0f);
        Arrays.fill(this.f903e, 0.0f);
        Arrays.fill(this.f904f, 0.0f);
        Arrays.fill(this.f905g, 0.0f);
        Arrays.fill(this.f906h, 0);
        Arrays.fill(this.f907i, 0);
        Arrays.fill(this.f908j, 0);
        this.f909k = 0;
    }

    /* renamed from: f */
    private void m595f(int i) {
        if (this.f902d == null || this.f902d.length <= i) {
            float[] fArr = new float[i + 1];
            float[] fArr2 = new float[i + 1];
            float[] fArr3 = new float[i + 1];
            float[] fArr4 = new float[i + 1];
            int[] iArr = new int[i + 1];
            int[] iArr2 = new int[i + 1];
            int[] iArr3 = new int[i + 1];
            if (this.f902d != null) {
                System.arraycopy(this.f902d, 0, fArr, 0, this.f902d.length);
                System.arraycopy(this.f903e, 0, fArr2, 0, this.f903e.length);
                System.arraycopy(this.f904f, 0, fArr3, 0, this.f904f.length);
                System.arraycopy(this.f905g, 0, fArr4, 0, this.f905g.length);
                System.arraycopy(this.f906h, 0, iArr, 0, this.f906h.length);
                System.arraycopy(this.f907i, 0, iArr2, 0, this.f907i.length);
                System.arraycopy(this.f908j, 0, iArr3, 0, this.f908j.length);
            }
            this.f902d = fArr;
            this.f903e = fArr2;
            this.f904f = fArr3;
            this.f905g = fArr4;
            this.f906h = iArr;
            this.f907i = iArr2;
            this.f908j = iArr3;
        }
    }

    /* renamed from: g */
    private void m596g() {
        this.f910l.computeCurrentVelocity(1000, this.f911m);
        m582a(m577a(C0182k.m453a(this.f910l, this.f901c), this.f912n, this.f911m), m577a(C0182k.m454b(this.f910l, this.f901c), this.f912n, this.f911m));
    }

    /* renamed from: a */
    public int m597a() {
        return this.f899a;
    }

    /* renamed from: a */
    public void m598a(float f) {
        this.f912n = f;
    }

    /* renamed from: a */
    public void m599a(int i) {
        this.f914p = i;
    }

    /* renamed from: a */
    public void m600a(View view, int i) {
        if (view.getParent() != this.f919u) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.f919u + ")");
        }
        this.f917s = view;
        this.f901c = i;
        this.f916r.mo553b(view, i);
        m612c(1);
    }

    /* renamed from: a */
    public boolean m601a(int i, int i2) {
        if (this.f918t) {
            return m585a(i, i2, (int) C0182k.m453a(this.f910l, this.f901c), (int) C0182k.m454b(this.f910l, this.f901c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ed, code lost:
    
        if (r8 != r7) goto L49;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m602a(MotionEvent motionEvent) {
        int i;
        View m615d;
        int m424a = C0177f.m424a(motionEvent);
        int m426b = C0177f.m426b(motionEvent);
        if (m424a == 0) {
            m617e();
        }
        if (this.f910l == null) {
            this.f910l = VelocityTracker.obtain();
        }
        this.f910l.addMovement(motionEvent);
        switch (m424a) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                int m427b = C0177f.m427b(motionEvent, 0);
                m583a(x, y, m427b);
                View m615d2 = m615d((int) x, (int) y);
                if (m615d2 == this.f917s && this.f899a == 2) {
                    m609b(m615d2, m427b);
                }
                int i2 = this.f906h[m427b];
                if ((this.f914p & i2) != 0) {
                    this.f916r.mo546a(i2 & this.f914p, m427b);
                    break;
                }
                break;
            case 1:
            case 3:
                m617e();
                break;
            case 2:
                int m429c = C0177f.m429c(motionEvent);
                for (0; i < m429c; i + 1) {
                    int m427b2 = C0177f.m427b(motionEvent, i);
                    float m428c = C0177f.m428c(motionEvent, i);
                    float m430d = C0177f.m430d(motionEvent, i);
                    float f = m428c - this.f902d[m427b2];
                    float f2 = m430d - this.f903e[m427b2];
                    View m615d3 = m615d((int) m428c, (int) m430d);
                    boolean z = m615d3 != null && m586a(m615d3, f, f2);
                    if (z) {
                        int left = m615d3.getLeft();
                        int mo543a = this.f916r.mo543a(m615d3, ((int) f) + left, (int) f);
                        int top = m615d3.getTop();
                        int mo551b = this.f916r.mo551b(m615d3, ((int) f2) + top, (int) f2);
                        int mo542a = this.f916r.mo542a(m615d3);
                        int m618b = this.f916r.m618b(m615d3);
                        if (mo542a != 0) {
                            if (mo542a > 0) {
                            }
                        }
                        if (m618b != 0) {
                            if (m618b > 0 && mo551b == top) {
                            }
                        }
                        m591c(motionEvent);
                        break;
                    }
                    m589b(f, f2, m427b2);
                    i = (this.f899a == 1 || (z && m609b(m615d3, m427b2))) ? 0 : i + 1;
                    m591c(motionEvent);
                }
                m591c(motionEvent);
                break;
            case 5:
                int m427b3 = C0177f.m427b(motionEvent, m426b);
                float m428c2 = C0177f.m428c(motionEvent, m426b);
                float m430d2 = C0177f.m430d(motionEvent, m426b);
                m583a(m428c2, m430d2, m427b3);
                if (this.f899a == 0) {
                    int i3 = this.f906h[m427b3];
                    if ((this.f914p & i3) != 0) {
                        this.f916r.mo546a(i3 & this.f914p, m427b3);
                        break;
                    }
                } else if (this.f899a == 2 && (m615d = m615d((int) m428c2, (int) m430d2)) == this.f917s) {
                    m609b(m615d, m427b3);
                    break;
                }
                break;
            case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                m593e(C0177f.m427b(motionEvent, m426b));
                break;
        }
        return this.f899a == 1;
    }

    /* renamed from: a */
    public boolean m603a(View view, int i, int i2) {
        this.f917s = view;
        this.f901c = -1;
        boolean m585a = m585a(i, i2, 0, 0);
        if (!m585a && this.f899a == 0 && this.f917s != null) {
            this.f917s = null;
        }
        return m585a;
    }

    /* renamed from: a */
    public boolean m604a(boolean z) {
        boolean z2;
        if (this.f899a == 2) {
            boolean computeScrollOffset = this.f915q.computeScrollOffset();
            int currX = this.f915q.getCurrX();
            int currY = this.f915q.getCurrY();
            int left = currX - this.f917s.getLeft();
            int top = currY - this.f917s.getTop();
            if (left != 0) {
                this.f917s.offsetLeftAndRight(left);
            }
            if (top != 0) {
                this.f917s.offsetTopAndBottom(top);
            }
            if (left != 0 || top != 0) {
                this.f916r.mo549a(this.f917s, currX, currY, left, top);
            }
            if (computeScrollOffset && currX == this.f915q.getFinalX() && currY == this.f915q.getFinalY()) {
                this.f915q.abortAnimation();
                z2 = false;
            } else {
                z2 = computeScrollOffset;
            }
            if (!z2) {
                if (z) {
                    this.f919u.post(this.f920w);
                } else {
                    m612c(0);
                }
            }
        }
        return this.f899a == 2;
    }

    /* renamed from: b */
    public int m605b() {
        return this.f913o;
    }

    /* renamed from: b */
    public void m606b(MotionEvent motionEvent) {
        int i;
        int i2 = 0;
        int m424a = C0177f.m424a(motionEvent);
        int m426b = C0177f.m426b(motionEvent);
        if (m424a == 0) {
            m617e();
        }
        if (this.f910l == null) {
            this.f910l = VelocityTracker.obtain();
        }
        this.f910l.addMovement(motionEvent);
        switch (m424a) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                int m427b = C0177f.m427b(motionEvent, 0);
                View m615d = m615d((int) x, (int) y);
                m583a(x, y, m427b);
                m609b(m615d, m427b);
                int i3 = this.f906h[m427b];
                if ((this.f914p & i3) != 0) {
                    this.f916r.mo546a(i3 & this.f914p, m427b);
                    break;
                }
                break;
            case 1:
                if (this.f899a == 1) {
                    m596g();
                }
                m617e();
                break;
            case 2:
                if (this.f899a == 1) {
                    int m425a = C0177f.m425a(motionEvent, this.f901c);
                    float m428c = C0177f.m428c(motionEvent, m425a);
                    float m430d = C0177f.m430d(motionEvent, m425a);
                    int i4 = (int) (m428c - this.f904f[this.f901c]);
                    int i5 = (int) (m430d - this.f905g[this.f901c]);
                    m590b(this.f917s.getLeft() + i4, this.f917s.getTop() + i5, i4, i5);
                    m591c(motionEvent);
                    break;
                } else {
                    int m429c = C0177f.m429c(motionEvent);
                    while (i2 < m429c) {
                        int m427b2 = C0177f.m427b(motionEvent, i2);
                        float m428c2 = C0177f.m428c(motionEvent, i2);
                        float m430d2 = C0177f.m430d(motionEvent, i2);
                        float f = m428c2 - this.f902d[m427b2];
                        float f2 = m430d2 - this.f903e[m427b2];
                        m589b(f, f2, m427b2);
                        if (this.f899a != 1) {
                            View m615d2 = m615d((int) m428c2, (int) m430d2);
                            if (!m586a(m615d2, f, f2) || !m609b(m615d2, m427b2)) {
                                i2++;
                            }
                        }
                        m591c(motionEvent);
                        break;
                    }
                    m591c(motionEvent);
                }
                break;
            case 3:
                if (this.f899a == 1) {
                    m582a(0.0f, 0.0f);
                }
                m617e();
                break;
            case 5:
                int m427b3 = C0177f.m427b(motionEvent, m426b);
                float m428c3 = C0177f.m428c(motionEvent, m426b);
                float m430d3 = C0177f.m430d(motionEvent, m426b);
                m583a(m428c3, m430d3, m427b3);
                if (this.f899a != 0) {
                    if (m613c((int) m428c3, (int) m430d3)) {
                        m609b(this.f917s, m427b3);
                        break;
                    }
                } else {
                    m609b(m615d((int) m428c3, (int) m430d3), m427b3);
                    int i6 = this.f906h[m427b3];
                    if ((this.f914p & i6) != 0) {
                        this.f916r.mo546a(i6 & this.f914p, m427b3);
                        break;
                    }
                }
                break;
            case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                int m427b4 = C0177f.m427b(motionEvent, m426b);
                if (this.f899a == 1 && m427b4 == this.f901c) {
                    int m429c2 = C0177f.m429c(motionEvent);
                    while (true) {
                        if (i2 >= m429c2) {
                            i = -1;
                        } else {
                            int m427b5 = C0177f.m427b(motionEvent, i2);
                            if (m427b5 != this.f901c) {
                                if (m615d((int) C0177f.m428c(motionEvent, i2), (int) C0177f.m430d(motionEvent, i2)) == this.f917s && m609b(this.f917s, m427b5)) {
                                    i = this.f901c;
                                }
                            }
                            i2++;
                        }
                    }
                    if (i == -1) {
                        m596g();
                    }
                }
                m593e(m427b4);
                break;
        }
    }

    /* renamed from: b */
    public boolean m607b(int i) {
        return (this.f909k & (1 << i)) != 0;
    }

    /* renamed from: b */
    public boolean m608b(int i, int i2) {
        if (!m607b(i2)) {
            return false;
        }
        boolean z = (i & 1) == 1;
        boolean z2 = (i & 2) == 2;
        float f = this.f904f[i2] - this.f902d[i2];
        float f2 = this.f905g[i2] - this.f903e[i2];
        return (z && z2) ? (f * f) + (f2 * f2) > ((float) (this.f900b * this.f900b)) : z ? Math.abs(f) > ((float) this.f900b) : z2 && Math.abs(f2) > ((float) this.f900b);
    }

    /* renamed from: b */
    boolean m609b(View view, int i) {
        if (view == this.f917s && this.f901c == i) {
            return true;
        }
        if (view == null || !this.f916r.mo550a(view, i)) {
            return false;
        }
        this.f901c = i;
        m600a(view, i);
        return true;
    }

    /* renamed from: b */
    public boolean m610b(View view, int i, int i2) {
        return view != null && i >= view.getLeft() && i < view.getRight() && i2 >= view.getTop() && i2 < view.getBottom();
    }

    /* renamed from: c */
    public View m611c() {
        return this.f917s;
    }

    /* renamed from: c */
    void m612c(int i) {
        if (this.f899a != i) {
            this.f899a = i;
            this.f916r.mo545a(i);
            if (this.f899a == 0) {
                this.f917s = null;
            }
        }
    }

    /* renamed from: c */
    public boolean m613c(int i, int i2) {
        return m610b(this.f917s, i, i2);
    }

    /* renamed from: d */
    public int m614d() {
        return this.f900b;
    }

    /* renamed from: d */
    public View m615d(int i, int i2) {
        for (int childCount = this.f919u.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.f919u.getChildAt(this.f916r.m619c(childCount));
            if (i >= childAt.getLeft() && i < childAt.getRight() && i2 >= childAt.getTop() && i2 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: d */
    public boolean m616d(int i) {
        int length = this.f902d.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (m608b(i, i2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: e */
    public void m617e() {
        this.f901c = -1;
        m594f();
        if (this.f910l != null) {
            this.f910l.recycle();
            this.f910l = null;
        }
    }
}
