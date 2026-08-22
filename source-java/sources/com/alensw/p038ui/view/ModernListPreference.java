package com.alensw.p038ui.view;

import android.R;
import android.app.AlertDialog;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.preference.ListPreference;
import android.util.AttributeSet;
import android.widget.CheckedTextView;
import com.alensw.p023b.p030g.C0692a;
import com.alensw.p038ui.activity.ActivityC1109ao;

/* loaded from: classes.dex */
public class ModernListPreference extends ListPreference {
    public ModernListPreference(Context context) {
        super(context, null);
    }

    public ModernListPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ModernListPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public static void m4300a(ListPreference listPreference, boolean z) {
        if (Build.VERSION.SDK_INT < 21) {
            Handler handler = new Handler(Looper.getMainLooper());
            handler.postDelayed(new RunnableC1317ar(listPreference, z, handler), 16L);
        }
    }

    /* renamed from: a */
    public static void m4301a(CheckedTextView checkedTextView, int i, int i2, boolean z) {
        checkedTextView.setCheckMarkDrawable(C0692a.m2731a(checkedTextView.getResources(), i, i2, !z));
        if (Build.VERSION.SDK_INT < 11) {
            checkedTextView.setTextColor(ActivityC1109ao.m3794b(checkedTextView.getContext(), R.attr.textColorPrimary));
            checkedTextView.setTextSize(2, 18.0f);
        }
    }

    @Override // android.preference.ListPreference, android.preference.DialogPreference
    protected void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        super.onPrepareDialogBuilder(builder);
        m4300a(this, false);
    }
}
