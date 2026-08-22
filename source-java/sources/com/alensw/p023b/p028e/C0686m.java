package com.alensw.p023b.p028e;

import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.entity.InputStreamEntity;

/* renamed from: com.alensw.b.e.m */
/* loaded from: classes.dex */
final class C0686m extends InputStreamEntity {
    C0686m(InputStream inputStream, long j) {
        super(inputStream, j);
    }

    @Override // org.apache.http.entity.InputStreamEntity, org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) {
        int read;
        InputStream content = getContent();
        long contentLength = getContentLength();
        try {
            byte[] bArr = new byte[16384];
            if (contentLength < 0) {
                while (true) {
                    int read2 = content.read(bArr);
                    if (read2 == -1) {
                        break;
                    } else {
                        outputStream.write(bArr, 0, read2);
                    }
                }
            } else {
                while (contentLength > 0 && (read = content.read(bArr, 0, (int) Math.min(bArr.length, contentLength))) != -1) {
                    if (read > 0) {
                        outputStream.write(bArr, 0, read);
                    }
                    contentLength -= read;
                }
            }
        } finally {
            content.close();
        }
    }
}
