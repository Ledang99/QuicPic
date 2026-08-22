package com.alensw.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: com.alensw.bean.m */
/* loaded from: classes.dex */
final class C0756m implements Parcelable.Creator {
    C0756m() {
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public MediaStoreFolder createFromParcel(Parcel parcel) {
        return new MediaStoreFolder(parcel, (char) parcel.readInt());
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public MediaStoreFolder[] newArray(int i) {
        return new MediaStoreFolder[i];
    }
}
