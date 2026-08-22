package p012b.p013a;

import java.io.ByteArrayOutputStream;
import java.util.zip.Deflater;

/* renamed from: b.a.gg */
/* loaded from: classes.dex */
public class C0384gg {

    /* renamed from: a */
    public static int f1472a;

    /* renamed from: a */
    public static byte[] m1298a(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        Deflater deflater = new Deflater();
        deflater.setInput(bArr);
        deflater.finish();
        byte[] bArr2 = new byte[8192];
        f1472a = 0;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            while (!deflater.finished()) {
                try {
                    int deflate = deflater.deflate(bArr2);
                    f1472a += deflate;
                    byteArrayOutputStream.write(bArr2, 0, deflate);
                } catch (Throwable th2) {
                    th = th2;
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    throw th;
                }
            }
            deflater.end();
            if (byteArrayOutputStream != null) {
                byteArrayOutputStream.close();
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Throwable th3) {
            byteArrayOutputStream = null;
            th = th3;
        }
    }
}
