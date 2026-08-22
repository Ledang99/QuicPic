package com.alensw.p038ui.view;

import android.annotation.TargetApi;
import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.FrameLayout;
import com.alensw.PicFolder.R;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.activity.C1122ba;

/* loaded from: classes.dex */
public class ContainerLayout extends FrameLayout {

    /* renamed from: b */
    public static final boolean f4338b;

    /* renamed from: a */
    private InterfaceC1376u f4339a;

    /* renamed from: c */
    private boolean f4340c;

    /* renamed from: d */
    private final int f4341d;

    /* renamed from: e */
    private final int f4342e;

    /* renamed from: f */
    private final int f4343f;

    /* renamed from: g */
    private final int f4344g;

    /* renamed from: h */
    private final Rect f4345h;

    /* renamed from: i */
    private final Paint f4346i;

    static {
        f4338b = Build.VERSION.SDK_INT == 19;
    }

    public ContainerLayout(Context context) {
        this(context, null);
    }

    @TargetApi(11)
    public ContainerLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4345h = new Rect();
        this.f4346i = new Paint(1);
        if (!f4338b) {
            this.f4341d = 0;
            this.f4342e = 0;
            this.f4343f = 0;
            this.f4344g = 0;
            this.f4340c = false;
            return;
        }
        Resources resources = context.getResources();
        Resources.Theme theme = context.getTheme();
        TypedValue typedValue = new TypedValue();
        theme.resolveAttribute(R.attr.colorNavigateBar, typedValue, true);
        this.f4341d = resources.getColor(typedValue.resourceId);
        theme.resolveAttribute(R.attr.colorStatusBar, typedValue, true);
        int color = resources.getColor(typedValue.resourceId);
        if (context instanceof ActivityC1109ao) {
            ActivityC1109ao activityC1109ao = (ActivityC1109ao) context;
            this.f4342e = activityC1109ao.f3741T == -3 || activityC1109ao.f3741T == -2 ? activityC1109ao.f3743V : color;
        } else if (context instanceof C1122ba) {
            C1122ba c1122ba = (C1122ba) context;
            this.f4342e = c1122ba.f3777a == -3 || c1122ba.f3777a == -2 ? c1122ba.f3778b : color;
        } else {
            this.f4342e = color;
        }
        int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
        int identifier2 = resources.getIdentifier("navigation_bar_size", "dimen", "android");
        this.f4344g = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
        this.f4343f = identifier2 != 0 ? resources.getDimensionPixelSize(identifier2) : 0;
        this.f4340c = (getSystemUiVisibility() & 4) == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (f4338b && this.f4340c) {
            Context context = getContext();
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                int i = activity.getWindow().getAttributes().flags;
                boolean z = (134217728 & i) != 0;
                boolean z2 = (i & 67108864) != 0;
                if (z || z2) {
                    Rect rect = this.f4345h;
                    boolean z3 = rect.right > 0;
                    ActionBar actionBar = activity.getActionBar();
                    int height = actionBar != null ? actionBar.getHeight() : 0;
                    int width = getWidth() - (z3 ? this.f4343f : 0);
                    int height2 = getHeight();
                    if (z2) {
                        int i2 = (this.f4344g == 0 || rect.top <= height) ? rect.top - height : this.f4344g;
                        if (i2 > 0) {
                            this.f4346i.setColor(this.f4342e);
                            canvas.drawRect(0.0f, 0.0f, width, i2, this.f4346i);
                        }
                    }
                    if (!z || z3) {
                        return;
                    }
                    if (activity instanceof ActivityC1109ao) {
                        height = ((ActivityC1109ao) activity).m3826k();
                    } else if (!ActivityC1109ao.m3798e(activity)) {
                        height = 0;
                    }
                    if ((this.f4343f != 0 ? this.f4343f : z3 ? rect.right : rect.bottom - height) > 0) {
                        this.f4346i.setColor(this.f4341d);
                        canvas.drawRect(0.0f, height2 - r0, width, height2, this.f4346i);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        this.f4345h.set(rect);
        if (this.f4339a != null) {
            this.f4339a.mo4048a(rect);
        }
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i) {
        super.onWindowSystemUiVisibilityChanged(i);
        boolean z = f4338b && (i & 4) == 0;
        if (this.f4340c != z) {
            this.f4340c = z;
            invalidate();
        }
    }

    public void setOnInsetsListener(InterfaceC1376u interfaceC1376u) {
        this.f4339a = interfaceC1376u;
    }
}
