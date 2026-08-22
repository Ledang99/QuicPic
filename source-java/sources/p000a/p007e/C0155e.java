package p000a.p007e;

import java.io.PrintStream;

/* renamed from: a.e.e */
/* loaded from: classes.dex */
public class C0155e extends PrintStream {

    /* renamed from: a */
    public static int f728a = 1;

    /* renamed from: b */
    private static C0155e f729b;

    public C0155e(PrintStream printStream) {
        super(printStream);
    }

    /* renamed from: a */
    public static C0155e m381a() {
        if (f729b == null) {
            m382a(System.err);
        }
        return f729b;
    }

    /* renamed from: a */
    public static void m382a(PrintStream printStream) {
        f729b = new C0155e(printStream);
    }
}
