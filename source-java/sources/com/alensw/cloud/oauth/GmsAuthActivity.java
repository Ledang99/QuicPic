package com.alensw.cloud.oauth;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.FrameLayout;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;

/* loaded from: classes.dex */
public class GmsAuthActivity extends ActivityC0907e {
    /* renamed from: a */
    private C0889a m3339a(Intent intent) {
        C0889a c0889a = new C0889a();
        c0889a.f3190a = this.f3234a.m3379d();
        c0889a.f3191b = intent.getStringExtra("authAccount");
        c0889a.f3196g.f3229a = intent.getStringExtra("authtoken");
        return c0889a;
    }

    /* renamed from: b */
    private void m3340b(C0889a c0889a) {
        m3824i(true);
        AbstractProgressDialogC1062ao.f3641d.submit(new RunnableC0925w(this, c0889a));
    }

    /* renamed from: b */
    private boolean m3341b() {
        try {
            com.google.gms.auth.a.a.a(this, 34);
            return true;
        } catch (com.google.gms.a.a e) {
            C0742b.m2977a((Context) this, (Throwable) e);
            finish();
            return false;
        } catch (com.google.gms.a.b e2) {
            C0742b.m2977a((Context) this, (Throwable) e2);
            Intent intent = new Intent(getIntent());
            intent.setComponent(new ComponentName(this, (Class<?>) OAuthActivity.class));
            startActivity(intent);
            finish();
            return false;
        }
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i2 != -1 || intent == null) {
            finish();
            return;
        }
        if (i == 34) {
            m3340b(m3339a(intent));
        } else if (i == 12) {
            C0889a m3339a = m3339a(intent);
            if (m3339a.f3196g.f3229a != null) {
                m3397a(m3339a);
            }
        }
    }

    @Override // com.alensw.cloud.oauth.ActivityC0907e, com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(new FrameLayout(this));
        m3341b();
    }
}
