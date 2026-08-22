package com.alensw.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: com.alensw.bean.j */
/* loaded from: classes.dex */
final class C0753j implements Parcelable.Creator {
    C0753j() {
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public LocalFolder createFromParcel(Parcel parcel) {
        return new LocalFolder(parcel, (char) parcel.readInt());
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public LocalFolder[] newArray(int i) {
        return new LocalFolder[i];
    }
}
