package android.support.v4.widget;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.p011a.C0171a;
import android.support.v4.p011a.C0177f;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import org.apache.http.HttpStatus;

/* loaded from: classes.dex */
public class DrawerLayout extends ViewGroup {

    /* renamed from: a */
    static final InterfaceC0198a f849a;

    /* renamed from: b */
    private static final int[] f850b = {R.attr.layout_gravity};

    /* renamed from: c */
    private int f851c;

    /* renamed from: d */
    private int f852d;

    /* renamed from: e */
    private float f853e;

    /* renamed from: f */
    private Paint f854f;

    /* renamed from: g */
    private final C0209l f855g;

    /* renamed from: h */
    private final C0209l f856h;

    /* renamed from: i */
    private final C0204g f857i;

    /* renamed from: j */
    private final C0204g f858j;

    /* renamed from: k */
    private boolean f859k;

    /* renamed from: l */
    private boolean f860l;

    /* renamed from: m */
    private int f861m;

    /* renamed from: n */
    private int f862n;

    /* renamed from: o */
    private boolean f863o;

    /* renamed from: p */
    private boolean f864p;

    /* renamed from: q */
    private InterfaceC0201d f865q;

    /* renamed from: r */
    private float f866r;

    /* renamed from: s */
    private float f867s;

    /* renamed from: t */
    private Drawable f868t;

    /* renamed from: u */
    private Drawable f869u;

    /* renamed from: v */
    private Drawable f870v;

    /* renamed from: w */
    private Object f871w;

    /* renamed from: x */
    private boolean f872x;

    public class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator CREATOR = new C0203f();

        /* renamed from: a */
        int f873a;

        /* renamed from: b */
        int f874b;

        /* renamed from: c */
        int f875c;

        public SavedState(Parcel parcel) {
            super(parcel);
            this.f873a = 0;
            this.f874b = 0;
            this.f875c = 0;
            this.f873a = parcel.readInt();
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
            this.f873a = 0;
            this.f874b = 0;
            this.f875c = 0;
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f873a);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 21) {
            f849a = new C0199b();
        } else {
            f849a = new C0200c();
        }
    }

    public DrawerLayout(Context context) {
        this(context, null);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f852d = -1728053248;
        this.f854f = new Paint();
        this.f860l = true;
        float f = getResources().getDisplayMetrics().density;
        this.f851c = (int) ((64.0f * f) + 0.5f);
        float f2 = f * 400.0f;
        this.f857i = new C0204g(this, 3);
        this.f858j = new C0204g(this, 5);
        this.f855g = C0209l.m580a(this, 1.0f, this.f857i);
        this.f855g.m599a(1);
        this.f855g.m598a(f2);
        this.f857i.m547a(this.f855g);
        this.f856h = C0209l.m580a(this, 1.0f, this.f858j);
        this.f856h.m599a(2);
        this.f856h.m598a(f2);
        this.f858j.m547a(this.f856h);
    }

    /* renamed from: a */
    protected static boolean m504a(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return view.getFitsSystemWindows();
        }
        return false;
    }

    /* renamed from: b */
    protected static int m505b(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return view.getLayoutDirection();
        }
        return 0;
    }

    /* renamed from: b */
    static String m506b(int i) {
        return (i & 3) == 3 ? "LEFT" : (i & 5) == 5 ? "RIGHT" : Integer.toHexString(i);
    }

    /* renamed from: d */
    private boolean m508d() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((C0202e) getChildAt(i).getLayoutParams()).f878c) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: n */
    private static boolean m509n(View view) {
        Drawable background = view.getBackground();
        return background != null && background.getOpacity() == -1;
    }

    /* renamed from: a */
    View m510a() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (((C0202e) childAt.getLayoutParams()).f879d) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: a */
    View m511a(int i) {
        int m420a = C0171a.m420a(i, m505b(this)) & 7;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((m527g(childAt) & 7) == m420a) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: a */
    public void m512a(int i, int i2) {
        int m420a = C0171a.m420a(i2, m505b(this));
        if (m420a == 3) {
            this.f861m = i;
        } else if (m420a == 5) {
            this.f862n = i;
        }
        if (i != 0) {
            (m420a == 3 ? this.f855g : this.f856h).m617e();
        }
        switch (i) {
            case 1:
                View m511a = m511a(m420a);
                if (m511a != null) {
                    m531k(m511a);
                    break;
                }
                break;
            case 2:
                View m511a2 = m511a(m420a);
                if (m511a2 != null) {
                    m530j(m511a2);
                    break;
                }
                break;
        }
    }

    /* renamed from: a */
    void m513a(int i, int i2, View view) {
        int m597a = this.f855g.m597a();
        int m597a2 = this.f856h.m597a();
        int i3 = (m597a == 1 || m597a2 == 1) ? 1 : (m597a == 2 || m597a2 == 2) ? 2 : 0;
        if (view != null) {
            C0202e c0202e = (C0202e) view.getLayoutParams();
            if (i2 == 0) {
                if (c0202e.f877b == 0.0f) {
                    m522d(view);
                } else if (c0202e.f877b == 1.0f) {
                    m523e(view);
                }
            }
            if (c0202e.f880e != i3) {
                c0202e.f880e = i3;
                if (this.f865q != null) {
                    this.f865q.mo400a(view, c0202e.f877b == 0.0f, i3);
                }
            }
        }
    }

    /* renamed from: a */
    void m514a(View view, float f) {
        if (this.f865q != null) {
            this.f865q.mo399a(view, f);
        }
    }

    /* renamed from: a */
    void m515a(boolean z) {
        int childCount = getChildCount();
        boolean z2 = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            C0202e c0202e = (C0202e) childAt.getLayoutParams();
            if (m529i(childAt) && (!z || c0202e.f878c)) {
                z2 = m516a(childAt, 3) ? z2 | this.f855g.m603a(childAt, -childAt.getWidth(), childAt.getTop()) : z2 | this.f856h.m603a(childAt, getWidth(), childAt.getTop());
                c0202e.f878c = false;
            }
        }
        this.f857i.m544a();
        this.f858j.m544a();
        if (z2) {
            invalidate();
        }
    }

    /* renamed from: a */
    boolean m516a(View view, int i) {
        return (m527g(view) & i) == i;
    }

    /* renamed from: b */
    void m517b() {
        if (this.f864p) {
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            getChildAt(i).dispatchTouchEvent(obtain);
        }
        obtain.recycle();
        this.f864p = true;
    }

    /* renamed from: b */
    void m518b(View view, float f) {
        C0202e c0202e = (C0202e) view.getLayoutParams();
        if (f == c0202e.f877b) {
            return;
        }
        c0202e.f877b = f;
        m514a(view, f);
    }

    /* renamed from: c */
    public int m519c(View view) {
        int m527g = m527g(view);
        if (m527g == 3) {
            return this.f861m;
        }
        if (m527g == 5) {
            return this.f862n;
        }
        return 0;
    }

    /* renamed from: c */
    public void m520c(int i) {
        View m511a = m511a(i);
        if (m511a == null) {
            throw new IllegalArgumentException("No drawer view found with gravity " + m506b(i));
        }
        m530j(m511a);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0202e) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void computeScroll() {
        int childCount = getChildCount();
        float f = 0.0f;
        for (int i = 0; i < childCount; i++) {
            f = Math.max(f, ((C0202e) getChildAt(i).getLayoutParams()).f877b);
        }
        this.f853e = f;
        if (this.f855g.m604a(true) || this.f856h.m604a(true)) {
            if (Build.VERSION.SDK_INT >= 16) {
                postInvalidateOnAnimation();
            } else {
                invalidate();
            }
        }
    }

    /* renamed from: d */
    public void m521d(int i) {
        View m511a = m511a(i);
        if (m511a == null) {
            throw new IllegalArgumentException("No drawer view found with gravity " + m506b(i));
        }
        m531k(m511a);
    }

    /* renamed from: d */
    void m522d(View view) {
        View rootView;
        C0202e c0202e = (C0202e) view.getLayoutParams();
        if (c0202e.f879d) {
            c0202e.f879d = false;
            if (this.f865q != null) {
                this.f865q.mo403b(view);
            }
            if (!hasWindowFocus() || (rootView = getRootView()) == null) {
                return;
            }
            rootView.sendAccessibilityEvent(32);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        int i;
        int height = getHeight();
        boolean m528h = m528h(view);
        int i2 = 0;
        int width = getWidth();
        int save = canvas.save();
        if (m528h) {
            int childCount = getChildCount();
            int i3 = 0;
            while (i3 < childCount) {
                View childAt = getChildAt(i3);
                if (childAt != view && childAt.getVisibility() == 0 && m509n(childAt) && m529i(childAt)) {
                    if (childAt.getHeight() < height) {
                        i = width;
                    } else if (m516a(childAt, 3)) {
                        int right = childAt.getRight();
                        if (right <= i2) {
                            right = i2;
                        }
                        i2 = right;
                        i = width;
                    } else {
                        i = childAt.getLeft();
                        if (i < width) {
                        }
                    }
                    i3++;
                    width = i;
                }
                i = width;
                i3++;
                width = i;
            }
            canvas.clipRect(i2, 0, width, getHeight());
        }
        int i4 = width;
        boolean drawChild = super.drawChild(canvas, view, j);
        canvas.restoreToCount(save);
        if (this.f853e > 0.0f && m528h) {
            this.f854f.setColor((((int) (((this.f852d & (-16777216)) >>> 24) * this.f853e)) << 24) | (this.f852d & 16777215));
            C0202e c0202e = (C0202e) m511a(3).getLayoutParams();
            canvas.drawRect(i2, c0202e.topMargin, i4, getHeight() - c0202e.bottomMargin, this.f854f);
        } else if (this.f868t != null && m516a(view, 3)) {
            int intrinsicWidth = this.f868t.getIntrinsicWidth();
            int right2 = view.getRight();
            float max = Math.max(0.0f, Math.min(right2 / this.f855g.m605b(), 1.0f));
            this.f868t.setBounds(right2, view.getTop(), intrinsicWidth + right2, view.getBottom());
            this.f868t.setAlpha((int) (255.0f * max));
            this.f868t.draw(canvas);
        } else if (this.f869u != null && m516a(view, 5)) {
            int intrinsicWidth2 = this.f869u.getIntrinsicWidth();
            int left = view.getLeft();
            float max2 = Math.max(0.0f, Math.min((getWidth() - left) / this.f856h.m605b(), 1.0f));
            this.f869u.setBounds(left - intrinsicWidth2, view.getTop(), left, view.getBottom());
            this.f869u.setAlpha((int) (255.0f * max2));
            this.f869u.draw(canvas);
        }
        return drawChild;
    }

    /* renamed from: e */
    void m523e(View view) {
        C0202e c0202e = (C0202e) view.getLayoutParams();
        if (c0202e.f879d) {
            return;
        }
        c0202e.f879d = true;
        if (this.f865q != null) {
            this.f865q.mo398a(view);
        }
        sendAccessibilityEvent(32);
    }

    /* renamed from: e */
    public boolean m524e(int i) {
        View m511a = m511a(i);
        if (m511a != null) {
            return m532l(m511a);
        }
        return false;
    }

    /* renamed from: f */
    float m525f(View view) {
        return ((C0202e) view.getLayoutParams()).f877b;
    }

    /* renamed from: f */
    public boolean m526f(int i) {
        View m511a = m511a(i);
        if (m511a != null) {
            return m533m(m511a);
        }
        return false;
    }

    /* renamed from: g */
    int m527g(View view) {
        return C0171a.m420a(((C0202e) view.getLayoutParams()).f876a, m505b(this));
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0202e(-1, -1);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0202e(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0202e ? new C0202e((C0202e) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0202e((ViewGroup.MarginLayoutParams) layoutParams) : new C0202e(layoutParams);
    }

    /* renamed from: h */
    boolean m528h(View view) {
        return view.getVisibility() == 0 && ((C0202e) view.getLayoutParams()).f876a == 0;
    }

    /* renamed from: i */
    boolean m529i(View view) {
        return (C0171a.m420a(((C0202e) view.getLayoutParams()).f876a, m505b(view)) & 7) != 0;
    }

    /* renamed from: j */
    public void m530j(View view) {
        if (!m529i(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        if (this.f860l) {
            C0202e c0202e = (C0202e) view.getLayoutParams();
            c0202e.f877b = 1.0f;
            c0202e.f879d = true;
        } else if (m516a(view, 3)) {
            this.f855g.m603a(view, 0, view.getTop());
        } else {
            this.f856h.m603a(view, getWidth() - view.getWidth(), view.getTop());
        }
        invalidate();
    }

    /* renamed from: k */
    public void m531k(View view) {
        if (!m529i(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        if (this.f860l) {
            C0202e c0202e = (C0202e) view.getLayoutParams();
            c0202e.f877b = 0.0f;
            c0202e.f879d = false;
        } else if (m516a(view, 3)) {
            this.f855g.m603a(view, -view.getWidth(), view.getTop());
        } else {
            this.f856h.m603a(view, getWidth(), view.getTop());
        }
        invalidate();
    }

    /* renamed from: l */
    public boolean m532l(View view) {
        if (m529i(view)) {
            return ((C0202e) view.getLayoutParams()).f879d;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* renamed from: m */
    public boolean m533m(View view) {
        if (m529i(view)) {
            return ((C0202e) view.getLayoutParams()).f877b > 0.0f;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f860l = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f860l = true;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        int mo534a;
        super.onDraw(canvas);
        if (!this.f872x || this.f870v == null || (mo534a = f849a.mo534a(this.f871w)) <= 0) {
            return;
        }
        this.f870v.setBounds(0, 0, getWidth(), mo534a);
        this.f870v.draw(canvas);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        int m424a = C0177f.m424a(motionEvent);
        boolean m602a = this.f855g.m602a(motionEvent) | this.f856h.m602a(motionEvent);
        switch (m424a) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.f866r = x;
                this.f867s = y;
                z = this.f853e > 0.0f && m528h(this.f855g.m615d((int) x, (int) y));
                this.f863o = false;
                this.f864p = false;
                break;
            case 1:
            case 3:
                m515a(true);
                this.f863o = false;
                this.f864p = false;
                z = false;
                break;
            case 2:
                if (this.f855g.m616d(3)) {
                    this.f857i.m544a();
                    this.f858j.m544a();
                    z = false;
                    break;
                }
                z = false;
                break;
            default:
                z = false;
                break;
        }
        return m602a || z || m508d() || this.f864p;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        float f;
        this.f859k = true;
        int i6 = i3 - i;
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                C0202e c0202e = (C0202e) childAt.getLayoutParams();
                if (m528h(childAt)) {
                    childAt.layout(c0202e.leftMargin, c0202e.topMargin, c0202e.leftMargin + childAt.getMeasuredWidth(), c0202e.topMargin + childAt.getMeasuredHeight());
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (m516a(childAt, 3)) {
                        i5 = ((int) (measuredWidth * c0202e.f877b)) + (-measuredWidth);
                        f = (measuredWidth + i5) / measuredWidth;
                    } else {
                        i5 = i6 - ((int) (measuredWidth * c0202e.f877b));
                        f = (i6 - i5) / measuredWidth;
                    }
                    boolean z2 = f != c0202e.f877b;
                    switch (c0202e.f876a & 112) {
                        case 16:
                            int i8 = i4 - i2;
                            int i9 = (i8 - measuredHeight) / 2;
                            if (i9 < c0202e.topMargin) {
                                i9 = c0202e.topMargin;
                            } else if (i9 + measuredHeight > i8 - c0202e.bottomMargin) {
                                i9 = (i8 - c0202e.bottomMargin) - measuredHeight;
                            }
                            childAt.layout(i5, i9, measuredWidth + i5, measuredHeight + i9);
                            break;
                        case 80:
                            int i10 = i4 - i2;
                            childAt.layout(i5, (i10 - c0202e.bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i5, i10 - c0202e.bottomMargin);
                            break;
                        default:
                            childAt.layout(i5, c0202e.topMargin, measuredWidth + i5, measuredHeight + c0202e.topMargin);
                            break;
                    }
                    if (z2) {
                        m518b(childAt, f);
                    }
                    int i11 = c0202e.f877b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i11) {
                        childAt.setVisibility(i11);
                    }
                }
            }
        }
        this.f859k = false;
        this.f860l = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x0054, code lost:
    
        if (r5 != 0) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0040  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i, int i2) {
        int childCount;
        int i3;
        int i4 = HttpStatus.SC_MULTIPLE_CHOICES;
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (mode != 1073741824 || mode2 != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
            }
            if (mode != Integer.MIN_VALUE && mode == 0) {
                size = 300;
            }
            if (mode2 == Integer.MIN_VALUE) {
                i4 = size2;
            }
            setMeasuredDimension(size, i4);
            boolean z = this.f871w == null && m504a(this);
            int m505b = m505b(this);
            childCount = getChildCount();
            for (i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                if (childAt.getVisibility() != 8) {
                    C0202e c0202e = (C0202e) childAt.getLayoutParams();
                    if (z) {
                        int m420a = C0171a.m420a(c0202e.f876a, m505b);
                        if (m504a(childAt)) {
                            f849a.mo535a(childAt, this.f871w, m420a);
                        } else {
                            f849a.mo536a(c0202e, this.f871w, m420a);
                        }
                    }
                    if (m528h(childAt)) {
                        childAt.measure(View.MeasureSpec.makeMeasureSpec((size - c0202e.leftMargin) - c0202e.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec((i4 - c0202e.topMargin) - c0202e.bottomMargin, 1073741824));
                    } else {
                        if (!m529i(childAt)) {
                            throw new IllegalStateException("Child " + childAt + " at index " + i3 + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
                        }
                        int m527g = m527g(childAt) & 7;
                        if ((0 & m527g) != 0) {
                            throw new IllegalStateException("Child drawer has absolute gravity " + m506b(m527g) + " but this DrawerLayout already has a drawer view along that edge");
                        }
                        childAt.measure(getChildMeasureSpec(i, this.f851c + c0202e.leftMargin + c0202e.rightMargin, c0202e.width), getChildMeasureSpec(i2, c0202e.topMargin + c0202e.bottomMargin, c0202e.height));
                    }
                }
            }
        }
        i4 = size2;
        setMeasuredDimension(size, i4);
        if (this.f871w == null) {
        }
        int m505b2 = m505b(this);
        childCount = getChildCount();
        while (i3 < childCount) {
        }
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        View m511a;
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.f873a != 0 && (m511a = m511a(savedState.f873a)) != null) {
            m530j(m511a);
        }
        m512a(savedState.f874b, 3);
        m512a(savedState.f875c, 5);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            View childAt = getChildAt(i);
            if (m529i(childAt)) {
                C0202e c0202e = (C0202e) childAt.getLayoutParams();
                if (c0202e.f879d) {
                    savedState.f873a = c0202e.f876a;
                    break;
                }
            }
            i++;
        }
        savedState.f874b = this.f861m;
        savedState.f875c = this.f862n;
        return savedState;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:3:0x0015, code lost:
    
        return true;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View m510a;
        this.f855g.m606b(motionEvent);
        this.f856h.m606b(motionEvent);
        switch (motionEvent.getAction() & 255) {
            case 0:
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.f866r = x;
                this.f867s = y;
                this.f863o = false;
                this.f864p = false;
                break;
            case 1:
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                View m615d = this.f855g.m615d((int) x2, (int) y2);
                if (m615d != null && m528h(m615d)) {
                    float f = x2 - this.f866r;
                    float f2 = y2 - this.f867s;
                    int m614d = this.f855g.m614d();
                    if ((f * f) + (f2 * f2) < m614d * m614d && (m510a = m510a()) != null) {
                        z = m519c(m510a) == 2;
                        m515a(z);
                        this.f863o = false;
                        break;
                    }
                }
                z = true;
                m515a(z);
                this.f863o = false;
                break;
            case 3:
                m515a(true);
                this.f863o = false;
                this.f864p = false;
                break;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        this.f863o = z;
        if (z) {
            m515a(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.f859k) {
            return;
        }
        super.requestLayout();
    }

    public void setDrawerListener(InterfaceC0201d interfaceC0201d) {
        this.f865q = interfaceC0201d;
    }

    public void setDrawerLockMode(int i) {
        m512a(i, 3);
        m512a(i, 5);
    }

    public void setScrimColor(int i) {
        this.f852d = i;
        invalidate();
    }

    public void setStatusBarBackground(int i) {
        this.f870v = i != 0 ? getResources().getDrawable(i) : null;
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.f870v = drawable;
    }

    public void setStatusBarBackgroundColor(int i) {
        this.f870v = new ColorDrawable(i);
    }
}
