package com.alensw.p038ui.p041c;

import android.net.Uri;
import android.widget.Toast;
import com.alensw.PicFolder.R;
import com.alensw.p022a.C0623e;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;

/* renamed from: com.alensw.ui.c.du */
/* loaded from: classes.dex */
class RunnableC1261du implements Runnable {

    /* renamed from: a */
    final /* synthetic */ boolean f4202a;

    /* renamed from: b */
    final /* synthetic */ C1256dp f4203b;

    RunnableC1261du(C1256dp c1256dp, boolean z) {
        this.f4203b = c1256dp;
        this.f4202a = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0623e c0623e;
        Uri uri;
        C0623e c0623e2;
        c0623e = this.f4203b.f4183m;
        if (c0623e.m2390j() == 0) {
            uri = this.f4203b.f4185o;
            String path = uri.getPath();
            if (path == null) {
                Toast.makeText(this.f4203b.f4082C, R.string.no_picture_in_album, 1).show();
                this.f4203b.m4023E();
            }
            File file = new File(path);
            char m2721a = C0690c.m2721a(path);
            c0623e2 = this.f4203b.f4183m;
            if (m2721a == 0) {
                m2721a = 'I';
            }
            c0623e2.m2365a(m2721a, (int) (file.lastModified() / 1000), file.length(), C0742b.m2997c(path));
        }
        if (this.f4203b.f4087H == 2) {
            if (this.f4202a) {
                this.f4203b.m4086L();
            } else {
                this.f4203b.m4129y();
            }
        }
    }
}
