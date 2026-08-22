package com.alensw.PicFolder;

import android.media.MediaPlayer;
import android.net.Uri;

/* renamed from: com.alensw.PicFolder.as */
/* loaded from: classes.dex */
class C0545as implements MediaPlayer.OnErrorListener {

    /* renamed from: a */
    final /* synthetic */ Uri f2132a;

    /* renamed from: b */
    final /* synthetic */ PlayerActivity f2133b;

    C0545as(PlayerActivity playerActivity, Uri uri) {
        this.f2133b = playerActivity;
        this.f2132a = uri;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        this.f2133b.f2033x.m2614c(this.f2132a.toString());
        this.f2133b.setTitle(R.string.load_failed);
        this.f2133b.m3824i(false);
        return false;
    }
}
