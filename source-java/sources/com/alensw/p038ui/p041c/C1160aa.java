package com.alensw.p038ui.p041c;

import android.view.Menu;
import android.view.View;
import com.alensw.PicFolder.R;
import com.alensw.p023b.p030g.InterfaceC0702k;
import com.alensw.p023b.p030g.MenuC0693b;

/* renamed from: com.alensw.ui.c.aa */
/* loaded from: classes.dex */
class C1160aa implements InterfaceC0702k {

    /* renamed from: a */
    final /* synthetic */ C1290z f3855a;

    C1160aa(C1290z c1290z) {
        this.f3855a = c1290z;
    }

    @Override // com.alensw.p023b.p030g.InterfaceC0702k
    /* renamed from: a */
    public boolean mo2078a(Menu menu, View view) {
        MenuC0693b.m2735a(this.f3855a.f4082C, R.menu.browse, menu);
        menu.setGroupCheckable(R.id.browse_mode, true, true);
        menu.removeItem(R.id.browse_default);
        menu.removeItem(R.id.browse_stack);
        menu.removeItem(R.id.browse_explorer);
        int i = 0;
        switch (this.f3855a.f4289j) {
            case 0:
                i = R.id.browse_grid;
                break;
            case 2:
                i = R.id.browse_list;
                break;
        }
        if (i != 0) {
            menu.findItem(i).setChecked(true);
        }
        return true;
    }
}
