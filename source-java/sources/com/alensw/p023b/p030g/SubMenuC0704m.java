package com.alensw.p023b.p030g;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* renamed from: com.alensw.b.g.m */
/* loaded from: classes.dex */
public class SubMenuC0704m extends MenuC0693b implements SubMenu {

    /* renamed from: f */
    private final MenuItem f2660f;

    public SubMenuC0704m(Context context, MenuItem menuItem) {
        super(context);
        this.f2660f = menuItem;
    }

    @Override // android.view.SubMenu
    public void clearHeader() {
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.f2660f;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.f2660f.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f2660f.setIcon(drawable);
        return this;
    }
}
