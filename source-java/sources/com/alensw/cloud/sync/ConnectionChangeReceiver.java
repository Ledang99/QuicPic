package com.alensw.cloud.sync;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.alensw.p023b.p028e.C0675b;

/* loaded from: classes.dex */
public class ConnectionChangeReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static final Handler f3268a = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    private Runnable f3269b = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3400a(Context context) {
        if (!C0956x.m3470d(context)) {
            Log.i("SyncReceiver", "connection=" + C0675b.m2650a(context) + ", charging=" + C0956x.m3469c(context));
            return;
        }
        long[] m3468b = C0956x.m3468b(context);
        if (m3468b[0] != 0) {
            Log.i("SyncReceiver", "state=" + m3468b[0]);
            return;
        }
        if (!C0956x.m3469c(context)) {
            long currentTimeMillis = System.currentTimeMillis() - m3468b[1];
            if (currentTimeMillis < 3600000) {
                Log.i("SyncReceiver", "interval=" + (currentTimeMillis / 1000));
                return;
            }
        }
        Log.i("SyncReceiver", "trigger sync");
        C0956x.m3463a(context);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Log.i("SyncReceiver", "onReceive: " + intent.getAction());
        if (this.f3269b != null) {
            f3268a.removeCallbacks(this.f3269b);
        }
        this.f3269b = new RunnableC0934b(this, context);
        f3268a.postDelayed(this.f3269b, 2000L);
    }
}
