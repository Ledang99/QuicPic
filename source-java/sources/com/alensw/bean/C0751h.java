package com.alensw.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: com.alensw.bean.h */
/* loaded from: classes.dex */
final class C0751h implements Parcelable.Creator {
    C0751h() {
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public DocumentFolder createFromParcel(Parcel parcel) {
        return new DocumentFolder(parcel, (char) parcel.readInt());
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public DocumentFolder[] newArray(int i) {
        return new DocumentFolder[i];
    }
}
