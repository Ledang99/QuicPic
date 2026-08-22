package com.alensw.PicFolder;

import android.util.Log;
import com.alensw.cloud.p036a.C0784ay;
import com.alensw.cloud.p036a.C0812bz;
import com.alensw.p023b.p028e.C0674a;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p034k.InterfaceCallableC0740k;
import java.io.File;

/* renamed from: com.alensw.PicFolder.g */
/* loaded from: classes.dex */
class C0565g implements InterfaceCallableC0740k {

    /* renamed from: a */
    final /* synthetic */ CloudProvider f2185a;

    /* renamed from: b */
    private final C0561c f2186b;

    /* renamed from: c */
    private final String f2187c;

    /* renamed from: d */
    private final int f2188d;

    /* renamed from: e */
    private final C0553b f2189e;

    public C0565g(CloudProvider cloudProvider, C0561c c0561c, String str, int i) {
        this.f2185a = cloudProvider;
        this.f2189e = new C0553b(this.f2185a, null);
        this.f2186b = c0561c;
        this.f2187c = str;
        this.f2188d = i;
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: a */
    public void mo2094a() {
        this.f2189e.m2080a();
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: b */
    public void mo2095b() {
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public File call() {
        File file;
        File file2;
        boolean m1940a;
        String m1950d;
        int i = 0;
        String m1949d = CloudProvider.m1949d(this.f2187c);
        C0563e m2086a = this.f2186b.m2086a(m1949d);
        boolean z = this.f2188d > 0;
        String str = z ? m2086a.f2177b : m2086a.f2176a;
        while (true) {
            int i2 = i;
            if (i2 >= 2) {
                throw new RuntimeException("download gave up: " + this.f2187c);
            }
            try {
                try {
                    file = this.f2186b.f2169d.m2546f();
                    if (z) {
                        try {
                            this.f2186b.f2170e.m3243a(m1949d, this.f2188d, str, file.getPath(), this.f2189e);
                        } catch (C0674a e) {
                            e = e;
                            file2 = file;
                            Log.w("CloudProvider", "download cancelled: " + this.f2187c);
                            if (file2 != null) {
                                file2.delete();
                            }
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            Log.e("CloudProvider", "download failed: " + this.f2187c, th);
                            if (file != null) {
                                file.delete();
                            }
                            throw new Exception(th.getMessage());
                        }
                    } else {
                        this.f2186b.f2170e.m3244b(m1949d, str, file.getPath(), this.f2189e);
                    }
                    C0784ay c0784ay = this.f2186b.f2169d;
                    m1950d = CloudProvider.m1950d(m1949d, this.f2188d);
                    c0784ay.m2538a(m1950d, m2086a.f2178c, file);
                    return file;
                } catch (C0812bz e2) {
                    m1940a = this.f2185a.m1940a(this.f2186b, e2, (InterfaceC0679f) null);
                    if (!m1940a) {
                        throw new RuntimeException(e2.getMessage());
                    }
                    i = i2 + 1;
                }
            } catch (C0674a e3) {
                e = e3;
                file2 = null;
            } catch (Throwable th2) {
                th = th2;
                file = null;
            }
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C0565g)) {
            return false;
        }
        C0565g c0565g = (C0565g) obj;
        return this.f2187c.equals(c0565g.f2187c) && this.f2188d == c0565g.f2188d;
    }

    public int hashCode() {
        return this.f2187c.hashCode() + this.f2188d;
    }
}
