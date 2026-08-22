package com.alensw.cloud.sync;

import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.widget.BaseAdapter;

/* renamed from: com.alensw.cloud.sync.q */
/* loaded from: classes.dex */
class C0949q extends ContentObserver {

    /* renamed from: a */
    final /* synthetic */ SyncSettings f3328a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C0949q(SyncSettings syncSettings, Handler handler) {
        super(handler);
        this.f3328a = syncSettings;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z, Uri uri) {
        BaseAdapter baseAdapter;
        super.onChange(z);
        baseAdapter = this.f3328a.f3287k;
        baseAdapter.notifyDataSetChanged();
    }
}
