package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.widget.DrawerLayout;

/* renamed from: android.support.v4.widget.f */
/* loaded from: classes.dex */
final class C0203f implements Parcelable.Creator {
    C0203f() {
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public DrawerLayout.SavedState createFromParcel(Parcel parcel) {
        return new DrawerLayout.SavedState(parcel);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public DrawerLayout.SavedState[] newArray(int i) {
        return new DrawerLayout.SavedState[i];
    }
}
