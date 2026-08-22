package com.alensw.transfer;

import android.util.Log;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.C0680g;
import com.alensw.p023b.p034k.C0730a;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.apache.http.client.methods.HttpPost;

/* renamed from: com.alensw.transfer.bh */
/* loaded from: classes.dex */
class RunnableC1019bh implements Runnable {

    /* renamed from: a */
    final /* synthetic */ TransferService f3550a;

    /* renamed from: b */
    private C1024d f3551b;

    public RunnableC1019bh(TransferService transferService, C1024d c1024d) {
        this.f3550a = transferService;
        this.f3551b = c1024d;
    }

    @Override // java.lang.Runnable
    public void run() {
        C0730a c0730a;
        Log.v("TransferService", "dispatch Session task");
        Collection m3688j = this.f3551b.m3688j();
        ArrayList arrayList = new ArrayList();
        Iterator it = m3688j.iterator();
        while (it.hasNext()) {
            arrayList.add(new C1017bf(this.f3550a, (C1026f) it.next(), this.f3551b));
        }
        try {
            c0730a = this.f3550a.f3388h;
            c0730a.invokeAll(arrayList);
        } catch (InterruptedException e) {
            e.printStackTrace();
            Thread.currentThread().interrupt();
        }
        boolean z = this.f3551b.m3686h() >= this.f3551b.m3687i();
        this.f3551b.m3670a(z ? 2 : 3);
        this.f3551b.m3691m();
        this.f3550a.m3499g();
        if (z) {
            try {
                StringBuilder sb = new StringBuilder(this.f3551b.m3684f());
                sb.append("/finish?session=").append(URLEncoder.encode(String.valueOf(this.f3551b.m3682d())));
                C0675b.m2668a(sb.toString(), HttpPost.METHOD_NAME, (Map) null, new C0680g(new C1020bi(this)));
            } catch (Exception e2) {
                Log.e("TransferService", "Tell server session finished: ", e2);
            }
        }
        this.f3550a.m3515d();
    }
}
