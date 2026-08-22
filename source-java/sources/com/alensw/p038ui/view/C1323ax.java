package com.alensw.p038ui.view;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.alensw.PicFolder.R;

/* renamed from: com.alensw.ui.view.ax */
/* loaded from: classes.dex */
class C1323ax extends BaseAdapter {

    /* renamed from: a */
    final /* synthetic */ View.OnClickListener f4566a;

    /* renamed from: b */
    final /* synthetic */ PasswordView f4567b;

    C1323ax(PasswordView passwordView, View.OnClickListener onClickListener) {
        this.f4567b = passwordView;
        this.f4566a = onClickListener;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return PasswordView.f4447a.length;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return Character.valueOf(PasswordView.f4447a[i]);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return PasswordView.f4447a[i];
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView;
        if (view == null) {
            textView = (TextView) View.inflate(this.f4567b.getContext(), R.layout.pin_code, null);
            textView.setOnClickListener(this.f4566a);
        } else {
            textView = (TextView) view;
        }
        char itemId = (char) getItemId(i);
        textView.setText(Character.toString(itemId));
        textView.setTag(Character.valueOf(itemId));
        return textView;
    }
}
