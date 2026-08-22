package com.alensw.p038ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.p009a.p010a.C0170m;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.alensw.PicFolder.R;
import com.p043b.p044a.C1387b;

@SuppressLint({"Instantiatable"})
/* loaded from: classes.dex */
class HomeButton extends ImageView {

    /* renamed from: a */
    private int f4347a;

    /* renamed from: b */
    private int f4348b;

    /* renamed from: c */
    private boolean f4349c;

    /* renamed from: d */
    private boolean f4350d;

    /* renamed from: e */
    private final C0170m f4351e;

    public HomeButton(Context context) {
        this(context, null);
    }

    public HomeButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4348b = getResources().getDimensionPixelSize(R.dimen.button_padding);
        this.f4351e = new C0170m(context);
    }

    /* renamed from: a */
    public void m4214a(int i) {
        this.f4347a = i;
        this.f4351e.m416a(i);
    }

    /* renamed from: a */
    public void m4215a(boolean z) {
        this.f4349c = z;
        if (this.f4350d) {
            return;
        }
        this.f4351e.m419b(this.f4349c ? 1.0f : 0.0f);
        super.setImageDrawable(this.f4351e);
    }

    /* renamed from: b */
    public void m4216b(boolean z) {
        if (z) {
            super.setImageDrawable(C1387b.m4498a(getResources(), R.raw.ic_menu_done, this.f4347a));
            super.setPadding(this.f4348b, this.f4348b, this.f4348b, this.f4348b);
        } else {
            super.setImageDrawable(this.f4351e);
            super.setPadding(0, 0, 0, 0);
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.f4350d = drawable != null;
        if (drawable instanceof C0170m) {
            ((C0170m) drawable).m416a(this.f4347a);
        } else if (drawable == null) {
            this.f4351e.m419b(this.f4349c ? 1.0f : 0.0f);
            drawable = this.f4351e;
        }
        super.setImageDrawable(drawable);
    }
}
