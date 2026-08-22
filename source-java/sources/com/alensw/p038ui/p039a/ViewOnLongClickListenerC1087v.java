package com.alensw.p038ui.p039a;

import android.R;
import android.view.View;
import android.widget.EditText;
import com.alensw.p023b.p030g.MenuC0693b;

/* renamed from: com.alensw.ui.a.v */
/* loaded from: classes.dex */
final class ViewOnLongClickListenerC1087v implements View.OnLongClickListener {
    ViewOnLongClickListenerC1087v() {
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        EditText editText = (EditText) view;
        if ((editText.getInputType() & 128) == 0) {
            MenuItemOnMenuItemClickListenerC1088w menuItemOnMenuItemClickListenerC1088w = new MenuItemOnMenuItemClickListenerC1088w(this, editText);
            MenuC0693b menuC0693b = new MenuC0693b(editText.getContext());
            menuC0693b.add(0, R.id.copy, 0, R.string.copy);
            menuC0693b.add(0, R.id.cut, 0, R.string.cut);
            menuC0693b.add(0, R.id.paste, 0, R.string.paste);
            menuC0693b.add(0, R.id.selectAll, 0, R.string.selectAll);
            for (int size = menuC0693b.size() - 1; size >= 0; size--) {
                menuC0693b.getItem(size).setOnMenuItemClickListener(menuItemOnMenuItemClickListenerC1088w);
            }
            menuC0693b.m2747a(editText);
        }
        return true;
    }
}
