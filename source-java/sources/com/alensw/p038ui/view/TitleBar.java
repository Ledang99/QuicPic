package com.alensw.p038ui.view;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.alensw.PicFolder.R;
import com.alensw.p023b.p030g.MenuC0693b;
import com.p043b.p044a.C1387b;

@SuppressLint({"Instantiatable"})
/* loaded from: classes.dex */
public class TitleBar extends LinearLayout {

    /* renamed from: a */
    private final int f4473a;

    /* renamed from: b */
    private final int f4474b;

    /* renamed from: c */
    private final int f4475c;

    /* renamed from: d */
    private final int f4476d;

    /* renamed from: e */
    private boolean f4477e;

    /* renamed from: f */
    private ImageView f4478f;

    /* renamed from: g */
    private HomeButton f4479g;

    /* renamed from: h */
    private TitleView f4480h;

    /* renamed from: i */
    private TextView f4481i;

    /* renamed from: j */
    private ProgressBar f4482j;

    /* renamed from: k */
    private ActionLayout f4483k;

    /* renamed from: l */
    private LinearLayout f4484l;

    /* renamed from: m */
    private MenuC0693b f4485m;

    /* renamed from: n */
    private InterfaceC1355cb f4486n;

    /* renamed from: o */
    private final View.OnClickListener f4487o;

    /* renamed from: p */
    private final View.OnLongClickListener f4488p;

    /* renamed from: q */
    private final Runnable f4489q;

    public TitleBar(Context context) {
        this(context, null);
    }

    public TitleBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4487o = new ViewOnClickListenerC1348bv(this);
        this.f4488p = new ViewOnLongClickListenerC1349bw(this);
        this.f4489q = new RunnableC1352bz(this);
        Resources resources = getResources();
        Resources.Theme theme = context.getTheme();
        TypedValue typedValue = new TypedValue();
        theme.resolveAttribute(R.attr.colorActionIcon, typedValue, true);
        this.f4473a = resources.getColor(typedValue.resourceId);
        this.f4474b = resources.getDimensionPixelSize(R.dimen.button_width);
        this.f4475c = resources.getDimensionPixelSize(R.dimen.button_height);
        this.f4476d = (int) (resources.getDisplayMetrics().density * 480.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{android.R.attr.background}, android.R.attr.windowTitleBackgroundStyle, 0);
        setBackgroundDrawable(obtainStyledAttributes.getDrawable(0));
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    public View m4319a() {
        this.f4484l = new LinearLayout(getContext());
        this.f4484l.setBackgroundDrawable(getBackground());
        this.f4484l.setClickable(true);
        ((ViewGroup) getParent()).addView(this.f4484l, -1, this.f4475c);
        ViewGroup.LayoutParams layoutParams = this.f4484l.getLayoutParams();
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            ((RelativeLayout.LayoutParams) layoutParams).addRule(12);
        } else {
            try {
                layoutParams.getClass().getDeclaredField("gravity").setInt(layoutParams, 80);
            } catch (Throwable th) {
            }
        }
        m4332f();
        return this.f4484l;
    }

    /* renamed from: a */
    public View m4320a(int i) {
        View findViewById = findViewById(i);
        return findViewById == null ? this.f4483k.findViewById(i) : findViewById;
    }

    /* renamed from: a */
    public void m4321a(Menu menu) {
        for (int childCount = this.f4483k.getChildCount() - 2; childCount >= 0; childCount--) {
            View childAt = this.f4483k.getChildAt(childCount);
            MenuItem findItem = menu.findItem(childAt.getId());
            if (findItem != null) {
                findItem.setVisible(childAt.getVisibility() != 0);
            }
        }
        this.f4478f.setVisibility(menu.hasVisibleItems() ? 0 : 8);
    }

    /* renamed from: a */
    public void m4322a(MenuItem menuItem, int i) {
        int itemId = menuItem.getItemId();
        this.f4483k.removeView(this.f4483k.findViewById(itemId));
        if (i == 0) {
            return;
        }
        Context context = getContext();
        int i2 = this.f4474b;
        ImageView imageView = (ImageView) View.inflate(context, R.layout.action_button, null);
        imageView.setId(itemId);
        imageView.setImageDrawable(menuItem.getIcon());
        imageView.setOnClickListener(this.f4487o);
        imageView.setOnLongClickListener(this.f4488p);
        imageView.setTag(Integer.valueOf(i));
        imageView.setVisibility(menuItem.isVisible() ? 0 : 8);
        this.f4483k.addView(imageView, this.f4483k.getChildCount() - 1, new LinearLayout.LayoutParams(i2, this.f4475c));
        m4332f();
    }

    /* renamed from: a */
    public void m4323a(View view) {
        if (m4330d() && this.f4485m.hasVisibleItems()) {
            if (view == null) {
                view = this.f4478f.getVisibility() == 0 ? this.f4478f : this.f4483k;
            }
            this.f4485m.m2747a(view);
        }
    }

    /* renamed from: a */
    public void m4324a(View view, ViewGroup.LayoutParams layoutParams) {
        addView(view, 2, layoutParams);
        m4332f();
    }

    /* renamed from: a */
    public void m4325a(boolean z) {
        this.f4479g.m4215a(z);
    }

    /* renamed from: b */
    public void m4326b(boolean z) {
        this.f4479g.m4216b(z);
    }

    /* renamed from: b */
    public boolean m4327b() {
        return this.f4484l != null && this.f4477e;
    }

    /* renamed from: c */
    public void m4328c() {
        for (int childCount = this.f4483k.getChildCount() - 2; childCount >= 0; childCount--) {
            this.f4483k.removeViewAt(childCount);
        }
        if (this.f4485m != null) {
            this.f4485m.clear();
            this.f4485m = null;
        }
        m4332f();
    }

    /* renamed from: c */
    public void m4329c(boolean z) {
        this.f4480h.m4333a(z);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0020  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean m4330d() {
        boolean z;
        Context context = getContext();
        if (this.f4485m == null) {
            this.f4485m = new MenuC0693b(context);
            if (this.f4486n != null) {
                z = this.f4486n.mo3839a(this, this.f4485m);
            } else if (context instanceof Activity) {
                z = ((Activity) context).onCreateOptionsMenu(this.f4485m);
            } else {
                this.f4485m = null;
            }
            if (this.f4485m != null) {
                return z;
            }
            if (this.f4486n != null) {
                return this.f4486n.mo3840b(this, this.f4485m);
            }
            if (context instanceof Activity) {
                return ((Activity) context).onPrepareOptionsMenu(this.f4485m);
            }
            return false;
        }
        z = false;
        if (this.f4485m != null) {
        }
    }

    /* renamed from: e */
    protected void m4331e() {
        int width = getWidth();
        this.f4477e = this.f4484l != null && width < this.f4476d;
        int i = this.f4477e ? width : width / 2;
        int childCount = this.f4483k.getChildCount() - 1;
        int i2 = 0;
        int i3 = i;
        while (i2 < childCount) {
            View childAt = this.f4483k.getChildAt(i2);
            Object tag = childAt.getTag();
            i2++;
            i3 = ((tag != null ? ((Integer) tag).intValue() : 0) & 2) != 0 ? i3 - childAt.getMeasuredWidth() : i3;
        }
        if (this.f4478f.getVisibility() != 8) {
            i3 -= this.f4478f.getMeasuredWidth();
        }
        int i4 = 0;
        while (i4 < childCount) {
            View childAt2 = this.f4483k.getChildAt(i4);
            Object tag2 = childAt2.getTag();
            boolean z = ((tag2 != null ? ((Integer) tag2).intValue() : 0) & 2) != 0 || i3 >= childAt2.getMeasuredWidth();
            childAt2.setVisibility(z ? 0 : 8);
            i4++;
            i3 = z ? i3 - childAt2.getMeasuredWidth() : i3;
        }
        ViewGroup viewGroup = (ViewGroup) this.f4483k.getParent();
        LinearLayout linearLayout = this.f4477e ? this.f4484l : this;
        if (viewGroup != linearLayout) {
            if (viewGroup != null) {
                viewGroup.removeView(this.f4483k);
            }
            linearLayout.addView(this.f4483k, new LinearLayout.LayoutParams(this.f4477e ? -1 : -2, this.f4475c));
        }
        if (this.f4484l != null) {
            this.f4484l.setVisibility(this.f4477e ? getVisibility() : 8);
        }
    }

    /* renamed from: f */
    protected void m4332f() {
        post(this.f4489q);
    }

    public int getButtonHeight() {
        return this.f4475c;
    }

    public int getSplitBarHeight() {
        if (this.f4484l == null || !this.f4477e) {
            return 0;
        }
        return Math.max(this.f4484l.getHeight(), this.f4475c);
    }

    public int getTitleColor() {
        return (this.f4473a & 16777215) | (-16777216);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        Resources resources = getResources();
        this.f4479g = (HomeButton) findViewById(R.id.home);
        this.f4479g.setId(android.R.id.home);
        this.f4479g.m4214a(this.f4473a);
        int titleColor = getTitleColor();
        this.f4480h = (TitleView) findViewById(android.R.id.title);
        this.f4480h.setTextColor(titleColor);
        this.f4481i = (TextView) findViewById(R.id.subtitle);
        this.f4481i.setTextColor((titleColor & 16777215) | (-1073741824));
        this.f4482j = (ProgressBar) findViewById(R.id.circular);
        this.f4483k = (ActionLayout) findViewById(R.id.container);
        this.f4478f = (ImageView) this.f4483k.findViewById(R.id.menu);
        this.f4478f.setImageDrawable(C1387b.m4498a(resources, R.raw.ic_menu_overflow, this.f4473a));
        this.f4478f.setOnClickListener(new ViewOnClickListenerC1350bx(this));
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(this.f4475c, 1073741824));
        setMeasuredDimension(getMeasuredWidth(), this.f4475c);
    }

    @Override // android.view.View
    @TargetApi(11)
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m4331e();
        post(new RunnableC1351by(this));
    }

    @Override // android.view.View
    public void setAnimation(Animation animation) {
        super.setAnimation(animation);
        if (this.f4484l == null || !this.f4477e) {
            return;
        }
        this.f4484l.setAnimation(animation);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f4484l != null) {
            this.f4484l.setBackgroundDrawable(drawable);
        }
    }

    public void setHomeButtonEnabled(boolean z) {
        this.f4479g.setEnabled(z);
    }

    public void setMenuCallback(InterfaceC1355cb interfaceC1355cb) {
        this.f4486n = interfaceC1355cb;
    }

    public void setOnHomeClickListener(View.OnClickListener onClickListener) {
        this.f4479g.setOnClickListener(onClickListener);
    }

    public void setOnTitleClickListener(View.OnClickListener onClickListener) {
        ((View) this.f4480h.getParent()).setOnClickListener(new ViewOnClickListenerC1354ca(this, onClickListener));
    }

    public void setProgressVisible(boolean z) {
        this.f4482j.setVisibility(z ? 0 : 8);
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f4481i.setText(charSequence);
        this.f4481i.setVisibility((charSequence == null || charSequence.length() <= 0) ? 8 : 0);
    }

    public void setTitle(CharSequence charSequence) {
        this.f4480h.setText(charSequence);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (this.f4484l == null || !this.f4477e) {
            return;
        }
        this.f4484l.setVisibility(i);
    }
}
