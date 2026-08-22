package android.support.v4.p011a;

import android.view.View;
import java.util.Comparator;

/* renamed from: android.support.v4.a.aa */
/* loaded from: classes.dex */
class C0172aa implements Comparator {
    C0172aa() {
    }

    @Override // java.util.Comparator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compare(View view, View view2) {
        C0193v c0193v = (C0193v) view.getLayoutParams();
        C0193v c0193v2 = (C0193v) view2.getLayoutParams();
        return c0193v.f842a != c0193v2.f842a ? c0193v.f842a ? 1 : -1 : c0193v.f846e - c0193v2.f846e;
    }
}
