package com.p043b.p044a;

import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import java.util.ArrayList;

/* renamed from: com.b.a.f */
/* loaded from: classes.dex */
class C1391f {

    /* renamed from: a */
    String f4892a;

    /* renamed from: b */
    String f4893b;

    /* renamed from: c */
    boolean f4894c;

    /* renamed from: d */
    float f4895d;

    /* renamed from: e */
    float f4896e;

    /* renamed from: f */
    float f4897f;

    /* renamed from: g */
    float f4898g;

    /* renamed from: h */
    float f4899h;

    /* renamed from: i */
    float f4900i;

    /* renamed from: j */
    float f4901j;

    /* renamed from: k */
    ArrayList f4902k;

    /* renamed from: l */
    ArrayList f4903l;

    /* renamed from: m */
    Matrix f4904m;

    /* renamed from: n */
    Shader f4905n;

    private C1391f() {
        this.f4902k = new ArrayList();
        this.f4903l = new ArrayList();
        this.f4904m = null;
        this.f4905n = null;
    }

    /* renamed from: a */
    public Shader m4525a() {
        if (this.f4905n != null) {
            return this.f4905n;
        }
        int[] iArr = new int[this.f4903l.size()];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = ((Integer) this.f4903l.get(i)).intValue();
        }
        float[] fArr = new float[this.f4902k.size()];
        for (int i2 = 0; i2 < fArr.length; i2++) {
            fArr[i2] = ((Float) this.f4902k.get(i2)).floatValue();
        }
        if (this.f4894c) {
            this.f4905n = new LinearGradient(this.f4895d, this.f4896e, this.f4897f, this.f4898g, iArr, fArr, Shader.TileMode.CLAMP);
        } else {
            this.f4905n = new RadialGradient(this.f4899h, this.f4900i, this.f4901j, iArr, fArr, Shader.TileMode.CLAMP);
        }
        if (this.f4904m != null) {
            this.f4905n.setLocalMatrix(this.f4904m);
        }
        return this.f4905n;
    }

    /* renamed from: a */
    public C1391f m4526a(C1391f c1391f) {
        C1391f c1391f2 = new C1391f();
        c1391f2.f4892a = c1391f.f4892a;
        c1391f2.f4893b = this.f4892a;
        c1391f2.f4894c = c1391f.f4894c;
        c1391f2.f4895d = c1391f.f4895d;
        c1391f2.f4897f = c1391f.f4897f;
        c1391f2.f4896e = c1391f.f4896e;
        c1391f2.f4898g = c1391f.f4898g;
        c1391f2.f4899h = c1391f.f4899h;
        c1391f2.f4900i = c1391f.f4900i;
        c1391f2.f4901j = c1391f.f4901j;
        c1391f2.f4902k = this.f4902k;
        c1391f2.f4903l = this.f4903l;
        c1391f2.f4904m = this.f4904m;
        if (c1391f.f4904m != null) {
            if (this.f4904m == null) {
                c1391f2.f4904m = c1391f.f4904m;
            } else {
                Matrix matrix = new Matrix(this.f4904m);
                matrix.preConcat(c1391f.f4904m);
                c1391f2.f4904m = matrix;
            }
        }
        return c1391f2;
    }
}
