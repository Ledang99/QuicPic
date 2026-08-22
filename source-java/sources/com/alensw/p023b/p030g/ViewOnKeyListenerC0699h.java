package com.alensw.p023b.p030g;

import android.view.KeyEvent;
import android.view.View;
import android.widget.PopupWindow;

/* renamed from: com.alensw.b.g.h */
/* loaded from: classes.dex */
final class ViewOnKeyListenerC0699h implements View.OnKeyListener {

    /* renamed from: a */
    final /* synthetic */ PopupWindow f2645a;

    ViewOnKeyListenerC0699h(PopupWindow popupWindow) {
        this.f2645a = popupWindow;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        this.f2645a.dismiss();
        return true;
    }
}
