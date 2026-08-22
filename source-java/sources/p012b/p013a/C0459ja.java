package p012b.p013a;

import com.p045c.p046a.InterfaceC1423w;
import java.io.File;
import java.io.FileInputStream;

/* renamed from: b.a.ja */
/* loaded from: classes.dex */
class C0459ja implements InterfaceC1423w {

    /* renamed from: a */
    final /* synthetic */ C0457iz f1625a;

    C0459ja(C0457iz c0457iz) {
        this.f1625a = c0457iz;
    }

    @Override // com.p045c.p046a.InterfaceC1423w
    /* renamed from: a */
    public void mo1529a(File file) {
    }

    @Override // com.p045c.p046a.InterfaceC1423w
    /* renamed from: b */
    public boolean mo1530b(File file) {
        FileInputStream fileInputStream;
        C0453iv c0453iv;
        boolean z;
        C0242b c0242b;
        C0242b c0242b2;
        try {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    byte[] m1305b = C0385gh.m1305b(fileInputStream);
                    C0385gh.m1306c(fileInputStream);
                    c0453iv = this.f1625a.f1619f;
                    byte[] m1507a = c0453iv.m1507a(m1305b);
                    int m1512a = m1507a == null ? 1 : this.f1625a.m1512a(m1507a);
                    if (m1512a == 2) {
                        c0242b = this.f1625a.f1618e;
                        if (c0242b.m759h()) {
                            c0242b2 = this.f1625a.f1618e;
                            c0242b2.m758g();
                        }
                    }
                    z = this.f1625a.f1622i;
                    return z || m1512a != 1;
                } catch (Throwable th) {
                    th = th;
                    C0385gh.m1306c(fileInputStream);
                    throw th;
                }
            } catch (Exception e) {
                return false;
            }
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
    }

    @Override // com.p045c.p046a.InterfaceC1423w
    /* renamed from: c */
    public void mo1531c(File file) {
        C0242b c0242b;
        c0242b = this.f1625a.f1618e;
        c0242b.m757f();
    }
}
