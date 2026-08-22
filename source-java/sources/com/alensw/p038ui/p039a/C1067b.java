package com.alensw.p038ui.p039a;

import android.app.Activity;
import android.util.Log;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import java.util.HashMap;
import org.json.JSONObject;

/* renamed from: com.alensw.ui.a.b */
/* loaded from: classes.dex */
final class C1067b extends Thread {

    /* renamed from: a */
    final /* synthetic */ HashMap f3648a;

    /* renamed from: b */
    final /* synthetic */ Activity f3649b;

    C1067b(HashMap hashMap, Activity activity) {
        this.f3648a = hashMap;
        this.f3649b = activity;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            JSONObject jSONObject = new JSONObject(C0675b.m2659a("http://ver.q-supreme.com/update", this.f3648a, (InterfaceC0679f) null));
            int optInt = jSONObject.optInt("versionCode");
            Log.d("CheckUpdate", "version code=" + optInt);
            if (optInt > QuickApp.f2068k) {
                this.f3649b.runOnUiThread(new RunnableC1068c(this, jSONObject.optString("versionName"), jSONObject.optString("changeLog"), jSONObject.optString("downloadUrl")));
            }
        } catch (Throwable th) {
            Log.e("CheckUpdate", "check from server: ", th);
        }
    }
}
