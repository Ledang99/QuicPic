package com.alensw.p038ui.p041c;

import android.view.Menu;
import android.view.View;
import com.alensw.PicFolder.R;
import com.alensw.p023b.p030g.InterfaceC0702k;
import com.alensw.p023b.p030g.MenuC0693b;

/* renamed from: com.alensw.ui.c.bg */
/* loaded from: classes.dex */
class C1193bg implements InterfaceC0702k {

    /* renamed from: a */
    final /* synthetic */ C1192bf f3972a;

    C1193bg(C1192bf c1192bf) {
        this.f3972a = c1192bf;
    }

    @Override // com.alensw.p023b.p030g.InterfaceC0702k
    /* renamed from: a */
    public boolean mo2078a(Menu menu, View view) {
        MenuC0693b.m2735a(this.f3972a.f4082C, R.menu.browse, menu);
        menu.setGroupCheckable(R.id.browse_mode, true, true);
        menu.removeItem(R.id.browse_default);
        menu.removeItem(R.id.browse_stack);
        menu.removeItem(R.id.browse_explorer);
        int i = 0;
        switch (this.f3972a.f3965i) {
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
