package com.alensw.p038ui.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import com.alensw.PicFolder.R;

@SuppressLint({"Instantiatable"})
/* loaded from: classes.dex */
class ActionLayout extends LinearLayout {

    /* renamed from: a */
    private int f4336a;

    public ActionLayout(Context context) {
        this(context, null);
    }

    public ActionLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4336a = getResources().getDimensionPixelSize(R.dimen.button_padding);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int i5 = i3 - i;
        int i6 = i4 - i2;
        if (i5 <= 0 || i6 <= 0 || getLayoutParams().width != -1) {
            return;
        }
        int childCount = getChildCount();
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                i8 += childAt.getWidth();
                i7++;
            }
        }
        if (i7 > 0) {
            int max = Math.max(Math.min((i5 - i8) / i7, this.f4336a), 0);
            int i10 = ((i5 - i8) - (max * i7)) / (i7 > 1 ? i7 - 1 : 1);
            int i11 = i7 == 1 ? (i5 - i8) / 2 : 0;
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt2 = getChildAt(i12);
                if (childAt2.getVisibility() != 8) {
                    int width = childAt2.getWidth() + max;
                    if (i12 == childCount - 1) {
                        childAt2.layout(i5 - width, 0, i5, i6);
                    } else {
                        childAt2.layout(i11, 0, i11 + width, i6);
                        i11 += width + i10;
                    }
                }
            }
        }
    }
}
