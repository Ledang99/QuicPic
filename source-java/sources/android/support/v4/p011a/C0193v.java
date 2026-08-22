package android.support.v4.p011a;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* renamed from: android.support.v4.a.v */
/* loaded from: classes.dex */
public class C0193v extends ViewGroup.LayoutParams {

    /* renamed from: a */
    public boolean f842a;

    /* renamed from: b */
    public int f843b;

    /* renamed from: c */
    float f844c;

    /* renamed from: d */
    boolean f845d;

    /* renamed from: e */
    int f846e;

    /* renamed from: f */
    int f847f;

    public C0193v() {
        super(-1, -1);
        this.f844c = 0.0f;
    }

    public C0193v(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int[] iArr;
        this.f844c = 0.0f;
        iArr = C0187p.f778a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        this.f843b = obtainStyledAttributes.getInteger(0, 48);
        obtainStyledAttributes.recycle();
    }
}
