package com.alensw.transfer;

import android.content.ContentResolver;
import android.util.Log;
import com.alensw.bean.CommonFile;
import com.alensw.p023b.p026c.C0662f;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.transfer.p037a.C0984t;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.apache.http.client.methods.HttpPost;

/* renamed from: com.alensw.transfer.bd */
/* loaded from: classes.dex */
class C1015bd extends Thread {

    /* renamed from: a */
    final /* synthetic */ C0984t f3537a;

    /* renamed from: b */
    final /* synthetic */ C0984t f3538b;

    /* renamed from: c */
    final /* synthetic */ List f3539c;

    /* renamed from: d */
    final /* synthetic */ ContentResolver f3540d;

    /* renamed from: e */
    final /* synthetic */ TransferService f3541e;

    C1015bd(TransferService transferService, C0984t c0984t, C0984t c0984t2, List list, ContentResolver contentResolver) {
        this.f3541e = transferService;
        this.f3537a = c0984t;
        this.f3538b = c0984t2;
        this.f3539c = list;
        this.f3540d = contentResolver;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String m3491a;
        String m3491a2;
        ConcurrentHashMap concurrentHashMap;
        ConcurrentLinkedQueue concurrentLinkedQueue;
        ConcurrentHashMap concurrentHashMap2;
        C1024d c1024d = new C1024d();
        c1024d.m3674a(this.f3537a.m3614b());
        c1024d.m3675a(true);
        m3491a = this.f3541e.m3491a(this.f3538b);
        c1024d.m3681c(m3491a);
        c1024d.m3677b(this.f3538b.m3611a());
        int i = 1;
        for (CommonFile commonFile : this.f3539c) {
            C1026f c1026f = new C1026f();
            c1026f.f3568b = commonFile.m3012a();
            c1026f.f3569c = commonFile.m3014b();
            if (c1026f.f3568b == null) {
                c1026f.f3568b = Long.toHexString(System.nanoTime());
            }
            if (c1026f.f3568b.lastIndexOf(46) == -1 && c1026f.f3569c != null) {
                c1026f.f3568b = C0690c.m2723a(c1026f.f3568b, c1026f.f3569c);
            }
            int i2 = i + 1;
            c1026f.f3567a = Integer.toString(i);
            c1026f.f3570d = commonFile.m3016d();
            c1026f.f3571e = commonFile.mo3021i();
            if (c1026f.f3570d == 0) {
                try {
                    C0662f m2590a = C0662f.m2590a(this.f3540d, commonFile.mo3021i());
                    c1026f.f3570d = m2590a.m2598e();
                    m2590a.m2601h();
                } catch (Throwable th) {
                }
            }
            if (c1026f.f3570d > 0) {
                c1024d.f3554a += c1026f.f3570d;
                c1024d.f3555b.put(c1026f.f3567a, c1026f);
            }
            i = i2;
        }
        long nanoTime = System.nanoTime();
        c1024d.m3671a(nanoTime);
        m3491a2 = this.f3541e.m3491a(this.f3537a);
        StringBuilder sb = new StringBuilder(m3491a2);
        sb.append("/request?session=").append(URLEncoder.encode(Long.toString(nanoTime)));
        this.f3541e.m3513c();
        c1024d.m3676b(System.currentTimeMillis());
        String m3669a = c1024d.m3669a();
        c1024d.m3677b(this.f3537a.m3611a());
        concurrentHashMap = this.f3541e.f3382b;
        concurrentHashMap.put(Long.valueOf(nanoTime), c1024d);
        boolean[] zArr = {true};
        try {
            C0675b.m2668a(sb.toString(), HttpPost.METHOD_NAME, (Map) null, new C1016be(this, null, m3669a, zArr));
        } catch (UnknownHostException e) {
            Log.e("TransferService", "Response from peer: ", e);
        } catch (Throwable th2) {
            Log.e("TransferService", "Connecting to peer", th2);
        }
        if (zArr[0]) {
            concurrentHashMap2 = this.f3541e.f3382b;
            concurrentHashMap2.remove(Long.valueOf(nanoTime));
        } else {
            concurrentLinkedQueue = TransferService.f3381a;
            concurrentLinkedQueue.add(c1024d);
        }
        this.f3541e.m3499g();
        this.f3541e.m3515d();
    }
}
