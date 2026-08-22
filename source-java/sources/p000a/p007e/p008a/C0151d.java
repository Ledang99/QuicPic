package p000a.p007e.p008a;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;

/* renamed from: a.e.a.d */
/* loaded from: classes.dex */
public class C0151d extends IOException {

    /* renamed from: a */
    private Throwable f720a;

    public C0151d() {
    }

    public C0151d(String str) {
        super(str);
    }

    public C0151d(String str, Throwable th) {
        super(str);
        this.f720a = th;
    }

    public C0151d(Throwable th) {
        this.f720a = th;
    }

    /* renamed from: a */
    public Throwable m370a() {
        return this.f720a;
    }

    @Override // java.lang.Throwable
    public String toString() {
        if (this.f720a == null) {
            return super.toString();
        }
        StringWriter stringWriter = new StringWriter();
        this.f720a.printStackTrace(new PrintWriter(stringWriter));
        return super.toString() + "\n" + stringWriter;
    }
}
