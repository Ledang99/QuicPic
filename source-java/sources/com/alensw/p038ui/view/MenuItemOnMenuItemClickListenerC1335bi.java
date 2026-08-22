package com.alensw.p038ui.view;

import android.view.MenuItem;
import com.alensw.PicFolder.R;
import com.alensw.bean.CommonRoot;
import java.util.ArrayList;

/* renamed from: com.alensw.ui.view.bi */
/* loaded from: classes.dex */
class MenuItemOnMenuItemClickListenerC1335bi implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a */
    final /* synthetic */ int f4597a;

    /* renamed from: b */
    final /* synthetic */ C1329bc f4598b;

    MenuItemOnMenuItemClickListenerC1335bi(C1329bc c1329bc, int i) {
        this.f4598b = c1329bc;
        this.f4597a = i;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        ArrayList arrayList;
        int i = this.f4597a;
        arrayList = this.f4598b.f4584k;
        if (i >= arrayList.size()) {
            return false;
        }
        if (menuItem.getItemId() == R.id.delete) {
            this.f4598b.m4380b(this.f4597a);
        } else if (menuItem.getItemId() == R.id.configure) {
            this.f4598b.m4366b((CommonRoot) this.f4598b.getItem(this.f4597a));
        }
        return true;
    }
}
