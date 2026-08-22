package com.alensw.p038ui.activity;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.shapes.Shape;
import android.os.Build;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.p009a.p010a.C0158a;
import android.support.p009a.p010a.C0168k;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.alensw.PicFolder.PlayerActivity;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p023b.p030g.MenuC0693b;
import com.alensw.p023b.p030g.MenuItemC0703l;
import com.alensw.p038ui.p042d.C1294d;
import com.alensw.p038ui.view.TitleBar;
import com.alensw.p038ui.view.TitleView;
import com.p043b.p044a.C1387b;
import java.lang.reflect.Field;
import org.apache.http.entity.ContentLengthStrategy;

@SuppressLint({"Registered"})
/* renamed from: com.alensw.ui.activity.ao */
/* loaded from: classes.dex */
public class ActivityC1109ao extends Activity {

    /* renamed from: F */
    public static final boolean f3725F;

    /* renamed from: G */
    public static final boolean f3726G;

    /* renamed from: H */
    public static final boolean f3727H;

    /* renamed from: i */
    private static int f3728i;

    /* renamed from: j */
    private static int f3729j;

    /* renamed from: I */
    protected View f3730I;

    /* renamed from: J */
    protected ActionBar f3731J;

    /* renamed from: K */
    protected TitleBar f3732K;

    /* renamed from: L */
    protected ViewGroup f3733L;

    /* renamed from: M */
    protected boolean f3734M;

    /* renamed from: N */
    protected boolean f3735N;

    /* renamed from: O */
    protected int f3736O;

    /* renamed from: P */
    protected int f3737P;

    /* renamed from: Q */
    public boolean f3738Q;

    /* renamed from: R */
    public boolean f3739R;

    /* renamed from: S */
    public long f3740S;

    /* renamed from: a */
    private View f3748a;

    /* renamed from: b */
    private boolean f3750b;

    /* renamed from: c */
    private ActionMode f3751c;

    /* renamed from: d */
    private TitleView f3752d;

    /* renamed from: e */
    private TitleBar f3753e;

    /* renamed from: f */
    private TitleBar f3754f;

    /* renamed from: T */
    public int f3741T = 0;

    /* renamed from: U */
    public int f3742U = -16777216;

    /* renamed from: V */
    public int f3743V = -12303292;

    /* renamed from: W */
    public int f3744W = -12303292;

    /* renamed from: X */
    public int f3745X = -7829368;

    /* renamed from: Y */
    public int f3746Y = -1;

    /* renamed from: Z */
    public final View.OnClickListener f3747Z = new ViewOnClickListenerC1110ap(this);

    /* renamed from: aa */
    protected final Runnable f3749aa = new RunnableC1120az(this);

    /* renamed from: g */
    private int f3755g = -1;

    /* renamed from: h */
    private ColorDrawable f3756h = new ColorDrawable(this.f3755g);

    static {
        f3725F = Build.VERSION.SDK_INT >= 11;
        f3726G = Build.VERSION.SDK_INT >= 11;
        f3727H = Build.VERSION.SDK_INT >= 16;
    }

    @TargetApi(11)
    /* renamed from: a */
    public static int m3786a(Context context) {
        if (f3728i == 0) {
            Resources resources = context.getResources();
            if (f3725F) {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
                f3728i = (int) typedValue.getDimension(resources.getDisplayMetrics());
            } else {
                f3728i = resources.getDimensionPixelSize(com.alensw.PicFolder.R.dimen.button_height);
            }
        }
        return f3728i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v10, types: [android.view.View] */
    /* renamed from: a */
    public static void m3789a(Activity activity, int i) {
        ImageView imageView;
        if (f3725F && Build.VERSION.SDK_INT < 21) {
            View findViewById = activity.findViewById(R.id.home);
            if (findViewById != null) {
                ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
                layoutParams.width = 0;
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    marginLayoutParams.rightMargin = 0;
                    marginLayoutParams.leftMargin = 0;
                }
                findViewById.setLayoutParams(layoutParams);
                findViewById.setVisibility(8);
            }
            imageView = C0168k.m414a(activity, findViewById);
            C0158a.m390a(activity, i);
        } else if (Build.VERSION.SDK_INT >= 21) {
            int identifier = activity.getResources().getIdentifier("up", "id", "android");
            ImageView findViewById2 = identifier != 0 ? activity.findViewById(identifier) : null;
            imageView = findViewById2 instanceof ImageView ? findViewById2 : null;
            if (QuickApp.f2062e && findViewById2 != null) {
                ViewParent parent = findViewById2.getParent();
                while (true) {
                    if (parent == null) {
                        break;
                    }
                    View view = (View) parent;
                    if ((view instanceof LinearLayout) && view.getId() == -1) {
                        view.setOnClickListener(new ViewOnClickListenerC1112ar(activity));
                        break;
                    }
                    parent = parent.getParent();
                }
            }
        } else {
            imageView = null;
        }
        if (imageView != null) {
            ViewGroup.LayoutParams layoutParams2 = imageView.getLayoutParams();
            layoutParams2.width = activity.getResources().getDimensionPixelSize(com.alensw.PicFolder.R.dimen.home_width);
            layoutParams2.height = -1;
            if (layoutParams2 instanceof ViewGroup.MarginLayoutParams) {
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                marginLayoutParams2.rightMargin = 0;
                marginLayoutParams2.leftMargin = 0;
            }
            imageView.setLayoutParams(layoutParams2);
            imageView.setPadding(0, 0, 0, 0);
            imageView.setScaleType(ImageView.ScaleType.CENTER);
        }
    }

    /* renamed from: a */
    public static void m3790a(View view, int i) {
        if (view instanceof ImageView) {
            Resources resources = view.getResources();
            ImageView imageView = (ImageView) view;
            imageView.setImageDrawable(C1387b.m4499a(resources, com.alensw.PicFolder.R.raw.ic_menu_overflow, i, resources.getDimensionPixelSize(com.alensw.PicFolder.R.dimen.overflow_size)));
            imageView.setScaleType(ImageView.ScaleType.CENTER);
        }
    }

    /* renamed from: a */
    public static void m3791a(ImageView imageView, Shape shape) {
        m3792a(imageView, shape, -1426063361);
    }

    /* renamed from: a */
    public static void m3792a(ImageView imageView, Shape shape, int i) {
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        int min = Math.min((Math.max(imageView.getWidth(), layoutParams.width) - imageView.getPaddingLeft()) - imageView.getPaddingRight(), (Math.max(imageView.getHeight(), layoutParams.height) - imageView.getPaddingTop()) - imageView.getPaddingBottom());
        imageView.setImageDrawable(C1294d.m4209a(shape, min, min, i));
    }

    /* renamed from: b */
    public static int m3793b(Context context) {
        if (f3729j == 0) {
            f3729j = context.getResources().getDimensionPixelSize(com.alensw.PicFolder.R.dimen.menu_material_icon_size);
        }
        return Math.max((m3786a(context) * 2) / 3, f3729j);
    }

    /* renamed from: b */
    public static int m3794b(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i, typedValue, true);
        return context.getResources().getColor(typedValue.resourceId);
    }

    /* renamed from: b */
    public static View m3795b(ViewGroup viewGroup) {
        View m3795b;
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if ((childAt instanceof ViewGroup) && (m3795b = m3795b((ViewGroup) childAt)) != null) {
                return m3795b;
            }
            if (childAt.getVisibility() != 8 && childAt.getClass().getName().contains("OverflowMenuButton")) {
                return childAt;
            }
        }
        return null;
    }

    /* renamed from: c */
    public static int m3796c(Context context) {
        if (Build.VERSION.SDK_INT < 11) {
            return R.style.TextAppearance.Medium;
        }
        int[] iArr = {R.attr.actionBarStyle};
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        iArr[0] = context.getResources().getIdentifier("titleTextStyle", "attr", "android");
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(resourceId, iArr);
        int resourceId2 = obtainStyledAttributes2.getResourceId(0, 0);
        obtainStyledAttributes2.recycle();
        return resourceId2;
    }

    /* renamed from: d */
    public static int m3797d(Context context) {
        if (context instanceof ActivityC1109ao) {
            int i = ((ActivityC1109ao) context).f3743V;
            int red = Color.red(i);
            int green = Color.green(i);
            int blue = Color.blue(i);
            if (red != green || green != blue) {
                return i;
            }
        }
        return context.getResources().getColor(com.alensw.PicFolder.R.color.material_accent_light);
    }

    /* renamed from: e */
    public static boolean m3798e(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("split_action_bar_is_narrow", "bool", "android");
        return identifier != 0 && resources.getBoolean(identifier);
    }

    /* renamed from: h */
    public static int m3799h(int i) {
        switch (i) {
            case -3:
                return com.alensw.PicFolder.R.style.Theme_DarkColor;
            case ContentLengthStrategy.CHUNKED /* -2 */:
                return com.alensw.PicFolder.R.style.Theme_LightColor;
            case -1:
                return com.alensw.PicFolder.R.style.Theme_Player;
            case 0:
            default:
                return com.alensw.PicFolder.R.style.Theme_Translucid;
            case 1:
                return com.alensw.PicFolder.R.style.Theme_Blue;
            case 2:
                return com.alensw.PicFolder.R.style.Theme_Dark;
            case 3:
                return com.alensw.PicFolder.R.style.Theme_Black;
        }
    }

    /* renamed from: a */
    public void m3800a(Rect rect, Rect rect2) {
        boolean m3828m = m3828m();
        rect2.set(rect);
        if (Build.VERSION.SDK_INT < 19) {
            int m3825j = m3825j();
            if (m3825j > 0 && rect2.top < m3825j) {
                rect2.top = m3825j + rect2.top;
            }
            int m3826k = m3826k();
            if (m3828m && m3826k > 0 && rect2.bottom < m3826k) {
                rect2.bottom = m3826k + rect2.bottom;
            }
        }
        if (QuickApp.f2067j == 3 && !m3828m) {
            rect2.bottom = 0;
        }
        if (this.f3748a != null) {
            this.f3748a.getLayoutParams().height = rect2.bottom;
        }
    }

    /* renamed from: a */
    public void m3801a(Menu menu, int i, int i2) {
        mo1992a(menu.findItem(i), i2);
    }

    /* renamed from: a */
    public void m3802a(Menu menu, int i, boolean z) {
        m3803a(menu.findItem(i), z);
    }

    @TargetApi(11)
    /* renamed from: a */
    public void mo1992a(MenuItem menuItem, int i) {
        if (menuItem != null) {
            if (f3725F) {
                menuItem.setShowAsAction(i);
            } else {
                if (this.f3732K == null || !(menuItem instanceof MenuItemC0703l)) {
                    return;
                }
                this.f3732K.m4322a(menuItem, i);
            }
        }
    }

    /* renamed from: a */
    public void m3803a(MenuItem menuItem, boolean z) {
        if (menuItem != null) {
            menuItem.setVisible(z);
        }
    }

    /* renamed from: a */
    public void m3804a(ViewGroup viewGroup) {
        this.f3733L = viewGroup;
    }

    /* renamed from: a */
    public void m3805a(TitleBar titleBar) {
        ViewGroup viewGroup = (ViewGroup) this.f3730I.getParent();
        if (this.f3732K != null) {
            viewGroup.removeView(this.f3732K);
        }
        this.f3732K = titleBar;
        if (this.f3732K != null) {
            viewGroup.addView(this.f3732K, this.f3734M ? -1 : 0);
            this.f3732K.setBackgroundColor(this.f3743V);
            this.f3732K.setTitle(getTitle());
            if (this.f3735N) {
                this.f3732K.m4319a();
            }
        }
    }

    /* renamed from: a */
    public void m3806a(CharSequence charSequence) {
        if (this.f3731J != null) {
            this.f3731J.setSubtitle(charSequence);
        } else {
            if (this.f3732K == null || this.f3732K == this.f3753e) {
                return;
            }
            this.f3732K.setSubtitle(charSequence);
        }
    }

    @TargetApi(11)
    /* renamed from: a */
    public void m3807a(CharSequence charSequence, boolean z) {
        if (this.f3752d != null) {
            this.f3752d.setText(charSequence);
        }
        if (this.f3751c != null) {
            this.f3751c.setTitle(charSequence);
            if (z) {
                this.f3751c.invalidate();
                return;
            }
            return;
        }
        if (this.f3753e != null) {
            this.f3753e.setTitle(charSequence);
            if (z) {
                this.f3753e.requestLayout();
            }
        }
    }

    @TargetApi(11)
    /* renamed from: a */
    public void mo1994a(boolean z) {
        m3836u();
        m3818f(z);
        if (this.f3731J != null && this.f3731J.isShowing() != z && !f3727H) {
            if (z) {
                this.f3731J.show();
            } else {
                this.f3731J.hide();
            }
        }
        int i = z ? 0 : 4;
        if (this.f3732K != null && this.f3732K.getVisibility() != i) {
            if (!f3726G) {
                this.f3732K.setVisibility(8);
            }
            this.f3732K.setVisibility(i);
            this.f3732K.startAnimation(m3810c(z));
        }
        if (this.f3733L != null && this.f3733L.getVisibility() != i && this.f3733L.getVisibility() != 8) {
            if (!f3726G) {
                this.f3733L.setVisibility(8);
            }
            this.f3733L.setVisibility(i);
            this.f3733L.startAnimation(m3810c(z));
        }
        int i2 = z ? this.f3742U : this.f3739R ? -16777216 : this.f3742U;
        if (this.f3755g != i2) {
            new C1111aq(this, this.f3730I, null, this.f3755g, i2, i2).m4402a(300L, true);
        }
    }

    @TargetApi(11)
    /* renamed from: a */
    public boolean mo2008a() {
        if (this.f3731J == null || !this.f3731J.isShowing()) {
            return this.f3732K != null && this.f3732K.getVisibility() == 0;
        }
        return true;
    }

    @TargetApi(11)
    /* renamed from: a */
    public boolean m3808a(float f, float f2) {
        if (this.f3731J == null || !this.f3731J.isShowing()) {
            if (this.f3732K != null && this.f3732K.getVisibility() == 0 && f2 >= this.f3732K.getTop() && f2 < this.f3732K.getBottom()) {
                return true;
            }
            if (this.f3733L != null && this.f3733L.getVisibility() == 0 && f2 >= this.f3733L.getTop() && f2 < this.f3733L.getBottom()) {
                return true;
            }
        } else if (f2 < this.f3731J.getHeight() || f2 >= this.f3730I.getHeight() - m3826k()) {
            return true;
        }
        return false;
    }

    /* renamed from: c */
    public View m3809c(int i) {
        View m4320a;
        View m4320a2;
        if (i != 0) {
            if (this.f3732K != null && (m4320a2 = this.f3732K.m4320a(i)) != null && m4320a2.getVisibility() == 0) {
                return m4320a2;
            }
            View findViewById = findViewById(i);
            if (findViewById != null && findViewById.getVisibility() == 0) {
                return findViewById;
            }
        }
        if (f3725F) {
            View m3831p = m3831p();
            if (m3831p != null) {
                return m3831p;
            }
        } else if (this.f3732K != null && (m4320a = this.f3732K.m4320a(com.alensw.PicFolder.R.id.menu)) != null) {
            return m4320a;
        }
        return this.f3748a != null ? this.f3748a : this.f3730I;
    }

    /* renamed from: c */
    public Animation m3810c(boolean z) {
        AlphaAnimation alphaAnimation = new AlphaAnimation(z ? 0.0f : 1.0f, z ? 1.0f : 0.0f);
        alphaAnimation.setDuration(300L);
        return alphaAnimation;
    }

    /* renamed from: c */
    protected boolean mo3811c(Menu menu) {
        return false;
    }

    /* renamed from: d */
    protected void m3812d(int i) {
        if (this.f3737P != i) {
            int i2 = this.f3737P;
            this.f3737P = i;
            if (!this.f3738Q || (i2 & 2) == 0 || (i & 2) != 0 || this.f3731J == null || this.f3731J.isShowing()) {
                return;
            }
            mo1994a(true);
            this.f3740S = System.currentTimeMillis();
        }
    }

    @TargetApi(11)
    /* renamed from: d */
    public void m3813d(boolean z) {
        TitleBar titleBar;
        TitleBar titleBar2 = null;
        if (f3725F) {
            if (this.f3751c != null) {
                this.f3751c.finish();
                this.f3751c = null;
            }
            if (z) {
                this.f3751c = startActionMode(new ActionModeCallbackC1115au(this));
                this.f3752d = (TitleView) getLayoutInflater().inflate(com.alensw.PicFolder.R.layout.action_text, (ViewGroup) null, false);
                this.f3752d.m4333a(true);
                this.f3752d.setId(R.id.selectAll);
                this.f3752d.setMinHeight(m3825j());
                this.f3752d.setTextAppearance(this, m3796c(this));
                this.f3752d.setOnClickListener(this.f3747Z);
                FrameLayout frameLayout = new FrameLayout(this);
                frameLayout.addView(this.f3752d, new FrameLayout.LayoutParams(-2, -1));
                this.f3751c.setCustomView(frameLayout);
                return;
            }
            return;
        }
        if (z && this.f3753e == null) {
            this.f3753e = (TitleBar) getLayoutInflater().inflate(com.alensw.PicFolder.R.layout.title_bar, (ViewGroup) this.f3730I.getParent(), false);
            this.f3753e.setMenuCallback(new C1116av(this));
            this.f3753e.m4326b(true);
            this.f3753e.setOnHomeClickListener(new ViewOnClickListenerC1117aw(this));
            this.f3753e.m4329c(true);
            this.f3753e.setOnTitleClickListener(new ViewOnClickListenerC1118ax(this));
            titleBar2 = this.f3732K;
            titleBar = this.f3753e;
            this.f3754f = this.f3732K;
        } else if (this.f3753e != null) {
            TitleBar titleBar3 = this.f3753e;
            titleBar = this.f3754f;
            this.f3753e = null;
            this.f3754f = null;
            mo3833r();
            titleBar2 = titleBar3;
        } else {
            titleBar = null;
        }
        if (titleBar2 != null) {
            titleBar2.setVisibility(8);
            titleBar2.startAnimation(m3810c(false));
        }
        if (titleBar != null) {
            m3805a(titleBar);
            titleBar.m4330d();
            titleBar.setVisibility(0);
            titleBar.startAnimation(m3810c(true));
        }
    }

    /* renamed from: d */
    protected boolean mo3814d(Menu menu) {
        return false;
    }

    /* renamed from: e */
    public void m3815e(int i) {
        if (Build.VERSION.SDK_INT >= 11) {
            getWindow().getDecorView().setSystemUiVisibility(i);
        }
    }

    @TargetApi(19)
    /* renamed from: e */
    public boolean m3816e(boolean z) {
        if (!f3727H) {
            return false;
        }
        View decorView = getWindow().getDecorView();
        int i = 1280;
        this.f3738Q = z;
        if (z) {
            i = 1792;
            if (Build.VERSION.SDK_INT >= 19) {
                i = 3840;
            }
        }
        decorView.setSystemUiVisibility(i);
        decorView.setOnSystemUiVisibilityChangeListener(new ViewOnSystemUiVisibilityChangeListenerC1119ay(this));
        return true;
    }

    /* renamed from: f */
    public void m3817f(int i) {
        this.f3730I.removeCallbacks(this.f3749aa);
        this.f3730I.postDelayed(this.f3749aa, i);
    }

    @TargetApi(16)
    /* renamed from: f */
    public void m3818f(boolean z) {
        if (Build.VERSION.SDK_INT >= 11) {
            int m3835t = m3835t();
            int i = z ? m3835t & (-2) : m3835t | 1;
            if (f3727H) {
                if ((m3835t & 1024) != 0) {
                    i = z ? i & (-5) : i | 4;
                }
                if ((m3835t & 512) != 0) {
                    i = z ? i & (-3) : i | 2;
                }
            }
            if (i != m3835t) {
                m3815e(i);
            }
        }
    }

    /* renamed from: g */
    public void m3819g(int i) {
        if (this.f3755g != i) {
            this.f3755g = i;
            if (Build.VERSION.SDK_INT >= 11) {
                this.f3756h.setColor(i);
            } else {
                this.f3756h = new ColorDrawable(i);
            }
            getWindow().setBackgroundDrawable(this.f3756h);
        }
    }

    @TargetApi(11)
    /* renamed from: g */
    public void m3820g(boolean z) {
        if (this.f3731J != null) {
            this.f3731J.setDisplayHomeAsUpEnabled(z);
        } else if (this.f3732K != null) {
            this.f3732K.m4325a(z);
        }
    }

    @TargetApi(11)
    /* renamed from: h */
    protected void m3821h() {
        if (f3725F) {
            try {
                ProgressBar progressBar = (ProgressBar) findViewById(getResources().getIdentifier("progress_circular", "id", "android"));
                progressBar.setScaleX(0.5f);
                progressBar.setScaleY(0.5f);
                progressBar.setVisibility(8);
            } catch (Throwable th) {
            }
        }
    }

    @TargetApi(14)
    /* renamed from: h */
    public void m3822h(boolean z) {
        if (Build.VERSION.SDK_INT >= 14 && this.f3731J != null) {
            this.f3731J.setHomeButtonEnabled(z);
        } else if (this.f3732K != null) {
            this.f3732K.setHomeButtonEnabled(z);
        }
    }

    /* renamed from: i */
    protected void m3823i() {
        View m3830o = m3830o();
        if (m3830o instanceof ViewGroup) {
            View m3795b = m3795b((ViewGroup) m3830o);
            if (m3795b instanceof ImageView) {
                m3790a(m3795b, this.f3745X);
            }
            m3830o.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC1114at(this, m3830o));
        }
    }

    /* renamed from: i */
    public void m3824i(boolean z) {
        try {
            if (f3725F) {
                setProgressBarIndeterminateVisibility(z);
            } else if (this.f3732K != null) {
                this.f3732K.setProgressVisible(z);
            }
        } catch (Throwable th) {
        }
    }

    @Override // android.app.Activity
    @TargetApi(11)
    public void invalidateOptionsMenu() {
        if (f3725F) {
            super.invalidateOptionsMenu();
        } else {
            this.f3750b = true;
        }
        if (this.f3732K != null) {
            this.f3732K.m4328c();
            this.f3732K.m4330d();
        }
    }

    @TargetApi(11)
    /* renamed from: j */
    public int m3825j() {
        int i = 0;
        if (this.f3731J != null) {
            i = this.f3731J.getHeight();
        } else if (this.f3732K != null) {
            i = this.f3732K.getHeight();
        }
        return i > 0 ? i : m3786a((Context) this);
    }

    /* renamed from: k */
    public int m3826k() {
        int identifier;
        View findViewById;
        int height;
        if (m3827l()) {
            return (!f3725F || (identifier = getResources().getIdentifier("split_action_bar", "id", "android")) == 0 || (findViewById = findViewById(identifier)) == null || (height = findViewById.getHeight()) <= 0) ? m3825j() : height;
        }
        return 0;
    }

    /* renamed from: l */
    public boolean m3827l() {
        if (f3725F) {
            return this.f3735N && m3798e(this);
        }
        if (this.f3732K != null) {
            return this.f3732K.m4327b();
        }
        return false;
    }

    /* renamed from: m */
    public boolean m3828m() {
        View decorView = getWindow().getDecorView();
        int width = decorView.getWidth();
        int height = decorView.getHeight();
        if (width <= 0 || height <= 0) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            width = displayMetrics.widthPixels;
            height = displayMetrics.heightPixels;
        }
        return width < Math.min(height, this.f3736O);
    }

    /* renamed from: n */
    protected void m3829n() {
        if (f3725F) {
            this.f3748a = new View(this);
            this.f3748a.setClickable(false);
            this.f3748a.setWillNotDraw(true);
            ((ViewGroup) this.f3730I.getParent()).addView(this.f3748a, -1, 0);
            ViewGroup.LayoutParams layoutParams = this.f3748a.getLayoutParams();
            if (layoutParams instanceof RelativeLayout.LayoutParams) {
                ((RelativeLayout.LayoutParams) layoutParams).addRule(12);
            } else {
                try {
                    layoutParams.getClass().getDeclaredField("gravity").setInt(layoutParams, 80);
                } catch (Throwable th) {
                }
            }
        }
    }

    /* renamed from: o */
    protected View m3830o() {
        int identifier;
        View findViewById;
        if (m3827l() && (identifier = getResources().getIdentifier("split_action_bar", "id", "android")) != 0 && (findViewById = findViewById(identifier)) != null && findViewById.getVisibility() == 0) {
            return findViewById;
        }
        int identifier2 = getResources().getIdentifier("action_bar_container", "id", "android");
        if (identifier2 != 0) {
            return findViewById(identifier2);
        }
        return null;
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (m3832q()) {
            m3813d(false);
        } else {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        f3728i = 0;
        f3729j = 0;
        if (f3725F && Build.VERSION.SDK_INT < 21) {
            m3823i();
        }
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        Field declaredField;
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.f3741T = this instanceof PlayerActivity ? -1 : defaultSharedPreferences.getInt("main_theme", 0);
        setTheme(m3799h(this.f3741T));
        Resources resources = getResources();
        Resources.Theme theme = getTheme();
        TypedValue typedValue = new TypedValue();
        theme.resolveAttribute(com.alensw.PicFolder.R.attr.colorBackground, typedValue, true);
        int color = resources.getColor(typedValue.resourceId);
        this.f3755g = color;
        this.f3742U = color;
        if (this.f3741T == -3 || this.f3741T == -2) {
            this.f3743V = defaultSharedPreferences.getInt("actionbar_color", this.f3743V);
        } else {
            theme.resolveAttribute(com.alensw.PicFolder.R.attr.colorActionBar, typedValue, true);
            this.f3743V = resources.getColor(typedValue.resourceId);
        }
        theme.resolveAttribute(com.alensw.PicFolder.R.attr.colorNavigateBar, typedValue, true);
        this.f3744W = resources.getColor(typedValue.resourceId);
        theme.resolveAttribute(R.attr.textColorPrimary, typedValue, true);
        this.f3746Y = resources.getColor(typedValue.resourceId);
        theme.resolveAttribute(com.alensw.PicFolder.R.attr.colorActionIcon, typedValue, true);
        this.f3745X = resources.getColor(typedValue.resourceId);
        this.f3736O = (int) (resources.getDisplayMetrics().density * 480.0f);
        if (Build.VERSION.SDK_INT >= 21) {
            try {
                int identifier = resources.getIdentifier("screen_toolbar", "layout", "android");
                int identifier2 = resources.getIdentifier("screen_action_bar", "layout", "android");
                if (identifier == 0 || identifier2 == 0) {
                    throw new RuntimeException("wrong id: " + identifier + ", " + identifier2);
                }
                TypedArray windowStyle = getWindow().getWindowStyle();
                int intValue = ((Integer) Class.forName("com.android.internal.R$styleable").getField("Window_windowActionBarFullscreenDecorLayout").get(null)).intValue();
                int resourceId = windowStyle.getResourceId(intValue, 0);
                if (resourceId != identifier) {
                    throw new RuntimeException("not material: " + resourceId + ", " + identifier);
                }
                Field declaredField2 = AssetManager.class.getDeclaredField("STYLE_NUM_ENTRIES");
                Field declaredField3 = AssetManager.class.getDeclaredField("STYLE_RESOURCE_ID");
                declaredField2.setAccessible(true);
                declaredField3.setAccessible(true);
                int intValue2 = (intValue * ((Integer) declaredField2.get(null)).intValue()) + ((Integer) declaredField3.get(null)).intValue();
                try {
                    declaredField = windowStyle.getClass().getDeclaredField("mData");
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e) {
                    declaredField = windowStyle.getClass().getSuperclass().getDeclaredField("mData");
                    declaredField.setAccessible(true);
                }
                ((int[]) declaredField.get(windowStyle))[intValue2] = identifier2;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        super.onCreate(bundle);
        ((QuickApp) getApplication()).m2050a((Activity) this);
        requestWindowFeature(5);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        if (!f3725F || Build.VERSION.SDK_INT >= 21) {
            return true;
        }
        m3823i();
        return true;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        ((QuickApp) getApplication()).m2053b(this);
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.home:
            case com.alensw.PicFolder.R.id.home /* 2131296307 */:
                onBackPressed();
                return true;
            default:
                return super.onOptionsItemSelected(menuItem);
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        ((QuickApp) getApplication()).m2061f(this);
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        if (this.f3732K != null) {
            this.f3732K.m4330d();
        }
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        if (Build.VERSION.SDK_INT < 21 && !(menu instanceof MenuC0693b) && this.f3750b) {
            this.f3750b = false;
            menu.clear();
            if (!onCreateOptionsMenu(menu)) {
                return false;
            }
        }
        if (this.f3732K != null) {
            this.f3732K.m4321a(menu);
        }
        return true;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        ((QuickApp) getApplication()).m2060e(this);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        ((QuickApp) getApplication()).m2056c(this);
    }

    @Override // android.app.Activity
    public void onStop() {
        ((QuickApp) getApplication()).m2058d(this);
        super.onStop();
    }

    @Override // android.app.Activity
    public void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        if (this.f3732K == null || this.f3732K == this.f3753e) {
            return;
        }
        this.f3732K.setTitle(charSequence);
    }

    /* renamed from: p */
    protected View m3831p() {
        View m3795b;
        if (f3725F) {
            View m3830o = m3830o();
            if (m3830o == null) {
                m3830o = getWindow().getDecorView();
            }
            if ((m3830o instanceof ViewGroup) && (m3795b = m3795b((ViewGroup) m3830o)) != null) {
                return m3795b;
            }
        }
        return null;
    }

    /* renamed from: q */
    public boolean m3832q() {
        return (this.f3751c == null && this.f3753e == null) ? false : true;
    }

    /* renamed from: r */
    protected void mo3833r() {
    }

    @Override // android.app.Activity
    @TargetApi(11)
    public void recreate() {
        if (Build.VERSION.SDK_INT >= 11) {
            super.recreate();
            return;
        }
        Intent intent = new Intent(getIntent());
        intent.setClass(this, getClass());
        intent.addFlags(67108864);
        startActivity(intent);
    }

    @TargetApi(16)
    /* renamed from: s */
    public boolean m3834s() {
        return ((m3835t() & 1024) == 0 && (getWindow().getAttributes().flags & 1024) == 0) ? false : true;
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        setContentView(getLayoutInflater().inflate(i, (ViewGroup) null));
    }

    @Override // android.app.Activity
    @TargetApi(14)
    public void setContentView(View view) {
        boolean z = Build.VERSION.SDK_INT == 19 && !(this instanceof ActivityC1147p);
        if (z) {
            C1113as c1113as = new C1113as(this, this);
            c1113as.addView(view, -1, -1);
            this.f3734M = true;
            this.f3730I = c1113as;
        } else {
            this.f3730I = view;
        }
        Window window = getWindow();
        if (f3725F) {
            if (this.f3734M) {
                window.requestFeature(9);
                window.requestFeature(10);
            }
            super.setContentView(this.f3730I);
            this.f3731J = getActionBar();
            if (this.f3741T == -3 || this.f3741T == -2) {
                this.f3731J.setBackgroundDrawable(new ColorDrawable(this.f3743V));
                if (Build.VERSION.SDK_INT >= 14) {
                    this.f3731J.setStackedBackgroundDrawable(new ColorDrawable(this.f3743V));
                    this.f3731J.setSplitBackgroundDrawable(new ColorDrawable(this.f3744W));
                }
                if (Build.VERSION.SDK_INT >= 21) {
                    window.setStatusBarColor(this.f3743V);
                }
            }
            m3829n();
            m3821h();
            m3789a(this, this.f3745X);
        } else {
            window.requestFeature(1);
            if (this.f3734M) {
                super.setContentView(this.f3730I);
            } else {
                LinearLayout linearLayout = new LinearLayout(this);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1, 1.0f);
                linearLayout.setOrientation(1);
                linearLayout.addView(this.f3730I, layoutParams);
                super.setContentView(linearLayout);
            }
            TitleBar titleBar = (TitleBar) getLayoutInflater().inflate(com.alensw.PicFolder.R.layout.title_bar, (ViewGroup) this.f3730I.getParent(), false);
            titleBar.setOnHomeClickListener(this.f3747Z);
            titleBar.setOnTitleClickListener(this.f3747Z);
            m3805a(titleBar);
        }
        if (z) {
            m3816e(false);
            getWindow().addFlags(67108864);
        }
    }

    /* renamed from: t */
    public int m3835t() {
        if (Build.VERSION.SDK_INT >= 11) {
            return getWindow().getDecorView().getSystemUiVisibility();
        }
        return 0;
    }

    /* renamed from: u */
    public void m3836u() {
        this.f3730I.removeCallbacks(this.f3749aa);
    }

    /* renamed from: v */
    public boolean m3837v() {
        boolean z = !mo2008a();
        mo1994a(z);
        return z;
    }
}
