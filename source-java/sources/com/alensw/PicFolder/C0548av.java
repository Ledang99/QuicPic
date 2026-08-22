package com.alensw.PicFolder;

import android.annotation.TargetApi;
import android.media.MediaPlayer;
import android.view.Menu;
import android.view.View;
import com.alensw.p023b.p030g.InterfaceC0702k;

/* renamed from: com.alensw.PicFolder.av */
/* loaded from: classes.dex */
class C0548av implements InterfaceC0702k {

    /* renamed from: a */
    final /* synthetic */ PlayerActivity f2136a;

    C0548av(PlayerActivity playerActivity) {
        this.f2136a = playerActivity;
    }

    @Override // com.alensw.p023b.p030g.InterfaceC0702k
    @TargetApi(16)
    /* renamed from: a */
    public boolean mo2078a(Menu menu, View view) {
        for (int i = 0; i < this.f2136a.f2030u.length; i++) {
            MediaPlayer.TrackInfo trackInfo = this.f2136a.f2030u[i];
            if (trackInfo.getTrackType() == 2) {
                String language = trackInfo.getLanguage();
                if (language == null || "und".equals(language)) {
                    language = "Audio #" + i;
                }
                menu.add(language).setOnMenuItemClickListener(new MenuItemOnMenuItemClickListenerC0549aw(this, i));
            }
        }
        return true;
    }
}
