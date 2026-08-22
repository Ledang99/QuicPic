package com.alensw.PicFolder;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* renamed from: com.alensw.PicFolder.at */
/* loaded from: classes.dex */
class C0546at extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ PlayerActivity f2134a;

    C0546at(PlayerActivity playerActivity) {
        this.f2134a = playerActivity;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int intExtra = intent.getIntExtra("scale", 100);
        if (intExtra > 0) {
            int intExtra2 = (intent.getIntExtra("level", 0) * 100) / intExtra;
            this.f2134a.f2032w.m4204a(intExtra2, intent.getIntExtra("status", 0) == 2);
            if (this.f2134a.f2022m != null) {
                this.f2134a.f2022m.setTitle(Integer.toString(intExtra2) + "%");
                this.f2134a.f2022m.setVisible(true);
            }
        }
    }
}
