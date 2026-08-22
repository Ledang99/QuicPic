package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* renamed from: android.support.v4.widget.e */
/* loaded from: classes.dex */
public class C0202e extends ViewGroup.MarginLayoutParams {

    /* renamed from: a */
    public int f876a;

    /* renamed from: b */
    float f877b;

    /* renamed from: c */
    boolean f878c;

    /* renamed from: d */
    boolean f879d;

    /* renamed from: e */
    int f880e;

    public C0202e(int i, int i2) {
        super(i, i2);
        this.f876a = 0;
        this.f880e = 0;
    }

    public C0202e(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int[] iArr;
        this.f876a = 0;
        this.f880e = 0;
        iArr = DrawerLayout.f850b;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        this.f876a = obtainStyledAttributes.getInt(0, 0);
        obtainStyledAttributes.recycle();
    }

    public C0202e(C0202e c0202e) {
        super((ViewGroup.MarginLayoutParams) c0202e);
        this.f876a = 0;
        this.f880e = 0;
        this.f876a = c0202e.f876a;
    }

    public C0202e(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f876a = 0;
        this.f880e = 0;
    }

    public C0202e(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f876a = 0;
        this.f880e = 0;
    }
}
