package com.alensw.p038ui.view;

import android.app.Activity;
import android.net.Uri;
import android.widget.ListView;
import com.alensw.PicFolder.GalleryActivity;
import com.alensw.cloud.C0860aa;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;
import java.util.ArrayList;

/* renamed from: com.alensw.ui.view.bl */
/* loaded from: classes.dex */
class ProgressDialogC1338bl extends AbstractProgressDialogC1062ao {

    /* renamed from: a */
    final /* synthetic */ Uri f4601a;

    /* renamed from: b */
    final /* synthetic */ C0860aa f4602b;

    /* renamed from: c */
    final /* synthetic */ int f4603c;

    /* renamed from: e */
    final /* synthetic */ C1329bc f4604e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressDialogC1338bl(C1329bc c1329bc, Activity activity, String str, int i, Uri uri, C0860aa c0860aa, int i2) {
        super(activity, str, i);
        this.f4604e = c1329bc;
        this.f4601a = uri;
        this.f4602b = c0860aa;
        this.f4603c = i2;
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: a */
    protected void mo3653a() {
        GalleryActivity galleryActivity;
        galleryActivity = this.f4604e.f4577d;
        galleryActivity.getContentResolver().delete(this.f4601a, null, null);
        this.f4602b.m2615d();
        this.f4602b.m2620h();
    }

    @Override // com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao
    /* renamed from: b */
    protected void mo3654b() {
        ArrayList arrayList;
        ArrayList arrayList2;
        ListView listView;
        arrayList = this.f4604e.f4584k;
        arrayList.remove(this.f4603c);
        this.f4604e.notifyDataSetChanged();
        if (this.f4604e.f4576c >= this.f4603c) {
            C1329bc c1329bc = this.f4604e;
            c1329bc.f4576c--;
        }
        if (this.f4604e.f4576c == this.f4603c || this.f4604e.f4576c < 0) {
            return;
        }
        int i = this.f4604e.f4576c;
        arrayList2 = this.f4604e.f4584k;
        if (i < arrayList2.size()) {
            listView = this.f4604e.f4578e;
            listView.performItemClick(null, this.f4604e.f4576c, 0L);
        }
    }
}
