package com.alensw.p023b.p034k;

/* renamed from: com.alensw.b.k.c */
/* loaded from: classes.dex */
public class C0732c extends Thread {

    /* renamed from: a */
    private volatile boolean f2771a;

    /* renamed from: a */
    public void m2938a(Object obj) {
        this.f2771a = true;
        if (obj != null) {
            try {
                synchronized (obj) {
                    obj.notifyAll();
                }
            } catch (Throwable th) {
                return;
            }
        }
        synchronized (this) {
            super.notifyAll();
        }
        super.join();
    }

    /* renamed from: a */
    protected boolean m2939a(int i) {
        if (i > 0 && !this.f2771a) {
            try {
                synchronized (this) {
                    super.wait(i);
                }
            } catch (Throwable th) {
            }
        }
        return this.f2771a;
    }

    @Override // java.lang.Thread
    public synchronized void start() {
        this.f2771a = false;
        try {
            super.start();
        } catch (Throwable th) {
        }
    }
}
