package com.alensw.cloud.sync;

import android.view.View;
import android.widget.CheckBox;
import com.alensw.PicFolder.R;
import com.alensw.p038ui.p039a.C1071f;

/* renamed from: com.alensw.cloud.sync.m */
/* loaded from: classes.dex */
class ViewOnClickListenerC0945m implements View.OnClickListener {

    /* renamed from: a */
    final /* synthetic */ CheckBox f3320a;

    /* renamed from: b */
    final /* synthetic */ String f3321b;

    /* renamed from: c */
    final /* synthetic */ int f3322c;

    /* renamed from: d */
    final /* synthetic */ SyncSettings f3323d;

    ViewOnClickListenerC0945m(SyncSettings syncSettings, CheckBox checkBox, String str, int i) {
        this.f3323d = syncSettings;
        this.f3320a = checkBox;
        this.f3321b = str;
        this.f3322c = i;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z = !this.f3320a.isChecked();
        RunnableC0946n runnableC0946n = new RunnableC0946n(this, z);
        if (z || this.f3322c != R.string.cloud_backup_only_wifi) {
            runnableC0946n.run();
        } else {
            C1071f.m3739a(this.f3323d, android.R.string.dialog_alert_title, this.f3323d.getString(R.string.cloud_backup_warning_cost), runnableC0946n, (Runnable) null);
        }
    }
}
