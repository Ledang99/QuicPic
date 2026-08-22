package com.alensw.p038ui.view;

import android.view.MenuItem;
import android.view.View;
import android.widget.Toast;
import com.alensw.p023b.p030g.MenuC0693b;

/* renamed from: com.alensw.ui.view.bw */
/* loaded from: classes.dex */
class ViewOnLongClickListenerC1349bw implements View.OnLongClickListener {

    /* renamed from: a */
    final /* synthetic */ TitleBar f4672a;

    ViewOnLongClickListenerC1349bw(TitleBar titleBar) {
        this.f4672a = titleBar;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        MenuC0693b menuC0693b;
        if (!this.f4672a.m4330d()) {
            return false;
        }
        menuC0693b = this.f4672a.f4485m;
        MenuItem findItem = menuC0693b.findItem(view.getId());
        if (findItem == null) {
            return false;
        }
        int height = view.getRootView().getHeight();
        int height2 = this.f4672a.getHeight();
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        Toast makeText = Toast.makeText(view.getContext(), findItem.getTitle(), 0);
        makeText.setGravity((iArr[1] + height2 < height / 2 ? 48 : 80) | 3, iArr[0], height2);
        makeText.show();
        return true;
    }
}
