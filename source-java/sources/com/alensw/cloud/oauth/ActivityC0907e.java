package com.alensw.cloud.oauth;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.support.p009a.p010a.C0158a;
import com.alensw.PicFolder.QuickApp;
import com.alensw.cloud.C0879e;
import com.alensw.cloud.C0961x;
import com.alensw.cloud.EnumC0963z;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p033j.C0725a;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.activity.ActivityC1109ao;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;
import com.dropbox.client2.android.AuthActivity;

/* renamed from: com.alensw.cloud.oauth.e */
/* loaded from: classes.dex */
public class ActivityC0907e extends ActivityC1109ao {

    /* renamed from: a */
    protected AbstractC0897ah f3234a;

    /* renamed from: b */
    protected volatile boolean f3235b;

    /* renamed from: c */
    protected final InterfaceC0679f f3236c = new C0908f(this);

    /* renamed from: a */
    public static Intent m3394a(Context context, Handler handler, C0889a c0889a) {
        Intent m3395a = m3395a(context, handler, c0889a.f3190a, C0889a.m3346a(c0889a.f3190a) && c0889a.f3196g.f3230b != null);
        if (c0889a.f3193d != null) {
            m3395a.putExtra("server", c0889a.f3193d);
        }
        return m3395a;
    }

    /* renamed from: a */
    public static Intent m3395a(Context context, Handler handler, EnumC0963z enumC0963z, boolean z) {
        Intent intent = new Intent(context, (Class<?>) ((enumC0963z == EnumC0963z.OWNCLOUD || enumC0963z == EnumC0963z.SAMBA) ? BasicAuthActivity.class : z ? OAuthActivity.class : (C0889a.m3346a(enumC0963z) && QuickApp.f2060c) ? GmsAuthActivity.class : (enumC0963z == EnumC0963z.DROPBOX && AuthActivity.g(context)) ? AuthActivity.class : OAuthActivity.class));
        intent.putExtra("cloud_id", enumC0963z.toString());
        if (handler != null) {
            intent.putExtra("messenger", new Messenger(handler));
        }
        return intent;
    }

    /* renamed from: a */
    public static void m3396a(Activity activity, Handler handler, EnumC0963z enumC0963z) {
        activity.startActivity(m3395a(activity, handler, enumC0963z, false));
    }

    /* renamed from: a */
    protected void m3397a(C0889a c0889a) {
        try {
            getContentResolver().insert(C0725a.m2910a("com.alensw.PicFolder.CloudProvider", c0889a.m3348a()), c0889a.m3351b());
            if (getIntent().hasExtra("messenger")) {
                Messenger messenger = (Messenger) getIntent().getParcelableExtra("messenger");
                Message message = new Message();
                message.arg1 = c0889a.f3190a.ordinal();
                message.obj = c0889a.m3348a();
                messenger.send(message);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        finish();
    }

    /* renamed from: a */
    protected void m3398a(C0889a c0889a, boolean z) {
        AbstractProgressDialogC1062ao.f3641d.submit(new RunnableC0909g(this, c0889a, z));
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f3234a = AbstractC0897ah.m3377d(getIntent().getStringExtra("cloud_id"));
        if (this.f3234a == null) {
            finish();
        }
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onDestroy() {
        this.f3235b = true;
        super.onDestroy();
    }

    @Override // com.alensw.p038ui.activity.ActivityC1109ao, android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        m3820g(true);
        C0961x m3314a = C0879e.m3314a(this.f3234a != null ? this.f3234a.m3379d() : null);
        if (m3314a != null) {
            Drawable m2967a = C0742b.m2967a(getResources(), m3314a.f3349b, this.f3745X, m3793b(this));
            if (m2967a != null) {
                C0158a.m389a(this).mo408a(m2967a, 0);
            }
        }
    }
}
