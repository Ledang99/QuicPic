package p012b.p013a;

import java.io.PrintWriter;
import java.io.StringWriter;

/* renamed from: b.a.g */
/* loaded from: classes.dex */
public class C0377g extends C0244bb implements InterfaceC0450is {
    public C0377g() {
        m771a(System.currentTimeMillis());
        m772a(EnumC0251bi.LEGIT);
    }

    public C0377g(Throwable th) {
        this();
        m773a(m1253a(th));
    }

    /* renamed from: a */
    private String m1253a(Throwable th) {
        String str = null;
        if (th == null) {
            return null;
        }
        try {
            StringWriter stringWriter = new StringWriter();
            PrintWriter printWriter = new PrintWriter(stringWriter);
            th.printStackTrace(printWriter);
            for (Throwable cause = th.getCause(); cause != null; cause = cause.getCause()) {
                cause.printStackTrace(printWriter);
            }
            str = stringWriter.toString();
            printWriter.close();
            stringWriter.close();
            return str;
        } catch (Exception e) {
            e.printStackTrace();
            return str;
        }
    }

    @Override // p012b.p013a.InterfaceC0450is
    /* renamed from: a */
    public void mo1101a(C0366fp c0366fp, String str) {
        if (c0366fp.m1185b() > 0) {
            for (C0297da c0297da : c0366fp.m1188c()) {
                if (str.equals(c0297da.m933a())) {
                    break;
                }
            }
        }
        c0297da = null;
        if (c0297da == null) {
            c0297da = new C0297da();
            c0297da.m932a(str);
            c0366fp.m1181a(c0297da);
        }
        c0297da.m934a(this);
    }
}
