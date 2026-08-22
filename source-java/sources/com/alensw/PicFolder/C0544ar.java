package com.alensw.PicFolder;

import android.media.MediaPlayer;

/* renamed from: com.alensw.PicFolder.ar */
/* loaded from: classes.dex */
class C0544ar implements MediaPlayer.OnCompletionListener {

    /* renamed from: a */
    final /* synthetic */ PlayerActivity f2131a;

    C0544ar(PlayerActivity playerActivity) {
        this.f2131a = playerActivity;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.f2131a.f2025p = true;
        if (this.f2131a.f2026q) {
            this.f2131a.finish();
        }
    }
}
