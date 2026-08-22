package com.alensw.p038ui.activity;

import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.support.p009a.p010a.C0170m;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import com.alensw.PicFolder.R;
import com.p043b.p044a.C1387b;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: com.alensw.ui.activity.bk */
/* loaded from: classes.dex */
class C1132bk extends BaseAdapter {

    /* renamed from: a */
    final /* synthetic */ SelectThemeActivity f3801a;

    C1132bk(SelectThemeActivity selectThemeActivity) {
        this.f3801a = selectThemeActivity;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList arrayList;
        arrayList = this.f3801a.f3694g;
        return arrayList.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        ArrayList arrayList;
        arrayList = this.f3801a.f3694g;
        return arrayList.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        ArrayList arrayList;
        HashMap hashMap;
        HashMap hashMap2;
        int i2;
        Drawable drawable = null;
        if (view == null) {
            view = View.inflate(this.f3801a, R.layout.theme_item, null);
            ((ImageView) view.findViewById(R.id.home)).setImageDrawable(new C0170m(this.f3801a));
            ImageView imageView = (ImageView) view.findViewById(R.id.menu);
            Resources resources = this.f3801a.getResources();
            int i3 = this.f3801a.f3745X;
            i2 = this.f3801a.f3692e;
            imageView.setImageDrawable(C1387b.m4499a(resources, R.raw.ic_menu_overflow, i3, i2));
        }
        arrayList = this.f3801a.f3694g;
        C1133bl c1133bl = (C1133bl) arrayList.get(i);
        view.findViewById(R.id.title_bar).setBackgroundColor(c1133bl.f3804c);
        ((C0170m) ((ImageView) view.findViewById(R.id.home)).getDrawable()).m416a(c1133bl.f3806e);
        Drawable drawable2 = ((ImageView) view.findViewById(R.id.menu)).getDrawable();
        hashMap = this.f3801a.f3695h;
        ColorFilter colorFilter = (ColorFilter) hashMap.get(Integer.valueOf(c1133bl.f3806e));
        if (colorFilter == null) {
            colorFilter = new PorterDuffColorFilter(c1133bl.f3806e, PorterDuff.Mode.SRC_IN);
            hashMap2 = this.f3801a.f3695h;
            hashMap2.put(Integer.valueOf(c1133bl.f3806e), colorFilter);
        }
        drawable2.setColorFilter(colorFilter);
        ImageView imageView2 = (ImageView) view.findViewById(R.id.check);
        if (c1133bl.f3802a == this.f3801a.f3741T && c1133bl.f3804c == this.f3801a.f3743V) {
            drawable = this.f3801a.f3691d;
        }
        imageView2.setImageDrawable(drawable);
        view.setBackgroundColor(c1133bl.f3805d);
        return view;
    }
}
