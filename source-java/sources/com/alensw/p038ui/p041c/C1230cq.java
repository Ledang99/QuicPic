package com.alensw.p038ui.p041c;

import android.view.Menu;
import android.view.View;
import com.alensw.PicFolder.R;
import com.alensw.p023b.p030g.InterfaceC0702k;
import com.alensw.p023b.p030g.MenuC0693b;

/* renamed from: com.alensw.ui.c.cq */
/* loaded from: classes.dex */
class C1230cq implements InterfaceC0702k {

    /* renamed from: a */
    final /* synthetic */ C1212bz f4072a;

    C1230cq(C1212bz c1212bz) {
        this.f4072a = c1212bz;
    }

    @Override // com.alensw.p023b.p030g.InterfaceC0702k
    /* renamed from: a */
    public boolean mo2078a(Menu menu, View view) {
        MenuC0693b.m2735a(this.f4072a.f4082C, R.menu.browse, menu);
        menu.setGroupCheckable(R.id.browse_mode, true, true);
        int i = 0;
        switch (this.f4072a.f4030s) {
            case 0:
                i = R.id.browse_default;
                break;
            case 1:
                i = R.id.browse_stack;
                break;
            case 2:
                i = R.id.browse_list;
                break;
            case 3:
                i = R.id.browse_grid;
                break;
        }
        if (i != 0) {
            menu.findItem(i).setChecked(true);
        }
        menu.findItem(R.id.browse_explorer).setChecked(this.f4072a.f4026o);
        return true;
    }
}
