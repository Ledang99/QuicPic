package p000a.p007e.p008a;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import p000a.p007e.C0155e;

/* renamed from: a.e.a.c */
/* loaded from: classes.dex */
public abstract class AbstractRunnableC0150c implements Runnable {

    /* renamed from: B */
    static int f713B = 0;

    /* renamed from: C */
    static C0155e f714C = C0155e.m381a();

    /* renamed from: D */
    int f715D = 0;

    /* renamed from: E */
    String f716E;

    /* renamed from: F */
    Thread f717F;

    /* renamed from: G */
    C0151d f718G;

    /* renamed from: H */
    protected HashMap f719H;

    public AbstractRunnableC0150c() {
        StringBuilder append = new StringBuilder().append("Transport");
        int i = f713B;
        f713B = i + 1;
        this.f716E = append.append(i).toString();
        this.f719H = new HashMap(4);
    }

    /* renamed from: a */
    public static int m365a(InputStream inputStream, byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            int read = inputStream.read(bArr, i + i3, i2 - i3);
            if (read <= 0) {
                break;
            }
            i3 += read;
        }
        return i3;
    }

    /* renamed from: a */
    private void m366a() {
        InterfaceC0148a mo284d;
        while (this.f717F == Thread.currentThread()) {
            try {
                mo284d = mo284d();
            } catch (Exception e) {
                String message = e.getMessage();
                boolean z = message != null && message.equals("Read timed out");
                boolean z2 = !z;
                if (!z) {
                    C0155e c0155e = f714C;
                    if (C0155e.f728a >= 3) {
                        e.printStackTrace(f714C);
                    }
                }
                try {
                    m369b(z2);
                } catch (IOException e2) {
                    e2.printStackTrace(f714C);
                }
            }
            if (mo284d == null) {
                throw new IOException("end of stream");
            }
            synchronized (this) {
                AbstractC0149b abstractC0149b = (AbstractC0149b) this.f719H.get(mo284d);
                if (abstractC0149b == null) {
                    C0155e c0155e2 = f714C;
                    if (C0155e.f728a >= 4) {
                        f714C.println("Invalid key, skipping message");
                    }
                    mo285e();
                } else {
                    mo273a(abstractC0149b);
                    abstractC0149b.f712b_ = true;
                    notifyAll();
                }
            }
        }
    }

    /* renamed from: a */
    public synchronized void m367a(long j) {
        try {
            try {
                switch (this.f715D) {
                    case 0:
                        this.f715D = 1;
                        this.f718G = null;
                        this.f717F = new Thread(this, this.f716E);
                        this.f717F.setDaemon(true);
                        synchronized (this.f717F) {
                            this.f717F.start();
                            this.f717F.wait(j);
                            switch (this.f715D) {
                                case 1:
                                    this.f715D = 0;
                                    this.f717F = null;
                                    throw new C0151d("Connection timeout");
                                case 2:
                                    if (this.f718G == null) {
                                        this.f715D = 3;
                                        if (this.f715D != 0 && this.f715D != 3 && this.f715D != 4) {
                                            C0155e c0155e = f714C;
                                            if (C0155e.f728a >= 1) {
                                                f714C.println("Invalid state: " + this.f715D);
                                            }
                                            this.f715D = 0;
                                            this.f717F = null;
                                            break;
                                        }
                                    } else {
                                        this.f715D = 4;
                                        this.f717F = null;
                                        throw this.f718G;
                                    }
                                    break;
                                default:
                                    if (this.f715D != 0 && this.f715D != 3 && this.f715D != 4) {
                                        C0155e c0155e2 = f714C;
                                        if (C0155e.f728a >= 1) {
                                            f714C.println("Invalid state: " + this.f715D);
                                        }
                                        this.f715D = 0;
                                        this.f717F = null;
                                        break;
                                    }
                                    break;
                            }
                        }
                    case 1:
                    case 2:
                    default:
                        C0151d c0151d = new C0151d("Invalid state: " + this.f715D);
                        this.f715D = 0;
                        throw c0151d;
                    case 3:
                        if (this.f715D != 0 && this.f715D != 3 && this.f715D != 4) {
                            C0155e c0155e3 = f714C;
                            if (C0155e.f728a >= 1) {
                                f714C.println("Invalid state: " + this.f715D);
                            }
                            this.f715D = 0;
                            this.f717F = null;
                            break;
                        }
                        break;
                    case 4:
                        this.f715D = 0;
                        throw new C0151d("Connection in error", this.f718G);
                }
            } catch (InterruptedException e) {
                this.f715D = 0;
                this.f717F = null;
                throw new C0151d(e);
            }
        } catch (Throwable th) {
            if (this.f715D != 0 && this.f715D != 3 && this.f715D != 4) {
                C0155e c0155e4 = f714C;
                if (C0155e.f728a >= 1) {
                    f714C.println("Invalid state: " + this.f715D);
                }
                this.f715D = 0;
                this.f717F = null;
            }
            throw th;
        }
    }

    /* renamed from: a */
    protected abstract void mo272a(InterfaceC0148a interfaceC0148a);

    /* renamed from: a */
    public synchronized void m368a(InterfaceC0148a interfaceC0148a, AbstractC0149b abstractC0149b, long j) {
        mo272a(interfaceC0148a);
        abstractC0149b.f712b_ = false;
        try {
            try {
                this.f719H.put(interfaceC0148a, abstractC0149b);
                mo279b(interfaceC0148a);
                abstractC0149b.f711a_ = System.currentTimeMillis() + j;
                while (!abstractC0149b.f712b_) {
                    wait(j);
                    j = abstractC0149b.f711a_ - System.currentTimeMillis();
                    if (j <= 0) {
                        throw new C0151d(this.f716E + " timedout waiting for response to " + interfaceC0148a);
                    }
                }
            } catch (IOException e) {
                C0155e c0155e = f714C;
                if (C0155e.f728a > 2) {
                    e.printStackTrace(f714C);
                }
                try {
                    m369b(true);
                } catch (IOException e2) {
                    e2.printStackTrace(f714C);
                }
                throw e;
            } catch (InterruptedException e3) {
                throw new C0151d(e3);
            }
        } finally {
            this.f719H.remove(interfaceC0148a);
        }
    }

    /* renamed from: a */
    protected abstract void mo273a(AbstractC0149b abstractC0149b);

    /* renamed from: a */
    protected abstract void mo275a(boolean z);

    /* renamed from: b */
    protected abstract void mo279b(InterfaceC0148a interfaceC0148a);

    /* JADX WARN: Removed duplicated region for block: B:11:0x0030 A[Catch: all -> 0x0031, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:5:0x0005, B:6:0x0008, B:8:0x000e, B:9:0x0028, B:11:0x0030, B:15:0x0035, B:19:0x003f, B:23:0x0043), top: B:3:0x0003 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void m369b(boolean z) {
        IOException e = null;
        synchronized (this) {
            switch (this.f715D) {
                case 0:
                    break;
                case 1:
                default:
                    C0155e c0155e = f714C;
                    if (C0155e.f728a >= 1) {
                        f714C.println("Invalid state: " + this.f715D);
                    }
                    this.f717F = null;
                    this.f715D = 0;
                    if (e != null) {
                        throw e;
                    }
                    break;
                case 2:
                    z = true;
                case 3:
                    if (this.f719H.size() == 0 || z) {
                        try {
                            mo275a(z);
                        } catch (IOException e2) {
                            e = e2;
                        }
                    }
                    if (e != null) {
                    }
                    break;
                case 4:
                    this.f717F = null;
                    this.f715D = 0;
                    if (e != null) {
                    }
                    break;
            }
        }
    }

    /* renamed from: c */
    protected abstract void mo282c();

    /* renamed from: d */
    protected abstract InterfaceC0148a mo284d();

    /* renamed from: e */
    protected abstract void mo285e();

    @Override // java.lang.Runnable
    public void run() {
        Thread currentThread = Thread.currentThread();
        Exception exc = null;
        try {
            mo282c();
            synchronized (currentThread) {
                if (currentThread != this.f717F) {
                    if (0 != 0) {
                        C0155e c0155e = f714C;
                        if (C0155e.f728a >= 2) {
                            exc.printStackTrace(f714C);
                        }
                    }
                    return;
                }
                if (0 != 0) {
                    this.f718G = new C0151d((Throwable) null);
                }
                this.f715D = 2;
                currentThread.notify();
                m366a();
            }
        } catch (Exception e) {
            synchronized (currentThread) {
                if (currentThread != this.f717F) {
                    if (e != null) {
                        C0155e c0155e2 = f714C;
                        if (C0155e.f728a >= 2) {
                            e.printStackTrace(f714C);
                        }
                    }
                    return;
                }
                if (e != null) {
                    this.f718G = new C0151d(e);
                }
                this.f715D = 2;
                currentThread.notify();
            }
        } catch (Throwable th) {
            synchronized (currentThread) {
                if (currentThread != this.f717F) {
                    if (0 != 0) {
                        C0155e c0155e3 = f714C;
                        if (C0155e.f728a >= 2) {
                            exc.printStackTrace(f714C);
                        }
                    }
                    return;
                }
                if (0 != 0) {
                    this.f718G = new C0151d((Throwable) null);
                }
                this.f715D = 2;
                currentThread.notify();
                throw th;
            }
        }
    }

    public String toString() {
        return this.f716E;
    }
}
