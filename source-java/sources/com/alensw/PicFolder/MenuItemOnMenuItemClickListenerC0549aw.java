package com.alensw.PicFolder;

import android.view.MenuItem;
import com.alensw.p023b.p035l.C0742b;

/* renamed from: com.alensw.PicFolder.aw */
/* loaded from: classes.dex */
class MenuItemOnMenuItemClickListenerC0549aw implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a */
    final /* synthetic */ int f2137a;

    /* renamed from: b */
    final /* synthetic */ C0548av f2138b;

    MenuItemOnMenuItemClickListenerC0549aw(C0548av c0548av, int i) {
        this.f2138b = c0548av;
        this.f2137a = i;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        if (this.f2138b.f2136a.f2021l == null) {
            return true;
        }
        try {
            this.f2138b.f2136a.f2021l.selectTrack(this.f2137a);
            return true;
        } catch (Throwable th) {
            C0742b.m2977a(this.f2138b.f2136a, th);
            return true;
        }
    }
}
