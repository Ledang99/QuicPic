package com.alensw.cloud;

import android.content.Intent;
import android.os.Bundle;
import com.alensw.p038ui.p041c.ActivityC1237cx;
import com.alensw.p038ui.p041c.C1159a;
import com.alensw.p038ui.p041c.C1234cu;
import com.alensw.p038ui.p041c.C1280p;

/* loaded from: classes.dex */
public class ShareToCloudActivity extends ActivityC1237cx {
    @Override // com.alensw.p038ui.p041c.ActivityC1237cx, com.alensw.p038ui.activity.ActivityC1147p, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        String action = intent.getAction();
        boolean z = "android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action);
        if (!intent.hasExtra("QuickPic.catalogs")) {
            intent.putExtra("QuickPic.catalogs", z ? new int[]{1, 2} : new int[]{2});
        }
        C1234cu a2 = m4037a(C1280p.class, intent, (Bundle) null);
        if (z) {
            ((C1159a) a2).m3873a(new C0861ab(this, action, intent));
        }
        m3820g(true);
    }
}
