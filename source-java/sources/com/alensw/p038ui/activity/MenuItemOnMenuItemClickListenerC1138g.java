package com.alensw.p038ui.activity;

import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.view.MenuItem;
import java.util.HashSet;
import java.util.List;

/* renamed from: com.alensw.ui.activity.g */
/* loaded from: classes.dex */
final class MenuItemOnMenuItemClickListenerC1138g implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a */
    final /* synthetic */ List f3812a;

    /* renamed from: b */
    final /* synthetic */ InterfaceC1146o f3813b;

    /* renamed from: c */
    final /* synthetic */ HashSet f3814c;

    /* renamed from: d */
    final /* synthetic */ Intent f3815d;

    /* renamed from: e */
    final /* synthetic */ Intent f3816e;

    /* renamed from: f */
    final /* synthetic */ SharedPreferences f3817f;

    MenuItemOnMenuItemClickListenerC1138g(List list, InterfaceC1146o interfaceC1146o, HashSet hashSet, Intent intent, Intent intent2, SharedPreferences sharedPreferences) {
        this.f3812a = list;
        this.f3813b = interfaceC1146o;
        this.f3814c = hashSet;
        this.f3815d = intent;
        this.f3816e = intent2;
        this.f3817f = sharedPreferences;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        ResolveInfo resolveInfo = (ResolveInfo) this.f3812a.get(menuItem.getItemId());
        this.f3813b.mo2098a(this.f3814c.contains(resolveInfo) ? this.f3815d : this.f3816e, resolveInfo);
        this.f3817f.edit().putInt(resolveInfo.activityInfo.name, this.f3817f.getInt(resolveInfo.activityInfo.name, 0) + 1).commit();
        return false;
    }
}
