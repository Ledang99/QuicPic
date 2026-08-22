package com.alensw.p038ui.view;

import android.view.View;
import java.io.File;

/* renamed from: com.alensw.ui.view.az */
/* loaded from: classes.dex */
class ViewOnClickListenerC1325az implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ PathBar f4568a;

    ViewOnClickListenerC1325az(PathBar pathBar) {
        this.f4568a = pathBar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        View.OnClickListener onClickListener;
        View.OnClickListener onClickListener2;
        Object tag = view.getTag();
        if (tag != null) {
            this.f4568a.setPath((File) tag);
            onClickListener = this.f4568a.f4453c;
            if (onClickListener != null) {
                onClickListener2 = this.f4568a.f4453c;
                onClickListener2.onClick(view);
            }
        }
    }
}
