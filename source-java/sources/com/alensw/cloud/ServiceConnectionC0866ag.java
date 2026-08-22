package com.alensw.cloud;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

/* renamed from: com.alensw.cloud.ag */
/* loaded from: classes.dex */
class ServiceConnectionC0866ag implements ServiceConnection {

    /* renamed from: a */
    final /* synthetic */ UrlTaskActivity f3142a;

    ServiceConnectionC0866ag(UrlTaskActivity urlTaskActivity) {
        this.f3142a = urlTaskActivity;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        UrlTaskService urlTaskService;
        UrlTaskService urlTaskService2;
        int i;
        InterfaceC0872am interfaceC0872am;
        this.f3142a.f2867f = ((BinderC0875ap) iBinder).m3312a();
        urlTaskService = this.f3142a.f2867f;
        if (urlTaskService != null) {
            urlTaskService2 = this.f3142a.f2867f;
            i = this.f3142a.f2862a;
            interfaceC0872am = this.f3142a.f2870i;
            urlTaskService2.m3133a(i, interfaceC0872am);
            this.f3142a.m3111c();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        UrlTaskService urlTaskService;
        UrlTaskService urlTaskService2;
        int i;
        InterfaceC0872am interfaceC0872am;
        urlTaskService = this.f3142a.f2867f;
        if (urlTaskService != null) {
            urlTaskService2 = this.f3142a.f2867f;
            i = this.f3142a.f2862a;
            interfaceC0872am = this.f3142a.f2870i;
            urlTaskService2.m3135b(i, interfaceC0872am);
            this.f3142a.f2867f = null;
        }
    }
}
