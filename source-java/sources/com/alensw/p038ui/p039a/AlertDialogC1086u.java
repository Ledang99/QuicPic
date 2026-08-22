package com.alensw.p038ui.p039a;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.alensw.PicFolder.R;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.p042d.C1294d;

/* renamed from: com.alensw.ui.a.u */
/* loaded from: classes.dex */
public class AlertDialogC1086u extends AlertDialog {

    /* renamed from: a */
    protected final Context f3673a;

    /* renamed from: b */
    protected View f3674b;

    protected AlertDialogC1086u(Context context) {
        super(context, m3743a(context));
        super.setIcon(0);
        this.f3673a = context;
    }

    /* renamed from: a */
    public static int m3743a(Context context) {
        if (Build.VERSION.SDK_INT < 11) {
            int i = PreferenceManager.getDefaultSharedPreferences(context).getInt("main_theme", 0);
            return i == 1 || i == 3 || i == -2 ? R.style.Theme_Dialog_Light : R.style.Theme_Dialog_Dark;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(android.R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    /* renamed from: a */
    public static AlertDialogC1086u m3744a(Context context, int i, int i2) {
        AlertDialogC1086u alertDialogC1086u = new AlertDialogC1086u(context);
        if (i != 0) {
            alertDialogC1086u.setTitle(i);
        }
        if (i2 != 0) {
            alertDialogC1086u.m3748a(i2);
        }
        return alertDialogC1086u;
    }

    /* renamed from: a */
    public static void m3745a(Context context, Dialog dialog) {
        ListView listView;
        if (Build.VERSION.SDK_INT < 21) {
            Resources resources = context.getResources();
            int m3794b = ActivityC1109ao.m3794b(context, android.R.attr.textColorPrimary);
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.button_padding);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.button_height);
            try {
                Window window = dialog.getWindow();
                int identifier = resources.getIdentifier("alertTitle", "id", "android");
                View findViewById = identifier != 0 ? window.findViewById(identifier) : null;
                if (findViewById instanceof TextView) {
                    ((TextView) findViewById).setTextColor(m3794b);
                }
                int identifier2 = resources.getIdentifier("titleDivider", "id", "android");
                View findViewById2 = identifier2 != 0 ? window.findViewById(identifier2) : null;
                if (findViewById2 != null) {
                    findViewById2.setVisibility(4);
                }
                if ((dialog instanceof AlertDialog) && (listView = ((AlertDialog) dialog).getListView()) != null) {
                    listView.setDivider(null);
                }
                ViewGroup viewGroup = (ViewGroup) window.findViewById(resources.getIdentifier("buttonPanel", "id", "android"));
                LinearLayout linearLayout = (LinearLayout) viewGroup.getChildAt(0);
                if (Build.VERSION.SDK_INT >= 11) {
                    linearLayout.setPadding((dimensionPixelSize * 3) / 2, dimensionPixelSize, (dimensionPixelSize * 3) / 2, dimensionPixelSize);
                    linearLayout.setShowDividers(0);
                    if (viewGroup instanceof LinearLayout) {
                        ((LinearLayout) viewGroup).setShowDividers(0);
                    }
                } else {
                    dialog.getWindow().setBackgroundDrawable(C1294d.m4207a(ActivityC1109ao.m3794b(context, R.attr.colorDialog), (dimensionPixelSize * 3) / 4));
                    viewGroup.setMinimumHeight(dimensionPixelSize2);
                    ViewGroup viewGroup2 = (ViewGroup) viewGroup.getParent();
                    viewGroup2.setPadding(0, 0, 0, 0);
                    for (int childCount = viewGroup2.getChildCount() - 1; childCount >= 0; childCount--) {
                        viewGroup2.getChildAt(childCount).setBackgroundDrawable(null);
                    }
                    View findViewById3 = window.findViewById(android.R.id.icon);
                    if (findViewById3 != null) {
                        findViewById3.setVisibility(8);
                    }
                    m3746a((ViewGroup) window.getDecorView(), m3794b);
                }
                int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.button_width) + (dimensionPixelSize * 2);
                for (int childCount2 = linearLayout.getChildCount() - 1; childCount2 >= 0; childCount2--) {
                    View childAt = linearLayout.getChildAt(childCount2);
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
                    layoutParams.width = -2;
                    layoutParams.height = -2;
                    layoutParams.weight = 0.0f;
                    if (childAt instanceof Button) {
                        childAt.setMinimumWidth(dimensionPixelSize3);
                        childAt.setMinimumHeight(dimensionPixelSize2);
                        if (Build.VERSION.SDK_INT < 11) {
                            childAt.setBackgroundResource(R.drawable.item_background);
                        }
                    }
                }
                View findViewById4 = linearLayout.findViewById(android.R.id.button3);
                if (findViewById4 != null) {
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) findViewById4.getLayoutParams();
                    linearLayout.removeView(findViewById4);
                    linearLayout.addView(findViewById4, 0, layoutParams2);
                    linearLayout.addView(new View(context), 1, new LinearLayout.LayoutParams(1, 1, 1.0f));
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    /* renamed from: a */
    public static void m3746a(ViewGroup viewGroup, int i) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt instanceof ViewGroup) {
                m3746a((ViewGroup) childAt, i);
            } else if (childAt instanceof EditText) {
                m3747a((EditText) childAt);
            } else if (childAt instanceof TextView) {
                ((TextView) childAt).setTextColor(i);
            }
        }
    }

    /* renamed from: a */
    public static void m3747a(EditText editText) {
        editText.setOnLongClickListener(new ViewOnLongClickListenerC1087v());
    }

    /* renamed from: a */
    public void m3748a(int i) {
        setView(View.inflate(this.f3673a, i, null));
    }

    @Override // android.app.Dialog
    public View findViewById(int i) {
        View findViewById;
        return (this.f3674b == null || (findViewById = this.f3674b.findViewById(i)) == null) ? super.findViewById(i) : findViewById;
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT < 21) {
            m3745a(this.f3673a, this);
        }
    }

    @Override // android.app.AlertDialog
    public void setView(View view) {
        this.f3674b = view;
        super.setView(this.f3674b);
    }
}
