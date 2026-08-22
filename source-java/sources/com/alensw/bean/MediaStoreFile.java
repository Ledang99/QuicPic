package com.alensw.bean;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.alensw.p022a.C0613ba;

/* loaded from: classes.dex */
public class MediaStoreFile extends CommonFile {
    public static final Parcelable.Creator CREATOR = new C0754k();

    /* renamed from: k */
    protected final int f2829k;

    /* renamed from: l */
    protected final String f2830l;

    public MediaStoreFile(char c, int i, String str, String str2, int i2, long j, long j2, long j3, String str3) {
        super(c, str, str2, i2, j, j2, j3, null, null);
        this.f2829k = i;
        this.f2830l = str3;
    }

    public MediaStoreFile(char c, int i, String str, String str2, int i2, long j, long j2, long j3, String str3, Uri uri) {
        super(c, str, str2, i2, j, j2, j3, null, uri);
        this.f2829k = i;
        this.f2830l = str3;
    }

    public MediaStoreFile(Parcel parcel, char c) {
        super(parcel, c);
        this.f2829k = parcel.readInt();
        this.f2830l = parcel.readString();
    }

    @Override // com.alensw.bean.CommonFile
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaStoreFile)) {
            return false;
        }
        MediaStoreFile mediaStoreFile = (MediaStoreFile) obj;
        return this.f2797g == mediaStoreFile.f2797g && this.f2792b == mediaStoreFile.f2792b && this.f2829k == mediaStoreFile.f2829k;
    }

    @Override // com.alensw.bean.CommonFile
    public int hashCode() {
        return this.f2829k + ((int) this.f2797g) + this.f2792b;
    }

    @Override // com.alensw.bean.CommonFile
    /* renamed from: i */
    public Uri mo3021i() {
        if (this.f2800j == null) {
            this.f2800j = C0613ba.m2269a(this.f2792b).buildUpon().appendEncodedPath(Integer.toString(this.f2829k)).build();
        }
        return this.f2800j;
    }

    @Override // com.alensw.bean.CommonFile
    /* renamed from: j */
    public String mo3022j() {
        return this.f2830l;
    }

    @Override // com.alensw.bean.CommonFile, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f2829k);
        parcel.writeString(this.f2830l);
    }
}
