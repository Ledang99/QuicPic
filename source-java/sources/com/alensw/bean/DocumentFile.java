package com.alensw.bean;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.alensw.p023b.p033j.C0725a;

/* loaded from: classes.dex */
public class DocumentFile extends CommonFile {
    public static final Parcelable.Creator CREATOR = new C0750g();

    /* renamed from: k */
    protected final String f2817k;

    /* renamed from: l */
    protected final String f2818l;

    public DocumentFile(char c, String str, String str2, String str3, String str4, int i, long j, long j2, long j3, String str5) {
        super(c, str3, str4, i, j, j2, j3, str5, null);
        this.f2817k = str;
        this.f2818l = str2 == null ? "" : str2;
    }

    public DocumentFile(char c, String str, String str2, String str3, String str4, int i, long j, long j2, long j3, String str5, Uri uri) {
        super(c, str3, str4, i, j, j2, j3, str5, uri);
        this.f2817k = str;
        this.f2818l = str2 == null ? "" : str2;
    }

    public DocumentFile(Parcel parcel, char c) {
        super(parcel, c);
        this.f2817k = parcel.readString();
        this.f2818l = parcel.readString();
    }

    @Override // com.alensw.bean.CommonFile
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DocumentFile)) {
            return false;
        }
        DocumentFile documentFile = (DocumentFile) obj;
        return this.f2797g == documentFile.f2797g && this.f2792b == documentFile.f2792b && (this.f2818l == documentFile.f2818l || this.f2818l.equals(documentFile.f2818l));
    }

    @Override // com.alensw.bean.CommonFile
    public int hashCode() {
        return this.f2818l.hashCode() + ((int) this.f2797g) + this.f2792b;
    }

    @Override // com.alensw.bean.CommonFile
    /* renamed from: i */
    public Uri mo3021i() {
        if (this.f2800j == null) {
            this.f2800j = C0725a.m2918c(this.f2817k, this.f2818l);
        }
        return this.f2800j;
    }

    /* renamed from: k */
    public String m3053k() {
        return this.f2818l;
    }

    @Override // com.alensw.bean.CommonFile, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f2817k);
        parcel.writeString(this.f2818l);
    }
}
