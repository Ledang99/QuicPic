package com.alensw.PicFolder;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.alensw.cloud.p036a.C0784ay;
import com.alensw.cloud.p036a.C0785az;
import com.alensw.cloud.p036a.C0812bz;
import com.alensw.p023b.p028e.C0674a;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p034k.InterfaceCallableC0740k;

/* renamed from: com.alensw.PicFolder.h */
/* loaded from: classes.dex */
class C0566h implements InterfaceCallableC0740k {

    /* renamed from: a */
    protected boolean f2190a;

    /* renamed from: b */
    final /* synthetic */ CloudProvider f2191b;

    /* renamed from: c */
    private final C0561c f2192c;

    /* renamed from: d */
    private final String f2193d;

    /* renamed from: e */
    private final Uri f2194e;

    /* renamed from: f */
    private final ContentResolver f2195f;

    /* renamed from: g */
    private final C0553b f2196g;

    public C0566h(CloudProvider cloudProvider, C0561c c0561c, String str, ContentResolver contentResolver, Uri uri, boolean z) {
        this.f2191b = cloudProvider;
        this.f2196g = new C0553b(this.f2191b, null);
        this.f2192c = c0561c;
        this.f2193d = str;
        this.f2195f = contentResolver;
        this.f2194e = uri;
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: a */
    public void mo2094a() {
        this.f2196g.m2080a();
    }

    @Override // com.alensw.p023b.p034k.InterfaceCallableC0740k
    /* renamed from: b */
    public void mo2095b() {
        this.f2190a = true;
        this.f2195f.notifyChange(this.f2194e, null);
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public Boolean call() {
        long j;
        boolean m1940a;
        String m1947c;
        String m1949d = CloudProvider.m1949d(this.f2193d);
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        Cursor m3184a = this.f2192c.f2169d.m3184a(m1949d, new String[]{"_size", "last_modified", "flags"}, (String) null, (String[]) null);
        if (m3184a != null) {
            if (m3184a.moveToFirst()) {
                j2 = m3184a.getLong(0);
                j3 = m3184a.getLong(1);
                j4 = m3184a.getLong(2);
            }
            m3184a.close();
        }
        long j5 = j4;
        long j6 = j3;
        long j7 = j2;
        boolean z = (268435456 & j5) != 0;
        boolean z2 = (536870912 & j5) != 0;
        ContentValues contentValues = new ContentValues(10);
        C0785az c0785az = new C0785az(256);
        C0785az c0785az2 = new C0785az(256);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 2) {
                throw new RuntimeException("query gave up: " + this.f2193d);
            }
            boolean z3 = false;
            boolean z4 = false;
            if (j7 == 0 || z2) {
                j = j6;
            } else {
                try {
                    try {
                        this.f2192c.f2170e.mo3148a(m1949d, contentValues, this.f2196g);
                        Long asLong = contentValues.getAsLong("last_modified");
                        j = asLong != null ? asLong.longValue() : 0L;
                        if (j == 0 && j6 == 0) {
                            j = -1;
                        }
                    } catch (Throwable th) {
                        Log.e("CloudProvider", "query failed: ", th);
                        throw new Exception(th.getMessage());
                    }
                } catch (C0674a e) {
                    Log.w("CloudProvider", "query cancelled: " + this.f2193d);
                    throw e;
                } catch (C0812bz e2) {
                    try {
                        m1940a = this.f2191b.m1940a(this.f2192c, e2, (InterfaceC0679f) null);
                        if (!m1940a) {
                            throw new RuntimeException(e2.getMessage());
                        }
                        if (z3) {
                            if (!z4) {
                                contentValues.put("_size", (Integer) 0);
                            }
                            this.f2192c.f2169d.m3191a(m1949d, contentValues);
                        }
                        i = i2 + 1;
                    } catch (Throwable th2) {
                        if (z3) {
                            if (!z4) {
                                contentValues.put("_size", (Integer) 0);
                            }
                            this.f2192c.f2169d.m3191a(m1949d, contentValues);
                        }
                        throw th2;
                    }
                }
            }
            if (j7 == 0 || z2 || j != j6) {
                int i3 = 0;
                do {
                    C0675b.m2664a(this.f2196g);
                    c0785az.clear();
                    z4 = this.f2192c.f2170e.mo3149a(m1949d, c0785az, i3, this.f2196g);
                    c0785az2.addAll(c0785az);
                    if (z4 || c0785az.isEmpty()) {
                        break;
                    }
                    int size = c0785az.size();
                    Log.d("CloudProvider", "query " + i3 + "+" + size + " from cloud");
                    if (z && i3 == 0) {
                        this.f2192c.m2091b(m1949d);
                        this.f2192c.f2169d.m3193b(m1949d);
                    }
                    this.f2192c.f2169d.m3189a(c0785az, m1949d, i3);
                    c0785az.clear();
                    i3 += size;
                    contentValues.put("_size", Integer.valueOf(i3));
                    this.f2192c.f2169d.m3191a(m1949d, contentValues);
                    this.f2195f.notifyChange(this.f2194e, null);
                } while (!z4);
                if (j != j6 && (1 & j5) != 0) {
                    C0784ay c0784ay = this.f2192c.f2169d;
                    m1947c = CloudProvider.m1947c(m1949d, "%");
                    c0784ay.m2539a("document_id LIKE ?", new String[]{m1947c});
                }
                this.f2192c.f2169d.m3193b(m1949d);
                contentValues.put("_size", Integer.valueOf(c0785az2.size()));
                this.f2192c.f2169d.m3189a(c0785az2, m1949d, 0);
                z3 = true;
            }
            Boolean valueOf = Boolean.valueOf(z3);
            if (z3) {
                if (!z4) {
                    contentValues.put("_size", (Integer) 0);
                }
                this.f2192c.f2169d.m3191a(m1949d, contentValues);
            }
            return valueOf;
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof C0566h) {
            return this.f2193d.equals(((C0566h) obj).f2193d);
        }
        return false;
    }

    public int hashCode() {
        return this.f2193d.hashCode();
    }
}
