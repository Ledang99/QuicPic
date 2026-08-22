package p012b.p013a;

import com.p045c.p046a.C1398a;
import java.lang.Thread;

/* renamed from: b.a.ip */
/* loaded from: classes.dex */
public class C0447ip implements Thread.UncaughtExceptionHandler {

    /* renamed from: a */
    private Thread.UncaughtExceptionHandler f1596a;

    /* renamed from: b */
    private InterfaceC0454iw f1597b;

    public C0447ip() {
        if (Thread.getDefaultUncaughtExceptionHandler() == this) {
            return;
        }
        this.f1596a = Thread.getDefaultUncaughtExceptionHandler();
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    /* renamed from: a */
    private void m1482a(Throwable th) {
        if (C1398a.f4963k) {
            this.f1597b.mo1508a(th);
        } else {
            this.f1597b.mo1508a(null);
        }
    }

    /* renamed from: a */
    public void m1483a(InterfaceC0454iw interfaceC0454iw) {
        this.f1597b = interfaceC0454iw;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        m1482a(th);
        if (this.f1596a == null || this.f1596a == Thread.getDefaultUncaughtExceptionHandler()) {
            return;
        }
        this.f1596a.uncaughtException(thread, th);
    }
}
