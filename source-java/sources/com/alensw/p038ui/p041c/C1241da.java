package com.alensw.p038ui.p041c;

import android.graphics.Rect;
import android.view.View;
import com.alensw.p038ui.view.InterfaceC1376u;
import java.util.Iterator;
import java.util.Stack;

/* renamed from: com.alensw.ui.c.da */
/* loaded from: classes.dex */
class C1241da implements InterfaceC1376u {

    /* renamed from: a */
    final /* synthetic */ ActivityC1237cx f4116a;

    C1241da(ActivityC1237cx activityC1237cx) {
        this.f4116a = activityC1237cx;
    }

    @Override // com.alensw.p038ui.view.InterfaceC1376u
    /* renamed from: a */
    public void mo4048a(Rect rect) {
        Stack stack;
        if (this.f4116a.f4101d.equals(rect)) {
            return;
        }
        this.f4116a.f4101d.set(rect);
        stack = this.f4116a.f4103f;
        Iterator it = stack.iterator();
        while (it.hasNext()) {
            C1234cu c1234cu = (C1234cu) it.next();
            View view = c1234cu.f4083D;
            c1234cu.mo3939a(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }
}
