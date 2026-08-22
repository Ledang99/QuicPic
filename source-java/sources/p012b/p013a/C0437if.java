package p012b.p013a;

import android.os.Build;

/* renamed from: b.a.if */
/* loaded from: classes.dex */
public class C0437if extends AbstractC0215a {
    public C0437if() {
        super("serial");
    }

    @Override // p012b.p013a.AbstractC0215a
    /* renamed from: f */
    public String mo629f() {
        if (Build.VERSION.SDK_INT >= 9) {
            return Build.SERIAL;
        }
        return null;
    }
}
