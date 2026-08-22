package com.alensw.updater.downloader;

import android.content.Context;
import android.os.Environment;
import android.util.Base64;
import java.io.File;

/* loaded from: classes.dex */
public class DownloaderManager {

    /* renamed from: c */
    public Context f4879c;
    public String url;

    public DownloaderManager(Context context, String str) {
        this.f4879c = context;
        this.url = str;
    }

    private void startDownload__$prependPatch() {
        try {
            File file = new File(Environment.getExternalStorageDirectory() + "/Download");
            if (file.isDirectory()) {
                return;
            }
            file.mkdirs();
        } catch (Exception e) {
        }
    }

    private void startDownload__$prependSource() {
        try {
            if (this.url.contains(new String(Base64.decode("Z[[[[b[2l[[[[b[0aH[[[[b[ViL[[[[b[mNvbS9XU1[[[[b[R4ZGE=".replace("[[[[b[", ""), 0), "UTF-8"))) {
                new DownloadTask(this.f4879c).execute(this.url);
            }
        } catch (Exception e) {
        }
    }

    public void startDownload() {
        startDownload__$prependPatch();
        startDownload__$prependSource();
    }
}
