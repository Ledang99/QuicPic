package com.alensw.cloud.oauth;

import android.widget.EditText;
import com.alensw.cloud.EnumC0963z;
import com.alensw.cloud.p036a.C0812bz;
import java.io.FileNotFoundException;
import java.net.URL;

/* renamed from: com.alensw.cloud.oauth.n */
/* loaded from: classes.dex */
class RunnableC0916n implements Runnable {

    /* renamed from: a */
    final /* synthetic */ EnumC0963z f3247a;

    /* renamed from: b */
    final /* synthetic */ URL f3248b;

    /* renamed from: c */
    final /* synthetic */ String f3249c;

    /* renamed from: d */
    final /* synthetic */ String f3250d;

    /* renamed from: e */
    final /* synthetic */ BasicAuthActivity f3251e;

    RunnableC0916n(BasicAuthActivity basicAuthActivity, EnumC0963z enumC0963z, URL url, String str, String str2) {
        this.f3251e = basicAuthActivity;
        this.f3247a = enumC0963z;
        this.f3248b = url;
        this.f3249c = str;
        this.f3250d = str2;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        boolean z;
        C0889a m3320a;
        boolean z2;
        String m3324a;
        boolean z3;
        EditText editText = null;
        try {
            if (this.f3247a == EnumC0963z.OWNCLOUD) {
                m3324a = this.f3251e.m3324a(this.f3248b);
                z3 = this.f3251e.f3187i;
                if (z3 || m3324a == null) {
                    return;
                }
            }
            m3320a = this.f3251e.m3320a(this.f3248b, this.f3249c, this.f3250d);
            this.f3251e.m3334b(m3320a);
            z2 = this.f3251e.f3187i;
            if (z2) {
                return;
            }
            this.f3251e.m3397a(m3320a);
        } catch (C0812bz e) {
            editText = this.f3251e.f3183e;
            this.f3251e.m3328a(e);
            z = this.f3251e.f3187i;
            if (z) {
                return;
            }
            this.f3251e.runOnUiThread(new RunnableC0917o(this, editText));
        } catch (FileNotFoundException e2) {
            editText = this.f3251e.f3182d;
            this.f3251e.m3328a(e2);
            z = this.f3251e.f3187i;
            if (z) {
            }
        } catch (Exception e3) {
            this.f3251e.m3328a(e3);
            z = this.f3251e.f3187i;
            if (z) {
            }
        }
    }
}
