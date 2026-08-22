package android.support.p009a.p010a;

import android.R;
import android.app.ActionBar;
import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

/* renamed from: android.support.a.a.k */
/* loaded from: classes.dex */
public class C0168k {

    /* renamed from: a */
    private static final int[] f758a = {R.attr.homeAsUpIndicator};

    /* renamed from: a */
    public static C0169l m412a(C0169l c0169l, Activity activity, int i) {
        if (c0169l == null) {
            c0169l = new C0169l(activity);
        }
        if (c0169l.f759a != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                c0169l.f760b.invoke(actionBar, Integer.valueOf(i));
                if (Build.VERSION.SDK_INT <= 19) {
                    actionBar.setSubtitle(actionBar.getSubtitle());
                }
            } catch (Exception e) {
                Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set content description via JB-MR2 API", e);
            }
        }
        return c0169l;
    }

    /* renamed from: a */
    public static C0169l m413a(C0169l c0169l, Activity activity, Drawable drawable, int i) {
        if (c0169l == null) {
            c0169l = new C0169l(activity);
        }
        if (c0169l.f759a != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                c0169l.f759a.invoke(actionBar, drawable);
                c0169l.f760b.invoke(actionBar, Integer.valueOf(i));
            } catch (Exception e) {
                Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set home-as-up indicator via JB-MR2 API", e);
            }
        } else if (c0169l.f761c != null) {
            c0169l.f761c.setImageDrawable(drawable);
        } else {
            Log.w("ActionBarDrawerToggleHoneycomb", "Couldn't set home-as-up indicator");
        }
        return c0169l;
    }

    /* renamed from: a */
    public static ImageView m414a(Activity activity, View view) {
        if (view == null) {
            view = activity.findViewById(R.id.home);
        }
        if (view != null) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup.getChildCount() == 2) {
                View childAt = viewGroup.getChildAt(0);
                View childAt2 = viewGroup.getChildAt(1);
                if (childAt.getId() != 16908332) {
                    childAt2 = childAt;
                }
                if (childAt2 instanceof ImageView) {
                    return (ImageView) childAt2;
                }
            }
        }
        int identifier = activity.getResources().getIdentifier("up", "id", "android");
        View findViewById = identifier != 0 ? activity.findViewById(identifier) : null;
        if (findViewById instanceof ImageView) {
            return (ImageView) findViewById;
        }
        return null;
    }
}
