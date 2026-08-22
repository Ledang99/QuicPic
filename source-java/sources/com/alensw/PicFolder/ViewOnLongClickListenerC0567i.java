package com.alensw.PicFolder;

import android.view.View;
import android.widget.Toast;

/* renamed from: com.alensw.PicFolder.i */
/* loaded from: classes.dex */
class ViewOnLongClickListenerC0567i implements View.OnLongClickListener {

    /* renamed from: a */
    final /* synthetic */ CropActivity f2197a;

    ViewOnLongClickListenerC0567i(CropActivity cropActivity) {
        this.f2197a = cropActivity;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        CharSequence contentDescription = view.getContentDescription();
        if (contentDescription == null) {
            return false;
        }
        int height = view.getRootView().getHeight();
        int height2 = view.getHeight();
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        Toast makeText = Toast.makeText(view.getContext(), contentDescription, 0);
        makeText.setGravity((iArr[1] + height2 < height / 2 ? 48 : 80) | 3, iArr[0], height2);
        makeText.show();
        return true;
    }
}
