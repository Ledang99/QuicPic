package com.p045c.p046a;

/* renamed from: com.c.a.s */
/* loaded from: classes.dex */
public abstract class AbstractRunnableC1419s implements Runnable {
    /* renamed from: a */
    public abstract void mo1470a();

    @Override // java.lang.Runnable
    public void run() {
        try {
            mo1470a();
        } catch (Throwable th) {
            if (th != null) {
                th.printStackTrace();
            }
        }
    }
}
