package com.alensw.p022a;

import android.os.Handler;
import android.util.Log;
import com.alensw.PicFolder.QuickApp;
import com.alensw.jni.JniUtils;
import com.alensw.p023b.p026c.C0660d;
import com.alensw.p023b.p034k.C0730a;
import com.alensw.p023b.p034k.C0734e;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.alensw.a.v */
/* loaded from: classes.dex */
class C0640v extends C0734e {

    /* renamed from: a */
    public int f2475a;

    /* renamed from: b */
    public Object f2476b;

    /* renamed from: c */
    public Handler f2477c;

    /* renamed from: d */
    public boolean f2478d;

    /* renamed from: e */
    public volatile boolean f2479e;

    /* renamed from: f */
    final /* synthetic */ C0639u f2480f;

    /* renamed from: h */
    private C0597al f2481h;

    /* renamed from: i */
    private final String f2482i;

    private C0640v(C0639u c0639u) {
        this.f2480f = c0639u;
        this.f2482i = File.separator + "cache";
    }

    /* synthetic */ C0640v(C0639u c0639u, CallableC0638t callableC0638t) {
        this(c0639u);
    }

    /* renamed from: a */
    private int m2469a(C0623e c0623e) {
        ArrayList arrayList = new ArrayList(128);
        Stack stack = new Stack();
        stack.push(c0623e);
        int i = 0;
        while (!this.f2479e) {
            while (stack.size() > 0) {
                C0623e c0623e2 = (C0623e) stack.pop();
                String path = c0623e2.getPath();
                if (!path.endsWith(this.f2482i) || !QuickApp.f2073p.m2331g(path)) {
                    if (!m2478a(path, true, true) && m2477a(path, false)) {
                        arrayList.add(c0623e2);
                    }
                }
            }
            if (arrayList.isEmpty() || this.f2479e) {
                break;
            }
            int m2472a = m2472a(arrayList, false, false, stack) + i;
            arrayList.clear();
            i = m2472a;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public int m2470a(C0623e c0623e, boolean z) {
        C0612b c0612b;
        C0612b c0612b2;
        int i = 0;
        String path = c0623e.getPath();
        boolean m2324a = QuickApp.f2073p.m2324a(path);
        boolean z2 = !this.f2478d;
        if (m2324a) {
            z2 = false;
            z = false;
        }
        c0623e.m2394n();
        if (!z || m2476a(path, c0623e.f2421e)) {
            c0623e.f2420d = this.f2480f.f2470d.m2432a(c0623e);
            if (c0623e.f2424h == null) {
                c0623e.f2424h = new ArrayList(64);
            } else {
                c0623e.f2424h.clear();
            }
            i = this.f2480f.f2467a.m2437a(this.f2481h, c0623e, z2, z);
            if (z && i > 0) {
                if (!c0623e.m2369a(true)) {
                    c0612b = this.f2480f.f2467a.f2456h;
                    c0612b.m2264a(c0623e);
                } else if (this.f2478d) {
                    c0612b2 = this.f2480f.f2467a.f2457i;
                    c0612b2.m2264a(c0623e);
                }
            }
        }
        return i;
    }

    /* renamed from: a */
    private int m2472a(ArrayList arrayList, boolean z, boolean z2, Stack stack) {
        C0730a c0730a;
        AtomicInteger atomicInteger = new AtomicInteger();
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new CallableC0641w(this, z, (C0623e) it.next(), atomicInteger, stack, z2));
        }
        if (this.f2479e) {
            return 0;
        }
        try {
            c0730a = C0637s.f2451e;
            c0730a.invokeAll(arrayList2);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return atomicInteger.get();
    }

    /* renamed from: a */
    private void m2475a(ArrayList arrayList) {
        File file;
        boolean m2506d = QuickApp.f2072o.m2506d();
        C0660d c0660d = new C0660d(2048);
        file = this.f2480f.f2467a.f2459k;
        if (c0660d.m2608a(file)) {
            arrayList.ensureCapacity(arrayList.size() + c0660d.m2613c());
            Iterator it = c0660d.m2618f().iterator();
            while (it.hasNext()) {
                String str = (String) ((Map.Entry) it.next()).getKey();
                if (!m2478a(str, true, false) && m2477a(str, false)) {
                    arrayList.add(new C0623e(str, m2506d ? JniUtils.fuGetFileTime(str) : 0));
                }
            }
        }
        C0742b.m2987a(arrayList, QuickApp.f2072o.f2498a);
    }

    /* renamed from: a */
    private boolean m2476a(String str, int i) {
        C0612b c0612b;
        C0612b c0612b2;
        c0612b = this.f2480f.f2467a.f2456h;
        if (!c0612b.m2267a(str, i)) {
            return false;
        }
        if (!this.f2478d) {
            return true;
        }
        c0612b2 = this.f2480f.f2467a.f2457i;
        return c0612b2.m2267a(str, i);
    }

    /* renamed from: a */
    private boolean m2477a(String str, boolean z) {
        if (this.f2480f.f2473g == null || this.f2480f.f2473g.length == 0) {
            return true;
        }
        for (String str2 : this.f2480f.f2473g) {
            if (C0742b.m3000c(str2, str)) {
                return true;
            }
            if (z && C0742b.m3000c(str, str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    private boolean m2478a(String str, boolean z, boolean z2) {
        if (z2 && this.f2480f.f2471e != null) {
            Boolean bool = (Boolean) this.f2480f.f2471e.get(str);
            return bool != null && (z || bool.booleanValue());
        }
        if (this.f2480f.f2472f != null) {
            for (String str2 : this.f2480f.f2472f) {
                if (C0742b.m3000c(str2, str)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: b */
    private int m2479b(C0623e c0623e) {
        c0623e.f2424h = new ArrayList(64);
        int m2470a = m2470a(c0623e, false);
        ArrayList arrayList = c0623e.f2424h;
        c0623e.f2424h = null;
        if (m2470a > 0) {
            this.f2477c.obtainMessage(12, 0, 0, c0623e).sendToTarget();
        }
        boolean m2506d = QuickApp.f2072o.m2506d();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0623e c0623e2 = (C0623e) arrayList.get(size);
            String path = c0623e2.getPath();
            if (m2478a(path, false, true) || !m2477a(path, true)) {
                arrayList.remove(size);
            } else if (m2506d && c0623e2.f2421e == 0) {
                c0623e2.m2394n();
            }
        }
        C0742b.m2987a(arrayList, QuickApp.f2072o.f2498a);
        if (this.f2479e) {
            return 1;
        }
        return m2472a(arrayList, false, true, (Stack) null) + 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m2480b() {
        C0612b c0612b;
        C0612b c0612b2;
        C0612b c0612b3;
        C0612b c0612b4;
        C0612b c0612b5;
        C0612b c0612b6;
        C0612b c0612b7;
        C0612b c0612b8;
        C0612b c0612b9;
        C0612b c0612b10;
        ArrayList arrayList = (ArrayList) this.f2476b;
        c0612b = this.f2480f.f2467a.f2456h;
        HashMap g = c0612b.m2619g();
        c0612b2 = this.f2480f.f2467a.f2457i;
        HashMap g2 = c0612b2.m2619g();
        c0612b3 = this.f2480f.f2467a.f2456h;
        c0612b3.m2615d();
        c0612b4 = this.f2480f.f2467a.f2457i;
        c0612b4.m2615d();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C0623e c0623e = (C0623e) it.next();
            if (!c0623e.m2387h()) {
                String path = c0623e.getPath();
                C0585a c0585a = (C0585a) g2.get(path);
                if (c0585a == null) {
                    C0585a c0585a2 = (C0585a) g.get(path);
                    if (c0585a2 != null) {
                        c0612b10 = this.f2480f.f2467a.f2456h;
                        c0612b10.m2606a(path, c0585a2);
                    }
                } else if (this.f2478d && c0623e.m2369a(true)) {
                    c0612b9 = this.f2480f.f2467a.f2457i;
                    c0612b9.m2606a(path, c0585a);
                }
            }
        }
        c0612b5 = this.f2480f.f2467a.f2456h;
        c0612b6 = this.f2480f.f2467a.f2456h;
        c0612b5.m2607a(c0612b6.m2613c() != g.size());
        c0612b7 = this.f2480f.f2467a.f2457i;
        c0612b8 = this.f2480f.f2467a.f2457i;
        c0612b7.m2607a(c0612b8.m2613c() != g2.size());
        if (this.f2479e) {
            return;
        }
        m2472a(arrayList, true, false, (Stack) null);
    }

    /* renamed from: b */
    private void m2482b(ArrayList arrayList) {
        File file;
        C0623e c0623e;
        int m2962a;
        C0623e c0623e2;
        int m2962a2;
        C0660d c0660d = new C0660d(2048);
        file = this.f2480f.f2467a.f2458j;
        if (c0660d.m2608a(file)) {
            arrayList.ensureCapacity(arrayList.size() + c0660d.m2613c());
            Iterator it = c0660d.m2618f().iterator();
            while (it.hasNext()) {
                String str = (String) ((Map.Entry) it.next()).getKey();
                if (!m2478a(str, true, false) && m2477a(str, false) && (m2962a2 = C0742b.m2962a(arrayList, (c0623e2 = new C0623e(str, 0)), C0642x.f2497j)) < 0) {
                    arrayList.add((-m2962a2) - 1, c0623e2);
                }
            }
        }
        Iterator it2 = C0598am.m2182b().iterator();
        while (it2.hasNext()) {
            String str2 = (String) it2.next();
            if (!m2478a(str2, true, false) && m2477a(str2, false) && (m2962a = C0742b.m2962a(arrayList, (c0623e = new C0623e(str2, 0)), C0642x.f2497j)) < 0) {
                arrayList.add((-m2962a) - 1, c0623e);
            }
        }
        if (QuickApp.f2072o.m2506d()) {
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                ((C0623e) it3.next()).m2394n();
            }
        }
        C0742b.m2987a(arrayList, QuickApp.f2072o.f2498a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public int m2483c() {
        int m2479b;
        int i;
        C0612b c0612b;
        C0612b c0612b2;
        C0612b c0612b3;
        File file;
        C0612b c0612b4;
        File file2;
        C0620bh c0620bh = QuickApp.f2073p;
        boolean z = this.f2475a == 3;
        ArrayList m2413a = this.f2480f.f2469c.m2413a(true);
        ArrayList m2413a2 = this.f2480f.f2469c.m2413a(false);
        this.f2480f.f2471e = new HashMap(this.f2480f.f2474h.size() + m2413a.size());
        if (z) {
            Iterator it = this.f2480f.f2474h.iterator();
            while (it.hasNext()) {
                this.f2480f.f2471e.put((String) it.next(), false);
            }
        }
        Iterator it2 = m2413a.iterator();
        while (it2.hasNext()) {
            this.f2480f.f2471e.put((String) it2.next(), true);
        }
        if (this.f2480f.f2471e.isEmpty()) {
            this.f2480f.f2471e = null;
        } else {
            this.f2480f.f2472f = new String[this.f2480f.f2471e.size()];
            this.f2480f.f2471e.keySet().toArray(this.f2480f.f2472f);
        }
        if (m2413a2.isEmpty()) {
            this.f2480f.f2473g = null;
        } else {
            this.f2480f.f2473g = new String[m2413a2.size()];
            m2413a2.toArray(this.f2480f.f2473g);
        }
        if (z) {
            ArrayList arrayList = new ArrayList(128);
            ArrayList arrayList2 = new ArrayList(128);
            Iterator it3 = m2413a2.iterator();
            while (it3.hasNext()) {
                String str = (String) it3.next();
                C0623e c0623e = new C0623e(str, 0);
                if (c0623e.exists()) {
                    if (c0620bh.m2324a(str)) {
                        c0623e.f2422f = 0;
                    }
                    arrayList2.add(c0623e);
                }
            }
            if (arrayList2.isEmpty()) {
                for (String str2 : c0620bh.m2325a()) {
                    C0623e c0623e2 = new C0623e(str2, 0);
                    if (c0623e2.exists()) {
                        c0623e2.f2422f = 0;
                        arrayList2.add(c0623e2);
                    }
                }
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (this.f2478d) {
                m2475a(arrayList);
            } else {
                m2482b(arrayList);
            }
            if (arrayList.isEmpty()) {
                i = 0;
            } else {
                int m2472a = 0 + m2472a(arrayList, false, false, (Stack) null);
                long currentTimeMillis2 = System.currentTimeMillis();
                Log.d("FolderScanner", "prescan: " + m2472a + ", used=" + (currentTimeMillis2 - currentTimeMillis));
                this.f2477c.obtainMessage(14, 0, 0).sendToTarget();
                currentTimeMillis = currentTimeMillis2;
                i = m2472a;
            }
            Iterator it4 = arrayList2.iterator();
            m2479b = i;
            while (it4.hasNext()) {
                C0623e c0623e3 = (C0623e) it4.next();
                if (this.f2479e) {
                    break;
                }
                if (this.f2478d || !c0623e3.m2369a(false)) {
                    m2479b = m2469a(c0623e3) + m2479b;
                }
            }
            Log.d("FolderScanner", "scan: " + m2479b + ", used=" + (System.currentTimeMillis() - currentTimeMillis));
            if (!this.f2479e) {
                c0612b = this.f2480f.f2467a.f2456h;
                if (c0612b.m2617e()) {
                    c0612b4 = this.f2480f.f2467a.f2456h;
                    file2 = this.f2480f.f2467a.f2458j;
                    c0612b4.m2611b(file2);
                }
                if (this.f2478d) {
                    c0612b2 = this.f2480f.f2467a.f2457i;
                    if (c0612b2.m2617e()) {
                        c0612b3 = this.f2480f.f2467a.f2457i;
                        file = this.f2480f.f2467a.f2459k;
                        c0612b3.m2611b(file);
                    }
                }
            }
        } else {
            m2479b = this.f2476b != null ? 0 + m2479b(new C0623e((String) this.f2476b, 0)) : 0;
        }
        this.f2480f.f2471e = null;
        this.f2480f.f2472f = null;
        this.f2480f.f2473g = null;
        return m2479b;
    }
}
