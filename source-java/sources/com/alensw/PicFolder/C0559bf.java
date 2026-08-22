package com.alensw.PicFolder;

import android.content.Intent;
import android.graphics.Point;
import android.view.View;
import android.widget.AdapterView;
import java.util.ArrayList;

/* renamed from: com.alensw.PicFolder.bf */
/* loaded from: classes.dex */
class C0559bf implements AdapterView.OnItemClickListener {

    /* renamed from: a */
    final /* synthetic */ ArrayList f2156a;

    /* renamed from: b */
    final /* synthetic */ Intent f2157b;

    /* renamed from: c */
    final /* synthetic */ WallpaperActivity f2158c;

    C0559bf(WallpaperActivity wallpaperActivity, ArrayList arrayList, Intent intent) {
        this.f2158c = wallpaperActivity;
        this.f2156a = arrayList;
        this.f2157b = intent;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        Point point = (Point) this.f2156a.get(i);
        this.f2158c.m2066a(this.f2157b, point.x, point.y);
    }
}
