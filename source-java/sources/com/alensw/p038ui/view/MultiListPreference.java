package com.alensw.p038ui.view;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* loaded from: classes.dex */
public class MultiListPreference extends ModernListPreference {

    /* renamed from: a */
    private boolean f4444a;

    /* renamed from: b */
    private int f4445b;

    /* renamed from: c */
    private final boolean[] f4446c;

    public MultiListPreference(Context context) {
        this(context, null);
    }

    public MultiListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MultiListPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f4446c = new boolean[getEntries().length];
    }

    /* renamed from: a */
    public void m4303a(int i) {
        boolean z = this.f4445b != i;
        if (z || !this.f4444a) {
            this.f4445b = i;
            this.f4444a = true;
            persistInt(i);
            if (z) {
                notifyChanged();
            }
            CharSequence[] entries = getEntries();
            StringBuilder sb = new StringBuilder(128);
            for (int i2 = 0; i2 < this.f4446c.length; i2++) {
                if ((this.f4445b & (1 << i2)) != 0) {
                    if (sb.length() > 0) {
                        sb.append(", ");
                    }
                    sb.append(entries[i2]);
                }
            }
            setSummary(sb.toString());
        }
    }

    @Override // android.preference.ListPreference, android.preference.DialogPreference
    protected void onDialogClosed(boolean z) {
        int i = 0;
        for (int i2 = 0; i2 < this.f4446c.length; i2++) {
            if (this.f4446c[i2]) {
                i |= 1 << i2;
            }
        }
        if (z && this.f4445b != i && callChangeListener(Integer.valueOf(i))) {
            m4303a(i);
        }
    }

    @Override // android.preference.ListPreference, android.preference.Preference
    protected Object onGetDefaultValue(TypedArray typedArray, int i) {
        return Integer.valueOf(typedArray.getInt(i, 0));
    }

    @Override // com.alensw.p038ui.view.ModernListPreference, android.preference.ListPreference, android.preference.DialogPreference
    protected void onPrepareDialogBuilder(AlertDialog.Builder builder) {
        for (int i = 0; i < this.f4446c.length; i++) {
            this.f4446c[i] = (this.f4445b & (1 << i)) != 0;
        }
        builder.setMultiChoiceItems(getEntries(), this.f4446c, new DialogInterfaceOnMultiChoiceClickListenerC1319at(this));
        m4300a(this, true);
    }

    @Override // android.preference.ListPreference, android.preference.Preference
    protected void onSetInitialValue(boolean z, Object obj) {
        m4303a(z ? getPersistedInt(this.f4445b) : ((Integer) obj).intValue());
    }
}
