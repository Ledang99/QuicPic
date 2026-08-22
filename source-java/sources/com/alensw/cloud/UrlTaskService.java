package com.alensw.cloud;

import android.R;
import android.annotation.TargetApi;
import android.app.Application;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import com.alensw.p023b.p035l.C0741a;
import org.apache.http.HttpStatus;

/* loaded from: classes.dex */
public class UrlTaskService extends Service implements Handler.Callback {

    /* renamed from: a */
    private Bitmap f2873a;

    /* renamed from: b */
    private final IBinder f2874b = new BinderC0875ap(this);

    /* renamed from: c */
    private final Handler f2875c = new Handler(this);

    /* renamed from: d */
    private final C0871al f2876d = new C0871al();

    /* renamed from: e */
    private final C0871al f2877e = new C0871al();

    /* renamed from: a */
    private int m3119a(int i, boolean z) {
        return i == 1 ? z ? R.drawable.stat_sys_download_done : R.drawable.stat_sys_download : z ? R.drawable.stat_sys_upload_done : R.drawable.stat_sys_upload;
    }

    /* renamed from: a */
    public static PendingIntent m3120a(Context context, int i) {
        return PendingIntent.getActivity(context, m3128c(i), UrlTaskActivity.m3101a(context, i), 134217728);
    }

    /* renamed from: a */
    public static Intent m3121a(Context context, int i, Uri uri, Uri uri2) {
        Intent intent = new Intent(context, (Class<?>) UrlTaskService.class);
        intent.putExtra("url_task_mode", i);
        intent.putExtra("url_task_local", uri);
        intent.putExtra("url_task_remote", uri2);
        return intent;
    }

    /* renamed from: a */
    private String m3122a(int i, int i2) {
        return m3123a(this, i, i2);
    }

    /* renamed from: a */
    public static String m3123a(Context context, int i, int i2) {
        String string = context.getString(i == 1 ? com.alensw.PicFolder.R.string.url_download_complete : com.alensw.PicFolder.R.string.url_upload_complete);
        return i2 > 0 ? string + context.getString(com.alensw.PicFolder.R.string.url_failed_tasks, Integer.valueOf(i2)) : string;
    }

    /* renamed from: a */
    private void m3124a() {
        this.f2876d.m3307e();
        this.f2877e.m3307e();
    }

    /* renamed from: b */
    private String m3125b(int i, int i2) {
        return getString(i == 1 ? com.alensw.PicFolder.R.string.url_download_pending : com.alensw.PicFolder.R.string.url_upload_pending, new Object[]{Integer.valueOf(i2)});
    }

    /* renamed from: b */
    private void m3126b() {
        if (this.f2876d.m3304c() == 0 && this.f2877e.m3304c() == 0) {
            stopSelf();
        }
    }

    /* renamed from: b */
    public static void m3127b(Context context, int i, int i2) {
        C0741a.m2956a(context, m3128c(i), false, R.drawable.stat_sys_warning, com.alensw.PicFolder.R.drawable.ic_about, com.alensw.PicFolder.R.string.app_name, (CharSequence) m3123a(context, i, i2), m3120a(context, i));
    }

    /* renamed from: c */
    public static int m3128c(int i) {
        return i == 1 ? HttpStatus.SC_SWITCHING_PROTOCOLS : HttpStatus.SC_PROCESSING;
    }

    /* renamed from: d */
    private C0871al m3129d(int i) {
        return i == 1 ? this.f2876d : this.f2877e;
    }

    /* renamed from: e */
    private PendingIntent m3130e(int i) {
        return m3120a(getApplication(), i);
    }

    /* renamed from: a */
    public void m3131a(int i) {
        m3129d(i).m3297a();
    }

    /* renamed from: a */
    public void m3132a(int i, C0863ad c0863ad) {
        m3129d(i).m3299a(c0863ad);
    }

    /* renamed from: a */
    public void m3133a(int i, InterfaceC0872am interfaceC0872am) {
        m3129d(i).m3300a(interfaceC0872am);
    }

    /* renamed from: b */
    public void m3134b(int i, C0863ad c0863ad) {
        m3129d(i).m3302b(c0863ad);
    }

    /* renamed from: b */
    public void m3135b(int i, InterfaceC0872am interfaceC0872am) {
        m3129d(i).m3303b(interfaceC0872am);
    }

    /* renamed from: b */
    public boolean m3136b(int i) {
        return m3129d(i).m3304c() > 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0018, code lost:
    
        return true;
     */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean handleMessage(Message message) {
        int i = message.arg1;
        C0871al m3129d = m3129d(i);
        C0863ad c0863ad = message.obj instanceof C0863ad ? (C0863ad) message.obj : null;
        switch (message.what) {
            case 1:
            case 2:
                m3129d.m3306d();
                int m3301b = m3129d.m3301b();
                if (m3301b == 0) {
                    int m3304c = m3129d.m3304c();
                    C0741a.m2957a(this, m3128c(i), m3304c == 0, m3304c != 0 ? R.drawable.stat_sys_warning : m3119a(i, true), this.f2873a, getString(com.alensw.PicFolder.R.string.app_name), m3122a(i, m3304c), m3304c != 0 ? m3130e(i) : null);
                    if (message.what == 2) {
                        m3129d.m3307e();
                        m3126b();
                        break;
                    }
                } else {
                    C0741a.m2957a((Context) this, m3128c(i), false, m3119a(i, false), this.f2873a, (CharSequence) getString(i == 1 ? com.alensw.PicFolder.R.string.downloading : com.alensw.PicFolder.R.string.uploading), (CharSequence) m3125b(i, m3301b), m3130e(i));
                    break;
                }
                break;
            case 3:
                m3129d.m3305c(c0863ad);
                break;
            case 4:
                m3129d.m3306d();
                break;
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.f2874b;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        new AsyncTaskC0874ao(this);
        if (Build.VERSION.SDK_INT >= 11) {
            try {
                this.f2873a = ((BitmapDrawable) getResources().getDrawable(com.alensw.PicFolder.R.drawable.ic_about).mutate()).getBitmap();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        Application application = getApplication();
        this.f2876d.m3298a(1, application, this.f2875c);
        this.f2877e.m3298a(2, application, this.f2875c);
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        m3124a();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        try {
            Bundle extras = intent.getExtras();
            int i3 = extras.getInt("url_task_mode");
            Uri uri = (Uri) extras.getParcelable("url_task_local");
            Uri uri2 = (Uri) extras.getParcelable("url_task_remote");
            if (uri != null && uri2 != null) {
                if (i3 == 1) {
                    this.f2876d.m3299a(new C0863ad(uri, uri2));
                } else if (i3 == 2) {
                    this.f2877e.m3299a(new C0863ad(uri, uri2));
                }
            }
        } catch (Throwable th) {
        }
        return 2;
    }

    @Override // android.app.Service
    @TargetApi(14)
    public void onTaskRemoved(Intent intent) {
        super.onTaskRemoved(intent);
        m3124a();
        C0741a.m2955a(getApplication(), HttpStatus.SC_SWITCHING_PROTOCOLS);
        C0741a.m2955a(getApplication(), HttpStatus.SC_PROCESSING);
    }
}
