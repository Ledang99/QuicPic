package com.alensw.p038ui.view;

import android.database.ContentObserver;
import android.os.Handler;
import com.alensw.PicFolder.GalleryActivity;

/* renamed from: com.alensw.ui.view.bd */
/* loaded from: classes.dex */
class C1330bd extends ContentObserver {

    /* renamed from: a */
    final /* synthetic */ C1329bc f4585a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1330bd(C1329bc c1329bc, Handler handler) {
        super(handler);
        this.f4585a = c1329bc;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        GalleryActivity galleryActivity;
        galleryActivity = this.f4585a.f4577d;
        galleryActivity.runOnUiThread(new RunnableC1331be(this));
    }
}
