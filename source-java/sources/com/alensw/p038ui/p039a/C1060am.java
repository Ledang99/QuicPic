package com.alensw.p038ui.p039a;

import android.R;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.io.File;

/* renamed from: com.alensw.ui.a.am */
/* loaded from: classes.dex */
class C1060am extends BaseAdapter {

    /* renamed from: a */
    final /* synthetic */ AlertDialogC1052ae f3640a;

    C1060am(AlertDialogC1052ae alertDialogC1052ae) {
        this.f3640a = alertDialogC1052ae;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f3640a.f3628k.f2424h.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f3640a.f3628k.f2424h.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView;
        if (view == null) {
            textView = new TextView(this.f3640a.f3673a, null, R.attr.textAppearanceMedium);
            textView.setCompoundDrawablePadding(this.f3640a.f3627j);
            textView.setEllipsize(TextUtils.TruncateAt.END);
            textView.setGravity(19);
            textView.setMinimumHeight(this.f3640a.f3626i);
            textView.setPadding(this.f3640a.f3627j, this.f3640a.f3627j, this.f3640a.f3627j, this.f3640a.f3627j);
            textView.setSingleLine(true);
            textView.setTextSize(18.0f);
        } else {
            textView = (TextView) view;
        }
        File file = (File) this.f3640a.f3628k.f2424h.get(i);
        textView.setTextColor((file.canWrite() ? -16777216 : Integer.MIN_VALUE) | (16777215 & textView.getTextColors().getDefaultColor()));
        textView.setText(file == this.f3640a.f3629l ? ".." : file.getName());
        textView.setCompoundDrawablesWithIntrinsicBounds(this.f3640a.f3622e, (Drawable) null, (Drawable) null, (Drawable) null);
        return textView;
    }
}
