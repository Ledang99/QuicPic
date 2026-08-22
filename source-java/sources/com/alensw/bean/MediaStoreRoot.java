package com.alensw.bean;

import android.net.Uri;
import android.preference.PreferenceManager;
import android.provider.MediaStore;
import com.alensw.PicFolder.QuickApp;

/* loaded from: classes.dex */
public class MediaStoreRoot extends CommonRoot {
    public MediaStoreRoot(String str, String str2) {
        super(str, str2, 268435506);
    }

    @Override // com.alensw.bean.CommonFile
    /* renamed from: i */
    public Uri mo3021i() {
        if (this.f2800j == null) {
            this.f2800j = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
        }
        return this.f2800j;
    }

    @Override // com.alensw.bean.CommonRoot
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public MediaStoreFolder mo3052k() {
        boolean z = PreferenceManager.getDefaultSharedPreferences(QuickApp.m2036a()).getBoolean("moments_group", true);
        int i = this.f2795e;
        if (z) {
            i |= -1073741824;
        }
        MediaStoreFolder mediaStoreFolder = new MediaStoreFolder(0, this.f2793c, i, this.f2797g, this.f2798h, null, z, true);
        mediaStoreFolder.f2810n.addAll(MediaStoreFolder.f2831u.values());
        mediaStoreFolder.m3051s();
        return mediaStoreFolder;
    }
}
