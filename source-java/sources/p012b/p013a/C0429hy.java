package p012b.p013a;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* renamed from: b.a.hy */
/* loaded from: classes.dex */
public class C0429hy extends AbstractC0432ia {

    /* renamed from: a */
    protected InputStream f1551a;

    /* renamed from: b */
    protected OutputStream f1552b;

    protected C0429hy() {
        this.f1551a = null;
        this.f1552b = null;
    }

    public C0429hy(OutputStream outputStream) {
        this.f1551a = null;
        this.f1552b = null;
        this.f1552b = outputStream;
    }

    @Override // p012b.p013a.AbstractC0432ia
    /* renamed from: a */
    public int mo1421a(byte[] bArr, int i, int i2) {
        if (this.f1551a == null) {
            throw new C0433ib(1, "Cannot read from null inputStream");
        }
        try {
            int read = this.f1551a.read(bArr, i, i2);
            if (read < 0) {
                throw new C0433ib(4);
            }
            return read;
        } catch (IOException e) {
            throw new C0433ib(0, e);
        }
    }

    @Override // p012b.p013a.AbstractC0432ia
    /* renamed from: b */
    public void mo1422b(byte[] bArr, int i, int i2) {
        if (this.f1552b == null) {
            throw new C0433ib(1, "Cannot write to null outputStream");
        }
        try {
            this.f1552b.write(bArr, i, i2);
        } catch (IOException e) {
            throw new C0433ib(0, e);
        }
    }
}
