package com.alensw.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: com.alensw.bean.k */
/* loaded from: classes.dex */
final class C0754k implements Parcelable.Creator {
    C0754k() {
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public MediaStoreFile createFromParcel(Parcel parcel) {
        return new MediaStoreFile(parcel, (char) parcel.readInt());
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public MediaStoreFile[] newArray(int i) {
        return new MediaStoreFile[i];
    }
}
