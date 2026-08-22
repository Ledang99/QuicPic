package com.alensw.PicFolder;

import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import com.alensw.p023b.p035l.C0742b;

/* renamed from: com.alensw.PicFolder.ao */
/* loaded from: classes.dex */
class C0541ao implements MediaPlayer.OnPreparedListener {

    /* renamed from: a */
    final /* synthetic */ Uri f2127a;

    /* renamed from: b */
    final /* synthetic */ PlayerActivity f2128b;

    C0541ao(PlayerActivity playerActivity, Uri uri) {
        this.f2128b = playerActivity;
        this.f2127a = uri;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        Handler handler;
        Handler handler2;
        Handler handler3;
        this.f2128b.f2021l = mediaPlayer;
        if (this.f2128b.f2023n == -2) {
            this.f2128b.setRequestedOrientation(mediaPlayer.getVideoWidth() > mediaPlayer.getVideoHeight() ? 0 : 1);
        }
        String str = null;
        if ("file".equals(this.f2127a.getScheme())) {
            str = this.f2127a.getPath();
        } else if ("media".equals(this.f2127a.getAuthority())) {
            str = QuickApp.f2076s.m2286b(this.f2127a);
        }
        if (str == null) {
            str = this.f2127a.getLastPathSegment();
        }
        if (str != null) {
            this.f2128b.setTitle(C0742b.m2997c(str));
        }
        this.f2128b.m3824i(false);
        if (Build.VERSION.SDK_INT >= 16) {
            try {
                this.f2128b.f2030u = mediaPlayer.getTrackInfo();
                if (this.f2128b.f2030u != null) {
                    for (MediaPlayer.TrackInfo trackInfo : this.f2128b.f2030u) {
                        if (trackInfo.getTrackType() == 2) {
                            this.f2128b.f2024o++;
                        }
                    }
                    if (this.f2128b.f2024o > 1) {
                        this.f2128b.invalidateOptionsMenu();
                    }
                }
            } catch (Throwable th) {
            }
        }
        handler = this.f2128b.f3829A;
        handler.post(new RunnableC0542ap(this));
        handler2 = this.f2128b.f3829A;
        handler2.postDelayed(new RunnableC0543aq(this), this.f2128b.f2018i.getVisibility() == 0 ? 5000L : 0L);
        handler3 = this.f2128b.f3829A;
        handler3.sendEmptyMessage(100);
    }
}
