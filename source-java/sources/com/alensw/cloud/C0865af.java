package com.alensw.cloud;

import android.view.View;
import android.widget.AbsListView;
import android.widget.ImageView;
import com.alensw.PicFolder.R;
import com.alensw.p023b.p031h.C0712h;
import com.alensw.p038ui.view.AbstractC1381z;

/* renamed from: com.alensw.cloud.af */
/* loaded from: classes.dex */
class C0865af implements AbsListView.RecyclerListener {

    /* renamed from: a */
    final /* synthetic */ UrlTaskActivity f3141a;

    C0865af(UrlTaskActivity urlTaskActivity) {
        this.f3141a = urlTaskActivity;
    }

    @Override // android.widget.AbsListView.RecyclerListener
    public void onMovedToScrapHeap(View view) {
        AbstractC1381z unused;
        ImageView imageView = (ImageView) view.findViewById(R.id.icon);
        unused = this.f3141a.f2872k;
        AbstractC1381z.m4486a(imageView, (C0712h) null);
    }
}
