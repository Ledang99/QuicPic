package com.alensw.cloud.sync;

import android.accounts.Account;
import android.annotation.TargetApi;
import android.content.AbstractThreadedSyncAdapter;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SyncResult;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import com.alensw.p022a.C0597al;
import com.alensw.p023b.p026c.C0658b;
import com.alensw.p023b.p034k.C0730a;
import com.alensw.p023b.p034k.C0733d;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentLinkedQueue;

/* renamed from: com.alensw.cloud.sync.f */
/* loaded from: classes.dex */
public class C0938f extends AbstractThreadedSyncAdapter {

    /* renamed from: d */
    private static PrintWriter f3300d;

    /* renamed from: b */
    private final String f3302b;

    /* renamed from: c */
    private final ConcurrentLinkedQueue f3303c;

    /* renamed from: a */
    private static final C0730a f3299a = new C0730a(4, 4, 256, 5);

    /* renamed from: e */
    private static final SimpleDateFormat f3301e = new SimpleDateFormat("MM-dd HH:mm:ss.SSS");

    public C0938f(Context context, boolean z) {
        super(context, z);
        this.f3303c = new ConcurrentLinkedQueue();
        this.f3302b = "SYNC PID" + Process.myPid() + ": ";
    }

    /* renamed from: a */
    public static void m3427a(Context context, String str, Throwable th) {
        if (th == null) {
            Log.d("SyncAdapter", str);
        } else {
            Log.e("SyncAdapter", str, th);
        }
        synchronized (f3301e) {
            if (f3300d == null) {
                try {
                    File file = new File(C0658b.m2563a(context), "cloud-backup.log");
                    f3300d = new PrintWriter((OutputStream) new FileOutputStream(file, file.length() < 131072), true);
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
            }
            if (f3300d != null) {
                try {
                    f3300d.println(f3301e.format(Long.valueOf(System.currentTimeMillis())) + ": " + str);
                    if (th != null) {
                        th.printStackTrace(f3300d);
                    }
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
            }
        }
    }

    /* renamed from: a */
    public void m3428a(String str) {
        m3427a(getContext(), this.f3302b + str, null);
    }

    /* renamed from: a */
    public void m3429a(String str, Throwable th) {
        m3427a(getContext(), this.f3302b + str, th);
    }

    @Override // android.content.AbstractThreadedSyncAdapter
    public void onPerformSync(Account account, Bundle bundle, String str, ContentProviderClient contentProviderClient, SyncResult syncResult) {
        m3428a("START: " + bundle);
        Context context = getContext();
        if (!C0956x.m3470d(context)) {
            m3428a("IGNORED");
            return;
        }
        String string = bundle != null ? bundle.getString("QuickPic.sync_task_id") : null;
        SharedPreferences m3471e = C0956x.m3471e(context);
        String m2175a = C0597al.m2175a(true, m3471e.getBoolean("include_videos", true), m3471e);
        ContentResolver contentResolver = context.getContentResolver();
        long currentTimeMillis = System.currentTimeMillis();
        Map m3424a = C0937e.m3424a(contentResolver);
        Map m3420a = C0936d.m3420a(contentResolver);
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : m3424a.entrySet()) {
            String str2 = (String) entry.getKey();
            C0954v c0954v = (C0954v) entry.getValue();
            if (!c0954v.f3347f && (string == null || c0954v.f3344c.equals(string))) {
                C0952t c0952t = (C0952t) m3420a.get(str2);
                C0952t c0952t2 = c0952t == null ? new C0952t() : c0952t;
                if (c0952t2.f3332a == 0) {
                    arrayList.add(f3299a.m2936a(new C0940h(context, this.f3303c, str2, m2175a, c0954v, c0952t2, string != null)));
                }
            }
        }
        long j = 0;
        int i = 0;
        Iterator it = arrayList.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                m3428a("STOP: tasks=" + arrayList.size() + ", files=" + i2 + ", size=" + (j / 1024) + "KB, duration=" + (System.currentTimeMillis() - currentTimeMillis) + "ms, result=" + syncResult.toDebugString() + "\n");
                return;
            }
            try {
                C0952t c0952t3 = (C0952t) ((C0733d) it.next()).get();
                i2 += c0952t3.f3334c;
                j += c0952t3.f3337f;
                syncResult.stats.numUpdates += c0952t3.f3334c;
                syncResult.stats.numEntries += c0952t3.f3334c;
                i = i2;
            } catch (InterruptedException e) {
                i = i2;
                m3428a("INTERRUPTED");
            } catch (CancellationException e2) {
                i = i2;
                m3428a("CANCELLED");
            } catch (Throwable th) {
                i = i2;
                m3429a("ERROR: ", th);
            }
        }
    }

    @Override // android.content.AbstractThreadedSyncAdapter
    @TargetApi(8)
    public void onSyncCanceled() {
        m3428a("CANCEL...");
        f3299a.m2937a();
        while (true) {
            C0940h c0940h = (C0940h) this.f3303c.poll();
            if (c0940h == null) {
                super.onSyncCanceled();
                return;
            }
            c0940h.mo2094a();
        }
    }
}
