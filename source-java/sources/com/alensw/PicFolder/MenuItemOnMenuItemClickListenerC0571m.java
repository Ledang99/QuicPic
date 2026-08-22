package com.alensw.PicFolder;

import android.view.MenuItem;
import java.util.ArrayList;

/* renamed from: com.alensw.PicFolder.m */
/* loaded from: classes.dex */
class MenuItemOnMenuItemClickListenerC0571m implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a */
    final /* synthetic */ ArrayList f2201a;

    /* renamed from: b */
    final /* synthetic */ CropActivity f2202b;

    MenuItemOnMenuItemClickListenerC0571m(CropActivity cropActivity, ArrayList arrayList) {
        this.f2202b = cropActivity;
        this.f2201a = arrayList;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        C0575q c0575q;
        C0575q c0575q2;
        int itemId = menuItem.getItemId();
        if (itemId < 0 || itemId >= this.f2201a.size()) {
            c0575q = this.f2202b.f1982d;
            c0575q.f2213c = 1.0f;
            return true;
        }
        c0575q2 = this.f2202b.f1982d;
        c0575q2.f2213c = ((Float) this.f2201a.get(itemId)).floatValue();
        return true;
    }
}
