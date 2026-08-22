package com.alensw.p038ui.activity;

import android.content.Context;
import android.graphics.Rect;
import com.alensw.p038ui.view.ContainerLayout;

/* renamed from: com.alensw.ui.activity.as */
/* loaded from: classes.dex */
class C1113as extends ContainerLayout {

    /* renamed from: a */
    final /* synthetic */ ActivityC1109ao f3761a;

    /* renamed from: c */
    private final Rect f3762c;

    /* renamed from: d */
    private final Rect f3763d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1113as(ActivityC1109ao activityC1109ao, Context context) {
        super(context);
        this.f3761a = activityC1109ao;
        this.f3762c = new Rect();
        this.f3763d = new Rect();
    }

    @Override // com.alensw.p038ui.view.ContainerLayout, android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (!this.f3762c.equals(rect)) {
            this.f3762c.set(rect);
            this.f3761a.m3800a(rect, this.f3763d);
            setPadding(this.f3763d.left, this.f3763d.top, this.f3763d.right, this.f3763d.bottom);
        }
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f3761a.m3800a(this.f3762c, this.f3763d);
        setPadding(this.f3763d.left, this.f3763d.top, this.f3763d.right, this.f3763d.bottom);
    }
}
