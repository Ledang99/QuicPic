package android.support.v4.p011a;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.support.v4.widget.C0207j;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import org.apache.commons.logging.impl.SimpleLog;

/* renamed from: android.support.v4.a.p */
/* loaded from: classes.dex */
public class C0187p extends ViewGroup {

    /* renamed from: A */
    private boolean f782A;

    /* renamed from: B */
    private boolean f783B;

    /* renamed from: C */
    private int f784C;

    /* renamed from: D */
    private int f785D;

    /* renamed from: E */
    private int f786E;

    /* renamed from: F */
    private float f787F;

    /* renamed from: G */
    private float f788G;

    /* renamed from: H */
    private float f789H;

    /* renamed from: I */
    private float f790I;

    /* renamed from: J */
    private int f791J;

    /* renamed from: K */
    private VelocityTracker f792K;

    /* renamed from: L */
    private int f793L;

    /* renamed from: M */
    private int f794M;

    /* renamed from: N */
    private int f795N;

    /* renamed from: O */
    private int f796O;

    /* renamed from: P */
    private boolean f797P;

    /* renamed from: Q */
    private C0207j f798Q;

    /* renamed from: R */
    private C0207j f799R;

    /* renamed from: S */
    private boolean f800S;

    /* renamed from: T */
    private boolean f801T;

    /* renamed from: U */
    private boolean f802U;

    /* renamed from: V */
    private int f803V;

    /* renamed from: W */
    private InterfaceC0195x f804W;

    /* renamed from: aa */
    private InterfaceC0195x f805aa;

    /* renamed from: ab */
    private InterfaceC0194w f806ab;

    /* renamed from: ac */
    private InterfaceC0196y f807ac;

    /* renamed from: ad */
    private Method f808ad;

    /* renamed from: ae */
    private int f809ae;

    /* renamed from: af */
    private ArrayList f810af;

    /* renamed from: ah */
    private final Runnable f811ah;

    /* renamed from: ai */
    private int f812ai;

    /* renamed from: b */
    private int f813b;

    /* renamed from: e */
    private final ArrayList f814e;

    /* renamed from: f */
    private final C0192u f815f;

    /* renamed from: g */
    private final Rect f816g;

    /* renamed from: h */
    private AbstractC0181j f817h;

    /* renamed from: i */
    private int f818i;

    /* renamed from: j */
    private int f819j;

    /* renamed from: k */
    private Parcelable f820k;

    /* renamed from: l */
    private ClassLoader f821l;

    /* renamed from: m */
    private Scroller f822m;

    /* renamed from: n */
    private C0197z f823n;

    /* renamed from: o */
    private int f824o;

    /* renamed from: p */
    private Drawable f825p;

    /* renamed from: q */
    private int f826q;

    /* renamed from: r */
    private int f827r;

    /* renamed from: s */
    private float f828s;

    /* renamed from: t */
    private float f829t;

    /* renamed from: u */
    private int f830u;

    /* renamed from: v */
    private int f831v;

    /* renamed from: w */
    private boolean f832w;

    /* renamed from: x */
    private boolean f833x;

    /* renamed from: y */
    private boolean f834y;

    /* renamed from: z */
    private int f835z;

    /* renamed from: a */
    private static final int[] f778a = {R.attr.layout_gravity};

    /* renamed from: c */
    private static final Comparator f780c = new C0188q();

    /* renamed from: d */
    private static final Interpolator f781d = new InterpolatorC0189r();

    /* renamed from: ag */
    private static final C0172aa f779ag = new C0172aa();

    public C0187p(Context context) {
        super(context);
        this.f814e = new ArrayList();
        this.f815f = new C0192u();
        this.f816g = new Rect();
        this.f819j = -1;
        this.f820k = null;
        this.f821l = null;
        this.f828s = -3.4028235E38f;
        this.f829t = Float.MAX_VALUE;
        this.f835z = 1;
        this.f791J = -1;
        this.f800S = true;
        this.f801T = false;
        this.f811ah = new RunnableC0190s(this);
        this.f812ai = 0;
        m482a();
    }

    /* renamed from: a */
    private int m459a(int i, float f, int i2, int i3) {
        if (Math.abs(i3) <= this.f795N || Math.abs(i2) <= this.f793L) {
            i = (int) ((i >= this.f818i ? 0.4f : 0.6f) + i + f);
        } else if (i2 <= 0) {
            i++;
        }
        if (this.f814e.size() > 0) {
            return Math.max(((C0192u) this.f814e.get(0)).f838b, Math.min(i, ((C0192u) this.f814e.get(this.f814e.size() - 1)).f838b));
        }
        return i;
    }

    /* renamed from: a */
    private Rect m460a(Rect rect, View view) {
        Rect rect2 = rect == null ? new Rect() : rect;
        if (view == null) {
            rect2.set(0, 0, 0, 0);
            return rect2;
        }
        rect2.left = view.getLeft();
        rect2.right = view.getRight();
        rect2.top = view.getTop();
        rect2.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect2.left += viewGroup.getLeft();
            rect2.right += viewGroup.getRight();
            rect2.top += viewGroup.getTop();
            rect2.bottom += viewGroup.getBottom();
            parent = viewGroup.getParent();
        }
        return rect2;
    }

    /* renamed from: a */
    private void m461a(int i, int i2, int i3, int i4) {
        if (i2 <= 0 || this.f814e.isEmpty()) {
            C0192u m491b = m491b(this.f818i);
            int min = (int) ((m491b != null ? Math.min(m491b.f841e, this.f829t) : 0.0f) * ((i - getPaddingLeft()) - getPaddingRight()));
            if (min != getScrollX()) {
                m467a(false);
                scrollTo(min, getScrollY());
                return;
            }
            return;
        }
        int paddingLeft = (int) ((((i - getPaddingLeft()) - getPaddingRight()) + i3) * (getScrollX() / (((i2 - getPaddingLeft()) - getPaddingRight()) + i4)));
        scrollTo(paddingLeft, getScrollY());
        if (this.f822m.isFinished()) {
            return;
        }
        this.f822m.startScroll(paddingLeft, 0, (int) (m491b(this.f818i).f841e * i), 0, this.f822m.getDuration() - this.f822m.timePassed());
    }

    /* renamed from: a */
    private void m462a(int i, boolean z, int i2, boolean z2) {
        int i3;
        C0192u m491b = m491b(i);
        if (m491b != null) {
            i3 = (int) (Math.max(this.f828s, Math.min(m491b.f841e, this.f829t)) * getClientWidth());
        } else {
            i3 = 0;
        }
        if (z) {
            m485a(i3, 0, i2);
            if (z2 && this.f804W != null) {
                this.f804W.mo500a(i);
            }
            if (!z2 || this.f805aa == null) {
                return;
            }
            this.f805aa.mo500a(i);
            return;
        }
        if (z2 && this.f804W != null) {
            this.f804W.mo500a(i);
        }
        if (z2 && this.f805aa != null) {
            this.f805aa.mo500a(i);
        }
        m467a(false);
        scrollTo(i3, 0);
        m473d(i3);
    }

    /* renamed from: a */
    private void m464a(C0192u c0192u, int i, C0192u c0192u2) {
        C0192u c0192u3;
        C0192u c0192u4;
        int mo437a = this.f817h.mo437a();
        int clientWidth = getClientWidth();
        float f = clientWidth > 0 ? this.f824o / clientWidth : 0.0f;
        if (c0192u2 != null) {
            int i2 = c0192u2.f838b;
            if (i2 < c0192u.f838b) {
                float f2 = c0192u2.f841e + c0192u2.f840d + f;
                int i3 = i2 + 1;
                int i4 = 0;
                while (i3 <= c0192u.f838b && i4 < this.f814e.size()) {
                    Object obj = this.f814e.get(i4);
                    while (true) {
                        c0192u4 = (C0192u) obj;
                        if (i3 <= c0192u4.f838b || i4 >= this.f814e.size() - 1) {
                            break;
                        }
                        i4++;
                        obj = this.f814e.get(i4);
                    }
                    while (i3 < c0192u4.f838b) {
                        f2 += this.f817h.m436a(i3) + f;
                        i3++;
                    }
                    c0192u4.f841e = f2;
                    f2 += c0192u4.f840d + f;
                    i3++;
                }
            } else if (i2 > c0192u.f838b) {
                int size = this.f814e.size() - 1;
                float f3 = c0192u2.f841e;
                int i5 = i2 - 1;
                while (i5 >= c0192u.f838b && size >= 0) {
                    Object obj2 = this.f814e.get(size);
                    while (true) {
                        c0192u3 = (C0192u) obj2;
                        if (i5 >= c0192u3.f838b || size <= 0) {
                            break;
                        }
                        size--;
                        obj2 = this.f814e.get(size);
                    }
                    while (i5 > c0192u3.f838b) {
                        f3 -= this.f817h.m436a(i5) + f;
                        i5--;
                    }
                    f3 -= c0192u3.f840d + f;
                    c0192u3.f841e = f3;
                    i5--;
                }
            }
        }
        int size2 = this.f814e.size();
        float f4 = c0192u.f841e;
        int i6 = c0192u.f838b - 1;
        this.f828s = c0192u.f838b == 0 ? c0192u.f841e : -3.4028235E38f;
        this.f829t = c0192u.f838b == mo437a + (-1) ? (c0192u.f841e + c0192u.f840d) - 1.0f : Float.MAX_VALUE;
        for (int i7 = i - 1; i7 >= 0; i7--) {
            C0192u c0192u5 = (C0192u) this.f814e.get(i7);
            float f5 = f4;
            while (i6 > c0192u5.f838b) {
                f5 -= this.f817h.m436a(i6) + f;
                i6--;
            }
            f4 = f5 - (c0192u5.f840d + f);
            c0192u5.f841e = f4;
            if (c0192u5.f838b == 0) {
                this.f828s = f4;
            }
            i6--;
        }
        float f6 = c0192u.f841e + c0192u.f840d + f;
        int i8 = c0192u.f838b + 1;
        for (int i9 = i + 1; i9 < size2; i9++) {
            C0192u c0192u6 = (C0192u) this.f814e.get(i9);
            float f7 = f6;
            while (i8 < c0192u6.f838b) {
                f7 = this.f817h.m436a(i8) + f + f7;
                i8++;
            }
            if (c0192u6.f838b == mo437a - 1) {
                this.f829t = (c0192u6.f840d + f7) - 1.0f;
            }
            c0192u6.f841e = f7;
            f6 = f7 + c0192u6.f840d + f;
            i8++;
        }
        this.f801T = false;
    }

    /* renamed from: a */
    private void m465a(MotionEvent motionEvent) {
        int m426b = C0177f.m426b(motionEvent);
        if (C0177f.m427b(motionEvent, m426b) == this.f791J) {
            int i = m426b == 0 ? 1 : 0;
            this.f787F = C0177f.m428c(motionEvent, i);
            this.f791J = C0177f.m427b(motionEvent, i);
            if (this.f792K != null) {
                this.f792K.clear();
            }
        }
    }

    /* renamed from: a */
    public static void m466a(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postOnAnimation(runnable);
        } else {
            view.postDelayed(runnable, 16L);
        }
    }

    /* renamed from: a */
    private void m467a(boolean z) {
        boolean z2 = this.f812ai == 2;
        if (z2) {
            setScrollingCacheEnabled(false);
            this.f822m.abortAnimation();
            int scrollX = getScrollX();
            int scrollY = getScrollY();
            int currX = this.f822m.getCurrX();
            int currY = this.f822m.getCurrY();
            if (scrollX != currX || scrollY != currY) {
                scrollTo(currX, currY);
            }
        }
        this.f834y = false;
        boolean z3 = z2;
        for (int i = 0; i < this.f814e.size(); i++) {
            C0192u c0192u = (C0192u) this.f814e.get(i);
            if (c0192u.f839c) {
                c0192u.f839c = false;
                z3 = true;
            }
        }
        if (z3) {
            if (z) {
                m466a(this, this.f811ah);
            } else {
                this.f811ah.run();
            }
        }
    }

    /* renamed from: a */
    private boolean m468a(float f, float f2) {
        return (f < ((float) this.f785D) && f2 > 0.0f) || (f > ((float) (getWidth() - this.f785D)) && f2 < 0.0f);
    }

    /* renamed from: b */
    private void m469b(boolean z) {
        if (Build.VERSION.SDK_INT >= 11) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                getChildAt(i).setLayerType(z ? 2 : 0, null);
            }
        }
    }

    /* renamed from: b */
    private boolean m470b(float f) {
        boolean z;
        float f2;
        boolean z2 = true;
        float f3 = this.f787F - f;
        this.f787F = f;
        float scrollX = getScrollX() + f3;
        int clientWidth = getClientWidth();
        float f4 = clientWidth * this.f828s;
        float f5 = clientWidth * this.f829t;
        C0192u c0192u = (C0192u) this.f814e.get(0);
        C0192u c0192u2 = (C0192u) this.f814e.get(this.f814e.size() - 1);
        if (c0192u.f838b != 0) {
            f4 = c0192u.f841e * clientWidth;
            z = false;
        } else {
            z = true;
        }
        if (c0192u2.f838b != this.f817h.mo437a() - 1) {
            f2 = c0192u2.f841e * clientWidth;
            z2 = false;
        } else {
            f2 = f5;
        }
        if (scrollX < f4) {
            if (z) {
                r2 = this.f798Q.m563a(Math.abs(f4 - scrollX) / clientWidth);
            }
        } else if (scrollX > f2) {
            r2 = z2 ? this.f799R.m563a(Math.abs(scrollX - f2) / clientWidth) : false;
            f4 = f2;
        } else {
            f4 = scrollX;
        }
        this.f787F += f4 - ((int) f4);
        scrollTo((int) f4, getScrollY());
        m473d((int) f4);
        return r2;
    }

    /* renamed from: c */
    public static void m471c(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            view.postInvalidateOnAnimation();
        } else {
            view.invalidate();
        }
    }

    /* renamed from: c */
    private void m472c(boolean z) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z);
        }
    }

    /* renamed from: d */
    private boolean m473d(int i) {
        if (this.f814e.size() == 0) {
            this.f802U = false;
            m484a(0, 0.0f, 0);
            if (this.f802U) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
        C0192u m477i = m477i();
        int clientWidth = getClientWidth();
        int i2 = this.f824o + clientWidth;
        int i3 = m477i.f838b;
        float f = ((i / clientWidth) - m477i.f841e) / (m477i.f840d + (this.f824o / clientWidth));
        this.f802U = false;
        m484a(i3, f, (int) (i2 * f));
        if (this.f802U) {
            return true;
        }
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }

    /* renamed from: g */
    private void m475g() {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= getChildCount()) {
                return;
            }
            if (!((C0193v) getChildAt(i2).getLayoutParams()).f842a) {
                removeViewAt(i2);
                i2--;
            }
            i = i2 + 1;
        }
    }

    private int getClientWidth() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    /* renamed from: h */
    private void m476h() {
        if (this.f809ae != 0) {
            if (this.f810af == null) {
                this.f810af = new ArrayList();
            } else {
                this.f810af.clear();
            }
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                this.f810af.add(getChildAt(i));
            }
            Collections.sort(this.f810af, f779ag);
        }
    }

    /* renamed from: i */
    private C0192u m477i() {
        int i;
        C0192u c0192u;
        int clientWidth = getClientWidth();
        float scrollX = clientWidth > 0 ? getScrollX() / clientWidth : 0.0f;
        float f = clientWidth > 0 ? this.f824o / clientWidth : 0.0f;
        float f2 = 0.0f;
        float f3 = 0.0f;
        int i2 = -1;
        int i3 = 0;
        boolean z = true;
        C0192u c0192u2 = null;
        while (i3 < this.f814e.size()) {
            C0192u c0192u3 = (C0192u) this.f814e.get(i3);
            if (z || c0192u3.f838b == i2 + 1) {
                i = i3;
                c0192u = c0192u3;
            } else {
                C0192u c0192u4 = this.f815f;
                c0192u4.f841e = f2 + f3 + f;
                c0192u4.f838b = i2 + 1;
                c0192u4.f840d = this.f817h.m436a(c0192u4.f838b);
                i = i3 - 1;
                c0192u = c0192u4;
            }
            float f4 = c0192u.f841e;
            float f5 = c0192u.f840d + f4 + f;
            if (!z && scrollX < f4) {
                return c0192u2;
            }
            if (scrollX < f5 || i == this.f814e.size() - 1) {
                return c0192u;
            }
            f3 = f4;
            i2 = c0192u.f838b;
            z = false;
            f2 = c0192u.f840d;
            c0192u2 = c0192u;
            i3 = i + 1;
        }
        return c0192u2;
    }

    /* renamed from: j */
    private void m478j() {
        this.f782A = false;
        this.f783B = false;
        if (this.f792K != null) {
            this.f792K.recycle();
            this.f792K = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScrollState(int i) {
        if (this.f812ai == i) {
            return;
        }
        this.f812ai = i;
        if (this.f807ac != null) {
            m469b(i != 0);
        }
        if (this.f804W != null) {
            this.f804W.mo502b(i);
        }
    }

    private void setScrollingCacheEnabled(boolean z) {
        if (this.f833x != z) {
            this.f833x = z;
        }
    }

    /* renamed from: a */
    float m479a(float f) {
        return (float) Math.sin((float) ((f - 0.5f) * 0.4712389167638204d));
    }

    /* renamed from: a */
    C0192u m480a(int i, int i2) {
        C0192u c0192u = new C0192u();
        c0192u.f838b = i;
        c0192u.f837a = this.f817h.mo440a((ViewGroup) this, i);
        c0192u.f840d = this.f817h.m436a(i);
        if (i2 < 0 || i2 >= this.f814e.size()) {
            this.f814e.add(c0192u);
        } else {
            this.f814e.add(i2, c0192u);
        }
        return c0192u;
    }

    /* renamed from: a */
    C0192u m481a(View view) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.f814e.size()) {
                return null;
            }
            C0192u c0192u = (C0192u) this.f814e.get(i2);
            if (this.f817h.mo447a(view, c0192u.f837a)) {
                return c0192u;
            }
            i = i2 + 1;
        }
    }

    /* renamed from: a */
    void m482a() {
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context = getContext();
        this.f822m = new Scroller(context, f781d);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.f786E = viewConfiguration.getScaledTouchSlop() * 2;
        this.f793L = (int) (400.0f * f);
        this.f794M = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f798Q = new C0207j(context);
        this.f799R = new C0207j(context);
        this.f795N = (int) (25.0f * f);
        this.f796O = (int) (2.0f * f);
        this.f784C = (int) (16.0f * f);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00ff, code lost:
    
        if (r2.f838b == r18.f818i) goto L32;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void m483a(int i) {
        C0192u c0192u;
        int i2;
        String hexString;
        int i3;
        C0192u c0192u2;
        C0192u m481a;
        if (this.f818i != i) {
            int i4 = this.f818i < i ? 66 : 17;
            C0192u m491b = m491b(this.f818i);
            this.f818i = i;
            c0192u = m491b;
            i2 = i4;
        } else {
            c0192u = null;
            i2 = 2;
        }
        if (this.f817h == null) {
            m476h();
            return;
        }
        if (this.f834y) {
            m476h();
            return;
        }
        if (getWindowToken() != null) {
            this.f817h.m445a((ViewGroup) this);
            int i5 = this.f835z;
            int max = Math.max(0, this.f818i - i5);
            int mo437a = this.f817h.mo437a();
            int min = Math.min(mo437a - 1, i5 + this.f818i);
            if (mo437a != this.f813b) {
                try {
                    hexString = getResources().getResourceName(getId());
                } catch (Resources.NotFoundException e) {
                    hexString = Integer.toHexString(getId());
                }
                throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.f813b + ", found: " + mo437a + " Pager id: " + hexString + " Pager class: " + getClass() + " Problematic adapter: " + this.f817h.getClass());
            }
            int i6 = 0;
            while (true) {
                i3 = i6;
                if (i3 >= this.f814e.size()) {
                    break;
                }
                c0192u2 = (C0192u) this.f814e.get(i3);
                if (c0192u2.f838b < this.f818i) {
                    i6 = i3 + 1;
                }
            }
            c0192u2 = null;
            C0192u m480a = (c0192u2 != null || mo437a <= 0) ? c0192u2 : m480a(this.f818i, i3);
            if (m480a != null) {
                int i7 = i3 - 1;
                C0192u c0192u3 = i7 >= 0 ? (C0192u) this.f814e.get(i7) : null;
                int clientWidth = getClientWidth();
                float paddingLeft = clientWidth <= 0 ? 0.0f : (2.0f - m480a.f840d) + (getPaddingLeft() / clientWidth);
                float f = 0.0f;
                int i8 = i3;
                int i9 = i7;
                for (int i10 = this.f818i - 1; i10 >= 0; i10--) {
                    if (f >= paddingLeft && i10 < max) {
                        if (c0192u3 == null) {
                            break;
                        }
                        if (i10 == c0192u3.f838b && !c0192u3.f839c) {
                            this.f814e.remove(i9);
                            this.f817h.mo446a((ViewGroup) this, i10, c0192u3.f837a);
                            i9--;
                            i8--;
                            c0192u3 = i9 >= 0 ? (C0192u) this.f814e.get(i9) : null;
                        }
                    } else if (c0192u3 == null || i10 != c0192u3.f838b) {
                        f += m480a(i10, i9 + 1).f840d;
                        i8++;
                        c0192u3 = i9 >= 0 ? (C0192u) this.f814e.get(i9) : null;
                    } else {
                        f += c0192u3.f840d;
                        i9--;
                        c0192u3 = i9 >= 0 ? (C0192u) this.f814e.get(i9) : null;
                    }
                }
                float f2 = m480a.f840d;
                int i11 = i8 + 1;
                if (f2 < 2.0f) {
                    C0192u c0192u4 = i11 < this.f814e.size() ? (C0192u) this.f814e.get(i11) : null;
                    float paddingRight = clientWidth <= 0 ? 0.0f : (getPaddingRight() / clientWidth) + 2.0f;
                    C0192u c0192u5 = c0192u4;
                    int i12 = i11;
                    int i13 = this.f818i + 1;
                    while (i13 < mo437a) {
                        if (f2 >= paddingRight && i13 > min) {
                            if (c0192u5 == null) {
                                break;
                            }
                            if (i13 == c0192u5.f838b && !c0192u5.f839c) {
                                this.f814e.remove(i12);
                                this.f817h.mo446a((ViewGroup) this, i13, c0192u5.f837a);
                                c0192u5 = i12 < this.f814e.size() ? (C0192u) this.f814e.get(i12) : null;
                            }
                        } else if (c0192u5 == null || i13 != c0192u5.f838b) {
                            C0192u m480a2 = m480a(i13, i12);
                            i12++;
                            f2 += m480a2.f840d;
                            c0192u5 = i12 < this.f814e.size() ? (C0192u) this.f814e.get(i12) : null;
                        } else {
                            f2 += c0192u5.f840d;
                            i12++;
                            c0192u5 = i12 < this.f814e.size() ? (C0192u) this.f814e.get(i12) : null;
                        }
                        i13++;
                        c0192u5 = c0192u5;
                        f2 = f2;
                    }
                }
                m464a(m480a, i8, c0192u);
            }
            this.f817h.m452b((ViewGroup) this, this.f818i, m480a != null ? m480a.f837a : null);
            this.f817h.m451b((ViewGroup) this);
            int childCount = getChildCount();
            for (int i14 = 0; i14 < childCount; i14++) {
                View childAt = getChildAt(i14);
                C0193v c0193v = (C0193v) childAt.getLayoutParams();
                c0193v.f847f = i14;
                if (!c0193v.f842a && c0193v.f844c == 0.0f && (m481a = m481a(childAt)) != null) {
                    c0193v.f844c = m481a.f840d;
                    c0193v.f846e = m481a.f838b;
                }
            }
            m476h();
            if (hasFocus()) {
                View findFocus = findFocus();
                C0192u m492b = findFocus != null ? m492b(findFocus) : null;
                if (m492b == null || m492b.f838b != this.f818i) {
                    for (int i15 = 0; i15 < getChildCount(); i15++) {
                        View childAt2 = getChildAt(i15);
                        C0192u m481a2 = m481a(childAt2);
                        if (m481a2 != null && m481a2.f838b == this.f818i && childAt2.requestFocus(i2)) {
                            return;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    protected void m484a(int i, float f, int i2) {
        int measuredWidth;
        int i3;
        int i4;
        if (this.f803V > 0) {
            int scrollX = getScrollX();
            int paddingLeft = getPaddingLeft();
            int paddingRight = getPaddingRight();
            int width = getWidth();
            int childCount = getChildCount();
            int i5 = 0;
            while (i5 < childCount) {
                View childAt = getChildAt(i5);
                C0193v c0193v = (C0193v) childAt.getLayoutParams();
                if (c0193v.f842a) {
                    switch (c0193v.f843b & 7) {
                        case 1:
                            measuredWidth = Math.max((width - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            int i6 = paddingRight;
                            i3 = paddingLeft;
                            i4 = i6;
                            break;
                        case 2:
                        case 4:
                        default:
                            measuredWidth = paddingLeft;
                            int i7 = paddingRight;
                            i3 = paddingLeft;
                            i4 = i7;
                            break;
                        case 3:
                            int width2 = childAt.getWidth() + paddingLeft;
                            int i8 = paddingLeft;
                            i4 = paddingRight;
                            i3 = width2;
                            measuredWidth = i8;
                            break;
                        case 5:
                            measuredWidth = (width - paddingRight) - childAt.getMeasuredWidth();
                            int measuredWidth2 = paddingRight + childAt.getMeasuredWidth();
                            i3 = paddingLeft;
                            i4 = measuredWidth2;
                            break;
                    }
                    int left = (measuredWidth + scrollX) - childAt.getLeft();
                    if (left != 0) {
                        childAt.offsetLeftAndRight(left);
                    }
                } else {
                    int i9 = paddingRight;
                    i3 = paddingLeft;
                    i4 = i9;
                }
                i5++;
                int i10 = i4;
                paddingLeft = i3;
                paddingRight = i10;
            }
        }
        if (this.f804W != null) {
            this.f804W.mo501a(i, f, i2);
        }
        if (this.f805aa != null) {
            this.f805aa.mo501a(i, f, i2);
        }
        if (this.f807ac != null) {
            int scrollX2 = getScrollX();
            int childCount2 = getChildCount();
            for (int i11 = 0; i11 < childCount2; i11++) {
                View childAt2 = getChildAt(i11);
                if (!((C0193v) childAt2.getLayoutParams()).f842a) {
                    this.f807ac.m503a(childAt2, (childAt2.getLeft() - scrollX2) / getClientWidth());
                }
            }
        }
        this.f802U = true;
    }

    /* renamed from: a */
    void m485a(int i, int i2, int i3) {
        int abs;
        if (getChildCount() == 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int i4 = i - scrollX;
        int i5 = i2 - scrollY;
        if (i4 == 0 && i5 == 0) {
            m467a(false);
            m494c();
            setScrollState(0);
            return;
        }
        setScrollingCacheEnabled(true);
        setScrollState(2);
        int clientWidth = getClientWidth();
        int i6 = clientWidth / 2;
        float m479a = (i6 * m479a(Math.min(1.0f, (Math.abs(i4) * 1.0f) / clientWidth))) + i6;
        int abs2 = Math.abs(i3);
        if (abs2 > 0) {
            abs = Math.round(1000.0f * Math.abs(m479a / abs2)) * 4;
        } else {
            abs = (int) (((Math.abs(i4) / ((clientWidth * this.f817h.m436a(this.f818i)) + this.f824o)) + 1.0f) * 100.0f);
        }
        this.f822m.startScroll(scrollX, scrollY, i4, i5, Math.min(abs, 600));
        m471c(this);
    }

    /* renamed from: a */
    public void m486a(int i, boolean z) {
        this.f834y = false;
        m487a(i, z, false);
    }

    /* renamed from: a */
    void m487a(int i, boolean z, boolean z2) {
        m488a(i, z, z2, 0);
    }

    /* renamed from: a */
    void m488a(int i, boolean z, boolean z2, int i2) {
        if (this.f817h == null || this.f817h.mo437a() <= 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (!z2 && this.f818i == i && this.f814e.size() != 0) {
            setScrollingCacheEnabled(false);
            return;
        }
        if (i < 0) {
            i = 0;
        } else if (i >= this.f817h.mo437a()) {
            i = this.f817h.mo437a() - 1;
        }
        int i3 = this.f835z;
        if (i > this.f818i + i3 || i < this.f818i - i3) {
            for (int i4 = 0; i4 < this.f814e.size(); i4++) {
                ((C0192u) this.f814e.get(i4)).f839c = true;
            }
        }
        boolean z3 = this.f818i != i;
        if (!this.f800S) {
            m483a(i);
            m462a(i, z, i2, z3);
            return;
        }
        this.f818i = i;
        if (z3 && this.f804W != null) {
            this.f804W.mo500a(i);
        }
        if (z3 && this.f805aa != null) {
            this.f805aa.mo500a(i);
        }
        requestLayout();
    }

    /* renamed from: a */
    public boolean m489a(KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0) {
            return false;
        }
        switch (keyEvent.getKeyCode()) {
            case 21:
                break;
            case 22:
                break;
            case 61:
                if (Build.VERSION.SDK_INT >= 11) {
                    if (!keyEvent.hasNoModifiers()) {
                        if (keyEvent.hasModifiers(1)) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                break;
        }
        return false;
    }

    /* renamed from: a */
    protected boolean m490a(View view, boolean z, int i, int i2, int i3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (i2 + scrollX >= childAt.getLeft() && i2 + scrollX < childAt.getRight() && i3 + scrollY >= childAt.getTop() && i3 + scrollY < childAt.getBottom() && m490a(childAt, true, i, (i2 + scrollX) - childAt.getLeft(), (i3 + scrollY) - childAt.getTop())) {
                    return true;
                }
            }
        }
        return Build.VERSION.SDK_INT >= 14 && z && view.canScrollHorizontally(-i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList arrayList, int i, int i2) {
        C0192u m481a;
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i3 = 0; i3 < getChildCount(); i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() == 0 && (m481a = m481a(childAt)) != null && m481a.f838b == this.f818i) {
                    childAt.addFocusables(arrayList, i, i2);
                }
            }
        }
        if ((descendantFocusability != 262144 || size == arrayList.size()) && isFocusable()) {
            if (((i2 & 1) == 1 && isInTouchMode() && !isFocusableInTouchMode()) || arrayList == null) {
                return;
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addTouchables(ArrayList arrayList) {
        C0192u m481a;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (m481a = m481a(childAt)) != null && m481a.f838b == this.f818i) {
                childAt.addTouchables(arrayList);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        ViewGroup.LayoutParams generateLayoutParams = !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : layoutParams;
        C0193v c0193v = (C0193v) generateLayoutParams;
        c0193v.f842a |= view instanceof InterfaceC0191t;
        if (!this.f832w) {
            super.addView(view, i, generateLayoutParams);
        } else {
            if (c0193v != null && c0193v.f842a) {
                throw new IllegalStateException("Cannot add pager decor view during layout");
            }
            c0193v.f845d = true;
            addViewInLayout(view, i, generateLayoutParams);
        }
    }

    /* renamed from: b */
    C0192u m491b(int i) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.f814e.size()) {
                return null;
            }
            C0192u c0192u = (C0192u) this.f814e.get(i3);
            if (c0192u.f838b == i) {
                return c0192u;
            }
            i2 = i3 + 1;
        }
    }

    /* renamed from: b */
    C0192u m492b(View view) {
        while (true) {
            Object parent = view.getParent();
            if (parent == this) {
                return m481a(view);
            }
            if (parent == null || !(parent instanceof View)) {
                break;
            }
            view = (View) parent;
        }
        return null;
    }

    /* renamed from: b */
    void m493b() {
        int i;
        boolean z;
        int i2;
        boolean z2;
        int mo437a = this.f817h.mo437a();
        this.f813b = mo437a;
        boolean z3 = this.f814e.size() < (this.f835z * 2) + 1 && this.f814e.size() < mo437a;
        boolean z4 = false;
        int i3 = this.f818i;
        boolean z5 = z3;
        int i4 = 0;
        while (i4 < this.f814e.size()) {
            C0192u c0192u = (C0192u) this.f814e.get(i4);
            int m438a = this.f817h.m438a(c0192u.f837a);
            if (m438a == -1) {
                i = i4;
                z = z4;
                i2 = i3;
                z2 = z5;
            } else if (m438a == -2) {
                this.f814e.remove(i4);
                int i5 = i4 - 1;
                if (!z4) {
                    this.f817h.m445a((ViewGroup) this);
                    z4 = true;
                }
                this.f817h.mo446a((ViewGroup) this, c0192u.f838b, c0192u.f837a);
                if (this.f818i == c0192u.f838b) {
                    i = i5;
                    z = z4;
                    i2 = Math.max(0, Math.min(this.f818i, mo437a - 1));
                    z2 = true;
                } else {
                    i = i5;
                    z = z4;
                    i2 = i3;
                    z2 = true;
                }
            } else if (c0192u.f838b != m438a) {
                if (c0192u.f838b == this.f818i) {
                    i3 = m438a;
                }
                c0192u.f838b = m438a;
                i = i4;
                z = z4;
                i2 = i3;
                z2 = true;
            } else {
                i = i4;
                z = z4;
                i2 = i3;
                z2 = z5;
            }
            z5 = z2;
            i3 = i2;
            z4 = z;
            i4 = i + 1;
        }
        if (z4) {
            this.f817h.m451b((ViewGroup) this);
        }
        Collections.sort(this.f814e, f780c);
        if (z5) {
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                C0193v c0193v = (C0193v) getChildAt(i6).getLayoutParams();
                if (!c0193v.f842a) {
                    c0193v.f844c = 0.0f;
                }
            }
            m487a(i3, false, true);
            requestLayout();
        }
    }

    /* renamed from: c */
    void m494c() {
        m483a(this.f818i);
    }

    /* renamed from: c */
    public boolean m495c(int i) {
        View view;
        boolean z;
        boolean m496d;
        View findFocus = findFocus();
        if (findFocus == this) {
            view = null;
        } else {
            if (findFocus != null) {
                ViewParent parent = findFocus.getParent();
                while (true) {
                    if (!(parent instanceof ViewGroup)) {
                        z = false;
                        break;
                    }
                    if (parent == this) {
                        z = true;
                        break;
                    }
                    parent = parent.getParent();
                }
                if (!z) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(findFocus.getClass().getSimpleName());
                    for (ViewParent parent2 = findFocus.getParent(); parent2 instanceof ViewGroup; parent2 = parent2.getParent()) {
                        sb.append(" => ").append(parent2.getClass().getSimpleName());
                    }
                    Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + sb.toString());
                    view = null;
                }
            }
            view = findFocus;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, view, i);
        if (findNextFocus == null || findNextFocus == view) {
            if (i == 17 || i == 1) {
                m496d = m496d();
            } else {
                if (i == 66 || i == 2) {
                    m496d = m497e();
                }
                m496d = false;
            }
        } else if (i == 17) {
            m496d = (view == null || m460a(this.f816g, findNextFocus).left < m460a(this.f816g, view).left) ? findNextFocus.requestFocus() : m496d();
        } else {
            if (i == 66) {
                m496d = (view == null || m460a(this.f816g, findNextFocus).left > m460a(this.f816g, view).left) ? findNextFocus.requestFocus() : m497e();
            }
            m496d = false;
        }
        if (m496d) {
            playSoundEffect(SoundEffectConstants.getContantForFocusDirection(i));
        }
        return m496d;
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        if (this.f817h == null) {
            return false;
        }
        int clientWidth = getClientWidth();
        int scrollX = getScrollX();
        if (i < 0) {
            return scrollX > ((int) (((float) clientWidth) * this.f828s));
        }
        if (i > 0) {
            return scrollX < ((int) (((float) clientWidth) * this.f829t));
        }
        return false;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0193v) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f822m.isFinished() || !this.f822m.computeScrollOffset()) {
            m467a(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.f822m.getCurrX();
        int currY = this.f822m.getCurrY();
        if (scrollX != currX || scrollY != currY) {
            scrollTo(currX, currY);
            if (!m473d(currX)) {
                this.f822m.abortAnimation();
                scrollTo(0, currY);
            }
        }
        m471c(this);
    }

    /* renamed from: d */
    boolean m496d() {
        if (this.f818i <= 0) {
            return false;
        }
        m486a(this.f818i - 1, true);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m489a(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        C0192u m481a;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() == 0 && (m481a = m481a(childAt)) != null && m481a.f838b == this.f818i && childAt.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        boolean z = false;
        if (!this.f798Q.m562a()) {
            int save = canvas.save();
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int width = getWidth();
            canvas.rotate(270.0f);
            canvas.translate((-height) + getPaddingTop(), this.f828s * width);
            this.f798Q.m561a(height, width);
            z = false | this.f798Q.m565a(canvas);
            canvas.restoreToCount(save);
        }
        if (!this.f799R.m562a()) {
            int save2 = canvas.save();
            int width2 = getWidth();
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            canvas.rotate(90.0f);
            canvas.translate(-getPaddingTop(), (-(this.f829t + 1.0f)) * width2);
            this.f799R.m561a(height2, width2);
            z |= this.f799R.m565a(canvas);
            canvas.restoreToCount(save2);
        }
        if (z) {
            m471c(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f825p;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        drawable.setState(getDrawableState());
    }

    /* renamed from: e */
    boolean m497e() {
        if (this.f817h == null || this.f818i >= this.f817h.mo437a() - 1) {
            return false;
        }
        m486a(this.f818i + 1, true);
        return true;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0193v();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0193v(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    public AbstractC0181j getAdapter() {
        return this.f817h;
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        if (this.f809ae == 2) {
            i2 = (i - 1) - i2;
        }
        return ((C0193v) ((View) this.f810af.get(i2)).getLayoutParams()).f847f;
    }

    public int getCurrentItem() {
        return this.f818i;
    }

    public int getOffscreenPageLimit() {
        return this.f835z;
    }

    public int getPageMargin() {
        return this.f824o;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f800S = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        removeCallbacks(this.f811ah);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        float f;
        super.onDraw(canvas);
        if (this.f824o <= 0 || this.f825p == null || this.f814e.size() <= 0 || this.f817h == null) {
            return;
        }
        int scrollX = getScrollX();
        int width = getWidth();
        float f2 = this.f824o / width;
        C0192u c0192u = (C0192u) this.f814e.get(0);
        float f3 = c0192u.f841e;
        int size = this.f814e.size();
        int i = c0192u.f838b;
        int i2 = ((C0192u) this.f814e.get(size - 1)).f838b;
        int i3 = 0;
        for (int i4 = i; i4 < i2; i4++) {
            while (i4 > c0192u.f838b && i3 < size) {
                i3++;
                c0192u = (C0192u) this.f814e.get(i3);
            }
            if (i4 == c0192u.f838b) {
                f = (c0192u.f841e + c0192u.f840d) * width;
                f3 = c0192u.f841e + c0192u.f840d + f2;
            } else {
                float m436a = this.f817h.m436a(i4);
                f = (f3 + m436a) * width;
                f3 += m436a + f2;
            }
            if (this.f824o + f > scrollX) {
                this.f825p.setBounds((int) f, this.f826q, (int) (this.f824o + f + 0.5f), this.f827r);
                this.f825p.draw(canvas);
            }
            if (f > scrollX + width) {
                return;
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            this.f782A = false;
            this.f783B = false;
            this.f791J = -1;
            if (this.f792K == null) {
                return false;
            }
            this.f792K.recycle();
            this.f792K = null;
            return false;
        }
        if (action != 0) {
            if (this.f782A) {
                return true;
            }
            if (this.f783B) {
                return false;
            }
        }
        switch (action) {
            case 0:
                float x = motionEvent.getX();
                this.f789H = x;
                this.f787F = x;
                float y = motionEvent.getY();
                this.f790I = y;
                this.f788G = y;
                this.f791J = C0177f.m427b(motionEvent, 0);
                this.f783B = false;
                this.f822m.computeScrollOffset();
                if (this.f812ai == 2 && Math.abs(this.f822m.getFinalX() - this.f822m.getCurrX()) > this.f796O) {
                    this.f822m.abortAnimation();
                    this.f834y = false;
                    m494c();
                    this.f782A = true;
                    m472c(true);
                    setScrollState(1);
                    break;
                } else {
                    m467a(false);
                    this.f782A = false;
                    break;
                }
                break;
            case 2:
                int i = this.f791J;
                if (i != -1) {
                    int m425a = C0177f.m425a(motionEvent, i);
                    float m428c = C0177f.m428c(motionEvent, m425a);
                    float f = m428c - this.f787F;
                    float abs = Math.abs(f);
                    float m430d = C0177f.m430d(motionEvent, m425a);
                    float abs2 = Math.abs(m430d - this.f790I);
                    if (f != 0.0f && !m468a(this.f787F, f) && m490a(this, false, (int) f, (int) m428c, (int) m430d)) {
                        this.f787F = m428c;
                        this.f788G = m430d;
                        this.f783B = true;
                        return false;
                    }
                    if (abs > this.f786E && 0.5f * abs > abs2) {
                        this.f782A = true;
                        m472c(true);
                        setScrollState(1);
                        this.f787F = f > 0.0f ? this.f789H + this.f786E : this.f789H - this.f786E;
                        this.f788G = m430d;
                        setScrollingCacheEnabled(true);
                    } else if (abs2 > this.f786E) {
                        this.f783B = true;
                    }
                    if (this.f782A && m470b(m428c)) {
                        m471c(this);
                        break;
                    }
                }
                break;
            case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                m465a(motionEvent);
                break;
        }
        if (this.f792K == null) {
            this.f792K = VelocityTracker.obtain();
        }
        this.f792K.addMovement(motionEvent);
        return this.f782A;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        C0192u m481a;
        int i5;
        int i6;
        int i7;
        int measuredHeight;
        int i8;
        int i9;
        int childCount = getChildCount();
        int i10 = i3 - i;
        int i11 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int scrollX = getScrollX();
        int i12 = 0;
        int i13 = 0;
        while (i13 < childCount) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                C0193v c0193v = (C0193v) childAt.getLayoutParams();
                if (c0193v.f842a) {
                    int i14 = c0193v.f843b & 7;
                    int i15 = c0193v.f843b & 112;
                    switch (i14) {
                        case 1:
                            i7 = Math.max((i10 - childAt.getMeasuredWidth()) / 2, paddingLeft);
                            break;
                        case 2:
                        case 4:
                        default:
                            i7 = paddingLeft;
                            break;
                        case 3:
                            i7 = paddingLeft;
                            paddingLeft = childAt.getMeasuredWidth() + paddingLeft;
                            break;
                        case 5:
                            int measuredWidth = (i10 - paddingRight) - childAt.getMeasuredWidth();
                            paddingRight += childAt.getMeasuredWidth();
                            i7 = measuredWidth;
                            break;
                    }
                    switch (i15) {
                        case 16:
                            measuredHeight = Math.max((i11 - childAt.getMeasuredHeight()) / 2, paddingTop);
                            int i16 = paddingBottom;
                            i8 = paddingTop;
                            i9 = i16;
                            break;
                        case 48:
                            int measuredHeight2 = childAt.getMeasuredHeight() + paddingTop;
                            int i17 = paddingTop;
                            i9 = paddingBottom;
                            i8 = measuredHeight2;
                            measuredHeight = i17;
                            break;
                        case 80:
                            measuredHeight = (i11 - paddingBottom) - childAt.getMeasuredHeight();
                            int measuredHeight3 = paddingBottom + childAt.getMeasuredHeight();
                            i8 = paddingTop;
                            i9 = measuredHeight3;
                            break;
                        default:
                            measuredHeight = paddingTop;
                            int i18 = paddingBottom;
                            i8 = paddingTop;
                            i9 = i18;
                            break;
                    }
                    int i19 = i7 + scrollX;
                    childAt.layout(i19, measuredHeight, childAt.getMeasuredWidth() + i19, childAt.getMeasuredHeight() + measuredHeight);
                    i5 = i12 + 1;
                    i6 = i8;
                    paddingBottom = i9;
                    i13++;
                    paddingLeft = paddingLeft;
                    paddingRight = paddingRight;
                    paddingTop = i6;
                    i12 = i5;
                }
            }
            i5 = i12;
            i6 = paddingTop;
            i13++;
            paddingLeft = paddingLeft;
            paddingRight = paddingRight;
            paddingTop = i6;
            i12 = i5;
        }
        int i20 = (i10 - paddingLeft) - paddingRight;
        for (int i21 = 0; i21 < childCount; i21++) {
            View childAt2 = getChildAt(i21);
            if (childAt2.getVisibility() != 8) {
                C0193v c0193v2 = (C0193v) childAt2.getLayoutParams();
                if (!c0193v2.f842a && (m481a = m481a(childAt2)) != null) {
                    int i22 = ((int) (m481a.f841e * i20)) + paddingLeft;
                    if (c0193v2.f845d) {
                        c0193v2.f845d = false;
                        childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (c0193v2.f844c * i20), 1073741824), View.MeasureSpec.makeMeasureSpec((i11 - paddingTop) - paddingBottom, 1073741824));
                    }
                    childAt2.layout(i22, paddingTop, childAt2.getMeasuredWidth() + i22, childAt2.getMeasuredHeight() + paddingTop);
                }
            }
        }
        this.f826q = paddingTop;
        this.f827r = i11 - paddingBottom;
        this.f803V = i12;
        if (this.f800S) {
            m462a(this.f818i, false, 0, false);
        }
        this.f800S = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b4  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i, int i2) {
        C0193v c0193v;
        C0193v c0193v2;
        int i3;
        int i4;
        int i5;
        setMeasuredDimension(getDefaultSize(0, i), getDefaultSize(0, i2));
        int measuredWidth = getMeasuredWidth();
        this.f785D = Math.min(measuredWidth / 10, this.f784C);
        int paddingLeft = (measuredWidth - getPaddingLeft()) - getPaddingRight();
        int measuredHeight = (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8 && (c0193v2 = (C0193v) childAt.getLayoutParams()) != null && c0193v2.f842a) {
                int i7 = c0193v2.f843b & 7;
                int i8 = c0193v2.f843b & 112;
                int i9 = Integer.MIN_VALUE;
                int i10 = Integer.MIN_VALUE;
                boolean z = i8 == 48 || i8 == 80;
                boolean z2 = i7 == 3 || i7 == 5;
                if (z) {
                    i9 = 1073741824;
                } else if (z2) {
                    i10 = 1073741824;
                }
                if (c0193v2.width != -2) {
                    i3 = 1073741824;
                    i4 = c0193v2.width != -1 ? c0193v2.width : paddingLeft;
                } else {
                    i3 = i9;
                    i4 = paddingLeft;
                }
                if (c0193v2.height != -2) {
                    i10 = 1073741824;
                    if (c0193v2.height != -1) {
                        i5 = c0193v2.height;
                        childAt.measure(View.MeasureSpec.makeMeasureSpec(i4, i3), View.MeasureSpec.makeMeasureSpec(i5, i10));
                        if (!z) {
                            measuredHeight -= childAt.getMeasuredHeight();
                        } else if (z2) {
                            paddingLeft -= childAt.getMeasuredWidth();
                        }
                    }
                }
                i5 = measuredHeight;
                childAt.measure(View.MeasureSpec.makeMeasureSpec(i4, i3), View.MeasureSpec.makeMeasureSpec(i5, i10));
                if (!z) {
                }
            }
        }
        this.f830u = View.MeasureSpec.makeMeasureSpec(paddingLeft, 1073741824);
        this.f831v = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
        this.f832w = true;
        m494c();
        this.f832w = false;
        int childCount2 = getChildCount();
        for (int i11 = 0; i11 < childCount2; i11++) {
            View childAt2 = getChildAt(i11);
            if (childAt2.getVisibility() != 8 && ((c0193v = (C0193v) childAt2.getLayoutParams()) == null || !c0193v.f842a)) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec((int) (c0193v.f844c * paddingLeft), 1073741824), this.f831v);
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        int i2;
        C0192u m481a;
        int i3 = -1;
        int childCount = getChildCount();
        if ((i & 2) != 0) {
            i3 = 1;
            i2 = 0;
        } else {
            i2 = childCount - 1;
            childCount = -1;
        }
        while (i2 != childCount) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0 && (m481a = m481a(childAt)) != null && m481a.f838b == this.f818i && childAt.requestFocus(i, rect)) {
                return true;
            }
            i2 += i3;
        }
        return false;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i != i3) {
            m461a(i, i3, this.f824o, this.f824o);
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z = false;
        if (this.f797P) {
            return true;
        }
        if (motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() != 0) {
            return false;
        }
        if (this.f817h == null || this.f817h.mo437a() == 0) {
            return false;
        }
        if (this.f792K == null) {
            this.f792K = VelocityTracker.obtain();
        }
        this.f792K.addMovement(motionEvent);
        switch (motionEvent.getAction() & 255) {
            case 0:
                this.f822m.abortAnimation();
                this.f834y = false;
                m494c();
                float x = motionEvent.getX();
                this.f789H = x;
                this.f787F = x;
                float y = motionEvent.getY();
                this.f790I = y;
                this.f788G = y;
                this.f791J = C0177f.m427b(motionEvent, 0);
                break;
            case 1:
                if (this.f782A) {
                    VelocityTracker velocityTracker = this.f792K;
                    velocityTracker.computeCurrentVelocity(1000, this.f794M);
                    int m453a = (int) C0182k.m453a(velocityTracker, this.f791J);
                    this.f834y = true;
                    int clientWidth = getClientWidth();
                    int scrollX = getScrollX();
                    C0192u m477i = m477i();
                    m488a(m459a(m477i.f838b, ((scrollX / clientWidth) - m477i.f841e) / m477i.f840d, m453a, (int) (C0177f.m428c(motionEvent, C0177f.m425a(motionEvent, this.f791J)) - this.f789H)), true, true, m453a);
                    this.f791J = -1;
                    m478j();
                    z = this.f799R.m566b() | this.f798Q.m566b();
                    break;
                }
                break;
            case 2:
                if (!this.f782A) {
                    int m425a = C0177f.m425a(motionEvent, this.f791J);
                    float m428c = C0177f.m428c(motionEvent, m425a);
                    float abs = Math.abs(m428c - this.f787F);
                    float m430d = C0177f.m430d(motionEvent, m425a);
                    float abs2 = Math.abs(m430d - this.f788G);
                    if (abs > this.f786E && abs > abs2) {
                        this.f782A = true;
                        m472c(true);
                        this.f787F = m428c - this.f789H > 0.0f ? this.f789H + this.f786E : this.f789H - this.f786E;
                        this.f788G = m430d;
                        setScrollState(1);
                        setScrollingCacheEnabled(true);
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
                if (this.f782A) {
                    z = false | m470b(C0177f.m428c(motionEvent, C0177f.m425a(motionEvent, this.f791J)));
                    break;
                }
                break;
            case 3:
                if (this.f782A) {
                    m462a(this.f818i, true, 0, false);
                    this.f791J = -1;
                    m478j();
                    z = this.f799R.m566b() | this.f798Q.m566b();
                    break;
                }
                break;
            case 5:
                int m426b = C0177f.m426b(motionEvent);
                this.f787F = C0177f.m428c(motionEvent, m426b);
                this.f791J = C0177f.m427b(motionEvent, m426b);
                break;
            case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                m465a(motionEvent);
                this.f787F = C0177f.m428c(motionEvent, C0177f.m425a(motionEvent, this.f791J));
                break;
        }
        if (z) {
            m471c(this);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.f832w) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void setAdapter(AbstractC0181j abstractC0181j) {
        if (this.f817h != null) {
            this.f817h.m448b(this.f823n);
            this.f817h.m445a((ViewGroup) this);
            for (int i = 0; i < this.f814e.size(); i++) {
                C0192u c0192u = (C0192u) this.f814e.get(i);
                this.f817h.mo446a((ViewGroup) this, c0192u.f838b, c0192u.f837a);
            }
            this.f817h.m451b((ViewGroup) this);
            this.f814e.clear();
            m475g();
            this.f818i = 0;
            scrollTo(0, 0);
        }
        AbstractC0181j abstractC0181j2 = this.f817h;
        this.f817h = abstractC0181j;
        this.f813b = 0;
        if (this.f817h != null) {
            if (this.f823n == null) {
                this.f823n = new C0197z(this, null);
            }
            this.f817h.m441a((DataSetObserver) this.f823n);
            this.f834y = false;
            boolean z = this.f800S;
            this.f800S = true;
            this.f813b = this.f817h.mo437a();
            if (this.f819j >= 0) {
                this.f817h.m442a(this.f820k, this.f821l);
                m487a(this.f819j, false, true);
                this.f819j = -1;
                this.f820k = null;
                this.f821l = null;
            } else if (z) {
                requestLayout();
            } else {
                m494c();
            }
        }
        if (this.f806ab == null || abstractC0181j2 == abstractC0181j) {
            return;
        }
        this.f806ab.m499a(abstractC0181j2, abstractC0181j);
    }

    void setChildrenDrawingOrderEnabledCompat(boolean z) {
        if (Build.VERSION.SDK_INT >= 7) {
            if (this.f808ad == null) {
                try {
                    this.f808ad = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", Boolean.TYPE);
                } catch (NoSuchMethodException e) {
                    Log.e("ViewPager", "Can't find setChildrenDrawingOrderEnabled", e);
                }
            }
            try {
                this.f808ad.invoke(this, Boolean.valueOf(z));
            } catch (Exception e2) {
                Log.e("ViewPager", "Error changing children drawing order", e2);
            }
        }
    }

    public void setCurrentItem(int i) {
        this.f834y = false;
        m487a(i, !this.f800S, false);
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1) {
            Log.w("ViewPager", "Requested offscreen page limit " + i + " too small; defaulting to 1");
            i = 1;
        }
        if (i != this.f835z) {
            this.f835z = i;
            m494c();
        }
    }

    void setOnAdapterChangeListener(InterfaceC0194w interfaceC0194w) {
        this.f806ab = interfaceC0194w;
    }

    public void setOnPageChangeListener(InterfaceC0195x interfaceC0195x) {
        this.f804W = interfaceC0195x;
    }

    public void setPageMargin(int i) {
        int i2 = this.f824o;
        this.f824o = i;
        int width = getWidth();
        m461a(width, width, i, i2);
        requestLayout();
    }

    public void setPageMarginDrawable(int i) {
        setPageMarginDrawable(getContext().getResources().getDrawable(i));
    }

    public void setPageMarginDrawable(Drawable drawable) {
        this.f825p = drawable;
        if (drawable != null) {
            refreshDrawableState();
        }
        setWillNotDraw(drawable == null);
        invalidate();
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f825p;
    }
}
