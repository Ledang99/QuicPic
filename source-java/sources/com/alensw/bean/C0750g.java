package com.alensw.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: com.alensw.bean.g */
/* loaded from: classes.dex */
final class C0750g implements Parcelable.Creator {
    C0750g() {
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public DocumentFile createFromParcel(Parcel parcel) {
        return new DocumentFile(parcel, (char) parcel.readInt());
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public DocumentFile[] newArray(int i) {
        return new DocumentFile[i];
    }
}
