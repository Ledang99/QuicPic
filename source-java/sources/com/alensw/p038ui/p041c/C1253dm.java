package com.alensw.p038ui.p041c;

import android.app.WallpaperManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import com.alensw.p038ui.activity.C1094a;
import com.alensw.p038ui.activity.InterfaceC1146o;

/* renamed from: com.alensw.ui.c.dm */
/* loaded from: classes.dex */
class C1253dm implements InterfaceC1146o {

    /* renamed from: a */
    final /* synthetic */ Uri f4152a;

    /* renamed from: b */
    final /* synthetic */ C1246df f4153b;

    C1253dm(C1246df c1246df, Uri uri) {
        this.f4153b = c1246df;
        this.f4152a = uri;
    }

    @Override // com.alensw.p038ui.activity.InterfaceC1146o
    /* renamed from: a */
    public void mo2098a(Intent intent, ResolveInfo resolveInfo) {
        Context context;
        Context context2;
        Context context3;
        if (Build.VERSION.SDK_INT < 19 || !"android.service.wallpaper.CROP_AND_SET_WALLPAPER".equals(intent.getAction())) {
            context = this.f4153b.f4131d;
            C1094a.m3774a(context, intent, resolveInfo);
            return;
        }
        try {
            context2 = this.f4153b.f4131d;
            Intent cropAndSetWallpaperIntent = WallpaperManager.getInstance(context2).getCropAndSetWallpaperIntent(this.f4152a);
            context3 = this.f4153b.f4131d;
            C1094a.m3781a(context3, cropAndSetWallpaperIntent);
        } catch (Throwable th) {
        }
    }
}
