package com.alensw.p038ui.p039a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.List;

/* renamed from: com.alensw.ui.a.o */
/* loaded from: classes.dex */
final class C1080o extends ArrayAdapter {
    C1080o(Context context, int i, List list) {
        super(context, i, list);
    }

    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        View dropDownView = super.getDropDownView(i, view, viewGroup);
        if (dropDownView instanceof TextView) {
            ((TextView) dropDownView).setSingleLine(false);
        }
        return dropDownView;
    }
}
