package com.alensw.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: com.alensw.bean.i */
/* loaded from: classes.dex */
final class C0752i implements Parcelable.Creator {
    C0752i() {
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public LocalFile createFromParcel(Parcel parcel) {
        return new LocalFile(parcel, (char) parcel.readInt());
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public LocalFile[] newArray(int i) {
        return new LocalFile[i];
    }
}
