package com.alensw.PicFolder;

import android.media.MediaPlayer;

/* renamed from: com.alensw.PicFolder.ay */
/* loaded from: classes.dex */
class C0551ay implements MediaPlayer.OnPreparedListener {

    /* renamed from: a */
    final /* synthetic */ MediaPlayer.OnPreparedListener f2141a;

    /* renamed from: b */
    final /* synthetic */ PlayerView f2142b;

    C0551ay(PlayerView playerView, MediaPlayer.OnPreparedListener onPreparedListener) {
        this.f2142b = playerView;
        this.f2141a = onPreparedListener;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        int i;
        this.f2142b.f2038c = mediaPlayer.getVideoWidth();
        this.f2142b.f2039d = mediaPlayer.getVideoHeight();
        PlayerView playerView = this.f2142b;
        float[] m2035e = this.f2142b.m2035e();
        i = this.f2142b.f2050o;
        playerView.f2051p = m2035e[i];
        this.f2142b.requestLayout();
        this.f2141a.onPrepared(mediaPlayer);
    }
}
