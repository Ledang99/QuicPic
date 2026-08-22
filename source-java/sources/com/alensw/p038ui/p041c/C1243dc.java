package com.alensw.p038ui.p041c;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import com.alensw.PicFolder.R;
import com.alensw.bean.CommonFile;
import com.alensw.bean.CommonFolder;
import com.alensw.bean.LocalFile;
import com.alensw.bean.LocalFolder;
import com.alensw.bean.MediaStoreFolder;
import com.alensw.p022a.C0622d;
import com.alensw.p022a.C0623e;
import com.alensw.p023b.p029f.C0688a;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p029f.EnumC0689b;
import com.alensw.p023b.p034k.C0733d;
import com.alensw.p038ui.p039a.AbstractProgressDialogC1062ao;
import java.io.File;

/* renamed from: com.alensw.ui.c.dc */
/* loaded from: classes.dex */
public class C1243dc extends C1290z {

    /* renamed from: B */
    private String f4118B;

    /* renamed from: L */
    private C0733d f4119L;

    /* renamed from: M */
    private ContentResolver f4120M;

    /* renamed from: a */
    public static Intent m4049a(Context context, String str, String str2) {
        CommonFile mediaStoreFolder = "moments".equals(str2) ? new MediaStoreFolder(0, str, -1879048142, 0L, 0L, null, true, true) : new LocalFolder("/search", str, 268435506, 0L, 0L);
        Intent intent = new Intent();
        intent.setData(mediaStoreFolder.mo3021i());
        intent.putExtra("QuickPic.folder", mediaStoreFolder);
        intent.putExtra("QuickPic.keyword", str);
        if (str2 != null) {
            intent.putExtra("QuickPic.root_id", str2);
        }
        return intent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m4051a(C0622d c0622d) {
        if (this.f4087H != 0) {
            this.f3851b.sendMessage(this.f3851b.obtainMessage(3010, new LocalFile(c0622d.f2405c, c0622d.f2403a, c0622d.f2404b, C0690c.m2722a(c0622d.f2404b, c0622d.f2405c), 5, 0L, c0622d.f2406d, c0622d.f2406d)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m4055b(C0623e c0623e) {
        C0622d m2381e = c0623e.m2381e(0);
        if (this.f4087H == 0 || m2381e == null) {
            return;
        }
        this.f3851b.sendMessage(this.f3851b.obtainMessage(3010, new LocalFolder(m2381e.m2351a(), c0623e.getName(), 268435461, 0L, 0L)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m4056b(CommonFile commonFile) {
        if (this.f4087H != 0) {
            this.f3851b.sendMessage(this.f3851b.obtainMessage(3010, commonFile));
        }
    }

    @Override // com.alensw.p038ui.p041c.C1290z, com.alensw.p038ui.p041c.C1159a, com.alensw.p038ui.p041c.C1234cu
    /* renamed from: a */
    public void mo3865a(Bundle bundle) {
        super.mo3865a(bundle);
        this.f4118B = this.f4084E.getStringExtra("QuickPic.root_id");
        if (this.f4118B == null || this.f4118B.length() == 0) {
            this.f4118B = "folders";
        }
        this.f4120M = this.f4082C.getApplication().getContentResolver();
        C0688a.m2715a(this.f4082C, EnumC0689b.Search, this.f4118B);
    }

    @Override // com.alensw.p038ui.p041c.C1290z
    /* renamed from: a */
    public void mo4057a(CommonFolder commonFolder) {
        if (!(commonFolder instanceof LocalFolder)) {
            super.mo4057a(commonFolder);
            return;
        }
        String j = commonFolder.mo3022j();
        Intent intent = new Intent();
        intent.setData(Uri.fromFile(new File(j)));
        this.f4082C.m4037a(C1192bf.class, intent, (Bundle) null);
    }

    @Override // com.alensw.p038ui.p041c.C1290z, com.alensw.p038ui.p041c.C1234cu
    /* renamed from: g */
    public void mo3952g() {
        if (this.f4119L != null) {
            this.f4119L.cancel(false);
            this.f4119L = null;
        }
        super.mo3952g();
    }

    @Override // com.alensw.p038ui.p041c.C1159a, android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 3010:
                if (this.f4087H != 0) {
                    CommonFile commonFile = (CommonFile) message.obj;
                    if (this.f4304y.m3035b(commonFile) < 0) {
                        this.f4304y.m3029a((-r1) - 1, commonFile);
                    }
                    this.f4285f.requestLayout();
                }
                return true;
            default:
                return super.handleMessage(message);
        }
    }

    @Override // com.alensw.p038ui.p041c.C1290z
    /* renamed from: n */
    public void mo4058n() {
        if (this.f4119L == null) {
            m4029c(true);
            this.f4285f.setEmptyText(m4032g(R.string.loading));
            this.f4119L = AbstractProgressDialogC1062ao.f3641d.m2936a(new C1244dd(this, this.f4084E.getStringExtra("QuickPic.keyword")));
        }
    }
}
