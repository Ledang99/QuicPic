package com.alensw.bean;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.alensw.cloud.EnumC0963z;

/* loaded from: classes.dex */
public class CommonRoot extends CommonFile {

    /* renamed from: k */
    public EnumC0963z f2811k;

    /* renamed from: l */
    public int f2812l;

    /* renamed from: m */
    public int f2813m;

    /* renamed from: n */
    public String f2814n;

    /* renamed from: o */
    public String f2815o;

    /* renamed from: p */
    public Drawable f2816p;

    public CommonRoot(String str, String str2, int i) {
        super((char) 0, str, str2, i, 0L, 0L, 0L, null, null);
    }

    @Override // com.alensw.bean.CommonFile
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CommonRoot)) {
            return false;
        }
        CommonRoot commonRoot = (CommonRoot) obj;
        if (this.f2814n != null) {
            return this.f2814n == commonRoot.f2814n || this.f2814n.equals(commonRoot.f2814n);
        }
        Uri i = mo3021i();
        Uri i2 = commonRoot.mo3021i();
        return i == i2 || i.equals(i2);
    }

    /* renamed from: k */
    public CommonFolder mo3052k() {
        return new CommonFolder(this);
    }
}
