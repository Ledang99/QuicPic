package com.alensw.transfer;

import android.net.Uri;
import android.util.Log;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p023b.p026c.C0658b;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p034k.InterfaceCallableC0740k;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;

/* renamed from: com.alensw.transfer.bf */
/* loaded from: classes.dex */
public class C1017bf implements InterfaceCallableC0740k {

    /* renamed from: a */
    final /* synthetic */ TransferService f3545a;

    /* renamed from: b */
    private C1026f f3546b;

    /* renamed from: c */
    private C1024d f3547c;

    public C1017bf(TransferService transferService, C1026f c1026f, C1024d c1024d) {
        this.f3545a = transferService;
        this.f3546b = c1026f;
        this.f3547c = c1024d;
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: a */
    public void mo2094a() {
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: b */
    public void mo2095b() {
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00b1  */
    @Override // java.util.concurrent.Callable
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Void call() {
        File file;
        File file2;
        boolean z = true;
        if (!this.f3547c.m3692n()) {
            this.f3547c.m3670a(1);
            File file3 = new File(C0658b.m2567b(this.f3545a), ".transfer");
            file3.mkdirs();
            try {
                file = File.createTempFile("download", ".tmp", file3);
                try {
                    C0675b.m2666a(file.getPath(), this.f3546b.f3571e.toString(), new C1018bg(this));
                } catch (Exception e) {
                    e = e;
                    Log.d("TransferService", "download file: " + this.f3546b.f3568b, e);
                    z = false;
                    if (z) {
                    }
                    return null;
                }
            } catch (Exception e2) {
                e = e2;
                file = null;
            }
            if (z) {
                this.f3547c.m3693o();
            } else {
                String m3008g = C0742b.m3008g(this.f3546b.f3568b);
                file2 = this.f3545a.f3387g;
                File m2969a = C0742b.m2969a(new File(file2, m3008g), (String) null);
                boolean renameTo = file.renameTo(m2969a);
                if (!renameTo && (renameTo = C0742b.m2983a(file, m2969a))) {
                    file.delete();
                }
                if (renameTo) {
                    this.f3546b.f3571e = Uri.fromFile(m2969a);
                    QuickApp.f2076s.m2294f(m2969a.getPath());
                    Log.d("TransferService", "save file: " + m2969a);
                }
            }
        }
        return null;
    }
}
