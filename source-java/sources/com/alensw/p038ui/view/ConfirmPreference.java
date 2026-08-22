package com.alensw.p038ui.view;

import android.R;
import android.app.AlertDialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import com.alensw.p038ui.p039a.C1071f;

/* loaded from: classes.dex */
public class ConfirmPreference extends DialogPreference {

    /* renamed from: a */
    public Runnable f4337a;

    public ConfirmPreference(Context context) {
        this(context, null);
    }

    public ConfirmPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ConfirmPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.preference.DialogPreference
    protected void showDialog(Bundle bundle) {
        Context context = getContext();
        AlertDialog m3734a = C1071f.m3734a(context, 0, (Object) getDialogMessage());
        if (m3734a == null) {
            return;
        }
        Drawable dialogIcon = getDialogIcon();
        if (dialogIcon != null) {
            m3734a.setIcon(dialogIcon);
        }
        m3734a.setTitle(getDialogTitle());
        m3734a.setButton(-1, context.getString(R.string.yes), new DialogInterfaceOnClickListenerC1374s(this));
        m3734a.setButton(-2, context.getString(R.string.no), new DialogInterfaceOnClickListenerC1375t(this));
        C1071f.m3741a(m3734a);
    }
}
