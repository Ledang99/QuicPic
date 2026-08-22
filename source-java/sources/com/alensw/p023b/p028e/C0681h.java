package com.alensw.p023b.p028e;

import java.io.InputStream;
import java.nio.ByteBuffer;

/* renamed from: com.alensw.b.e.h */
/* loaded from: classes.dex */
public class C0681h {

    /* renamed from: a */
    public final long f2571a;

    /* renamed from: b */
    public final Object f2572b;

    /* renamed from: c */
    public final byte[] f2573c;

    public C0681h(Object obj, String... strArr) {
        if (obj instanceof ByteBuffer) {
            this.f2572b = obj;
            this.f2571a = ((ByteBuffer) this.f2572b).remaining();
        } else if (obj instanceof InputStream) {
            this.f2572b = obj;
            this.f2571a = ((InputStream) this.f2572b).available();
        } else {
            this.f2572b = obj.toString().getBytes("UTF-8");
            this.f2571a = ((byte[]) this.f2572b).length;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("--").append("**BOUNDARY**FDBF587B**").append("\r\n");
        for (int i = 0; i < strArr.length; i += 2) {
            sb.append(strArr[i]).append(": ").append(strArr[i + 1]).append("\r\n");
        }
        sb.append("\r\n");
        this.f2573c = sb.toString().getBytes("UTF-8");
    }
}
