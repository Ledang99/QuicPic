package com.alensw.p038ui.activity;

import android.content.Context;
import android.graphics.Rect;
import com.alensw.p038ui.view.ContainerLayout;

/* renamed from: com.alensw.ui.activity.bd */
/* loaded from: classes.dex */
class C1125bd extends ContainerLayout {

    /* renamed from: a */
    final /* synthetic */ C1122ba f3789a;

    /* renamed from: c */
    private final Rect f3790c;

    /* renamed from: d */
    private final Rect f3791d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1125bd(C1122ba c1122ba, Context context) {
        super(context);
        this.f3789a = c1122ba;
        this.f3790c = new Rect();
        this.f3791d = new Rect();
    }

    @Override // com.alensw.p038ui.view.ContainerLayout, android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (!this.f3790c.equals(rect)) {
            this.f3790c.set(rect);
            this.f3791d.set(rect);
            setPadding(this.f3791d.left, this.f3791d.top, this.f3791d.right, this.f3791d.bottom);
        }
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f3791d.set(this.f3790c);
        setPadding(this.f3791d.left, this.f3791d.top, this.f3791d.right, this.f3791d.bottom);
    }
}
