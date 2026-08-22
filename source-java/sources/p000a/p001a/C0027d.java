package p000a.p001a;

import java.io.IOException;
import p000a.p007e.C0154d;

/* renamed from: a.a.d */
/* loaded from: classes.dex */
public class C0027d extends IOException {

    /* renamed from: a */
    private int f58a;

    C0027d(int i) {
        super(m44a(i));
        this.f58a = i;
    }

    public C0027d(String str) {
        super(str);
    }

    /* renamed from: a */
    static String m44a(int i) {
        return "0x" + C0154d.m378a(i, 8);
    }
}
