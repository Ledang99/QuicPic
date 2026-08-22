package com.alensw.p038ui.activity;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import com.alensw.PicFolder.R;
import com.alensw.p023b.p030g.C0692a;
import com.alensw.p023b.p030g.MenuItemC0703l;
import com.p043b.p044a.C1387b;

/* renamed from: com.alensw.ui.activity.e */
/* loaded from: classes.dex */
class C1136e extends C0692a {

    /* renamed from: k */
    final /* synthetic */ C1135d f3809k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1136e(C1135d c1135d, Context context, int i) {
        super(context, i);
        this.f3809k = c1135d;
    }

    /* renamed from: a */
    public Drawable m3847a(Resources resources, int i, int i2) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(f2613i, C1387b.m4499a(resources, R.raw.ic_menu_done, i, i2));
        stateListDrawable.addState(f2614j, new ColorDrawable(0));
        return stateListDrawable;
    }

    /* renamed from: b */
    public Drawable m3848b(Resources resources, int i, int i2, boolean z) {
        StateListDrawable stateListDrawable = new StateListDrawable();
        C1137f c1137f = new C1137f(this, C1387b.m4499a(resources, R.raw.ic_button_forward, i, i2).m4563a(), i2, i2, z);
        stateListDrawable.addState(f2613i, c1137f);
        stateListDrawable.addState(f2614j, c1137f);
        return stateListDrawable;
    }

    @Override // com.alensw.p023b.p030g.C0692a, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        if (((MenuItemC0703l) this.f2622h.get(i)).getItemId() == this.f3809k.f3807f) {
            CompoundButton compoundButton = (CompoundButton) view2.findViewById(R.id.check);
            Resources resources = compoundButton.getResources();
            if (this.f3809k.f3807f == R.id.sort_default) {
                compoundButton.setButtonDrawable(m3847a(resources, this.f2616b, this.f2615a));
            } else {
                compoundButton.setButtonDrawable(m3848b(resources, this.f2616b, this.f2615a, this.f3809k.f3808g));
            }
        }
        return view2;
    }
}
