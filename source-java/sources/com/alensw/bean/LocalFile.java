package com.alensw.bean;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;

/* loaded from: classes.dex */
public class LocalFile extends CommonFile {
    public static final Parcelable.Creator CREATOR = new C0752i();

    /* renamed from: k */
    protected final String f2826k;

    public LocalFile(char c, String str, String str2, String str3, int i, long j, long j2, long j3) {
        super(c, str2, str3, i, j, j2, j3, null, null);
        this.f2826k = str;
    }

    public LocalFile(Parcel parcel, char c) {
        super(parcel, c);
        this.f2826k = parcel.readString();
    }

    @Override // com.alensw.bean.CommonFile
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocalFile)) {
            return false;
        }
        LocalFile localFile = (LocalFile) obj;
        return this.f2797g == localFile.f2797g && this.f2792b == localFile.f2792b && (this.f2793c == localFile.f2793c || this.f2793c.equals(localFile.f2793c)) && (this.f2826k == localFile.f2826k || this.f2826k.equals(localFile.f2826k));
    }

    @Override // com.alensw.bean.CommonFile
    public int hashCode() {
        return (this.f2826k != null ? this.f2826k.hashCode() : 0) + this.f2793c.hashCode() + ((int) this.f2797g);
    }

    @Override // com.alensw.bean.CommonFile
    /* renamed from: i */
    public Uri mo3021i() {
        if (this.f2800j == null) {
            this.f2800j = Uri.fromFile(new File(this.f2826k, this.f2793c));
        }
        return this.f2800j;
    }

    @Override // com.alensw.bean.CommonFile
    /* renamed from: j */
    public String mo3022j() {
        return C0742b.m3006e(this.f2826k) + this.f2793c;
    }

    @Override // com.alensw.bean.CommonFile, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f2826k);
    }
}
