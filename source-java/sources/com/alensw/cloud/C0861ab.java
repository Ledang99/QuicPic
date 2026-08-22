package com.alensw.cloud;

import android.content.Intent;
import android.net.Uri;
import com.alensw.p038ui.p041c.InterfaceC1277m;
import java.util.Iterator;

/* renamed from: com.alensw.cloud.ab */
/* loaded from: classes.dex */
class C0861ab implements InterfaceC1277m {

    /* renamed from: a */
    final /* synthetic */ String f3133a;

    /* renamed from: b */
    final /* synthetic */ Intent f3134b;

    /* renamed from: c */
    final /* synthetic */ ShareToCloudActivity f3135c;

    C0861ab(ShareToCloudActivity shareToCloudActivity, String str, Intent intent) {
        this.f3135c = shareToCloudActivity;
        this.f3133a = str;
        this.f3134b = intent;
    }

    @Override // com.alensw.p038ui.p041c.InterfaceC1277m
    /* renamed from: a */
    public void mo3277a(Intent intent) {
        Uri data = intent.getData();
        if ("android.intent.action.SEND".equals(this.f3133a)) {
            this.f3135c.startService(UrlTaskService.m3121a(this.f3135c, 2, (Uri) this.f3134b.getParcelableExtra("android.intent.extra.STREAM"), data));
        } else if ("android.intent.action.SEND_MULTIPLE".equals(this.f3133a)) {
            Iterator it = this.f3134b.getParcelableArrayListExtra("android.intent.extra.STREAM").iterator();
            while (it.hasNext()) {
                this.f3135c.startService(UrlTaskService.m3121a(this.f3135c, 2, (Uri) it.next(), data));
            }
        }
    }
}
