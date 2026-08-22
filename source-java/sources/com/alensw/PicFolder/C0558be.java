package com.alensw.PicFolder;

import android.graphics.Point;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import java.util.ArrayList;

/* renamed from: com.alensw.PicFolder.be */
/* loaded from: classes.dex */
class C0558be extends BaseAdapter {

    /* renamed from: a */
    final /* synthetic */ ArrayList f2154a;

    /* renamed from: b */
    final /* synthetic */ WallpaperActivity f2155b;

    C0558be(WallpaperActivity wallpaperActivity, ArrayList arrayList) {
        this.f2155b = wallpaperActivity;
        this.f2154a = arrayList;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f2154a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f2154a.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        ImageView imageView = view != null ? (ImageView) view : new ImageView(this.f2155b);
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        imageView.setImageDrawable(this.f2155b.m2064a((Point) this.f2154a.get(i)));
        return imageView;
    }
}
