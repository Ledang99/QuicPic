package com.alensw.p023b.p027d;

import android.content.Context;
import com.alensw.p023b.p024a.AbstractC0651g;
import com.alensw.p023b.p026c.C0658b;
import java.io.RandomAccessFile;

/* renamed from: com.alensw.b.d.d */
/* loaded from: classes.dex */
public class C0668d extends AbstractC0651g {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alensw.p023b.p024a.AbstractC0651g
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void mo2551a(RandomAccessFile randomAccessFile, String str) {
        randomAccessFile.writeUTF(str);
    }

    /* renamed from: a */
    public boolean m2628a(Context context) {
        return super.m2553a(C0658b.m2563a(context), "geocode");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alensw.p023b.p024a.AbstractC0651g
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public String mo2549a(RandomAccessFile randomAccessFile) {
        return randomAccessFile.readUTF();
    }
}
