package com.alensw.bean;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.alensw.p023b.p029f.C0690c;

/* loaded from: classes.dex */
public class CommonFile implements Parcelable {

    /* renamed from: a */
    public static CommonFile f2791a = new CommonFile(0, "", "", 0, 0, 0, 0, null, Uri.EMPTY);

    /* renamed from: b */
    protected final char f2792b;

    /* renamed from: c */
    protected final String f2793c;

    /* renamed from: d */
    protected final String f2794d;

    /* renamed from: e */
    protected final int f2795e;

    /* renamed from: f */
    protected final long f2796f;

    /* renamed from: g */
    protected long f2797g;

    /* renamed from: h */
    protected long f2798h;

    /* renamed from: i */
    protected String f2799i;

    /* renamed from: j */
    protected Uri f2800j;

    public CommonFile(char c, String str, String str2, int i, long j, long j2, long j3, String str3, Uri uri) {
        this.f2792b = c;
        this.f2793c = str == null ? "" : str;
        this.f2794d = str2;
        this.f2795e = i;
        this.f2796f = j;
        this.f2797g = j2;
        this.f2798h = j3 == 0 ? j2 : j3;
        this.f2799i = str3;
        this.f2800j = uri;
    }

    public CommonFile(Parcel parcel, char c) {
        this.f2792b = c;
        this.f2793c = parcel.readString();
        this.f2794d = parcel.readString();
        this.f2795e = parcel.readInt();
        this.f2796f = parcel.readLong();
        this.f2797g = parcel.readLong();
        this.f2798h = parcel.readLong();
        this.f2799i = parcel.readString();
    }

    public CommonFile(CommonFile commonFile) {
        this.f2792b = commonFile.f2792b;
        this.f2793c = commonFile.f2793c;
        this.f2794d = commonFile.f2794d;
        this.f2795e = commonFile.f2795e;
        this.f2796f = commonFile.f2796f;
        this.f2797g = commonFile.f2797g;
        this.f2798h = commonFile.f2798h;
        this.f2799i = commonFile.f2799i;
        this.f2800j = commonFile.f2800j;
    }

    /* renamed from: a */
    public static char m3011a(String str, String str2) {
        if (str == null) {
            return C0690c.m2721a(str2);
        }
        if (str.startsWith("image/")) {
            return 'I';
        }
        if (str.startsWith("video/")) {
            return 'V';
        }
        if ("vnd.android.document/directory".equals(str)) {
            return 'D';
        }
        if (str.startsWith("audio/")) {
            return 'A';
        }
        return C0690c.m2721a(str2);
    }

    /* renamed from: a */
    public String m3012a() {
        return this.f2793c;
    }

    /* renamed from: a */
    public void m3013a(long j, long j2) {
        this.f2797g = j;
        this.f2798h = j2;
    }

    /* renamed from: b */
    public String m3014b() {
        return this.f2794d;
    }

    /* renamed from: c */
    public int m3015c() {
        return this.f2795e;
    }

    /* renamed from: d */
    public long m3016d() {
        return this.f2796f;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: e */
    public long m3017e() {
        return this.f2797g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CommonFile)) {
            return false;
        }
        CommonFile commonFile = (CommonFile) obj;
        if (this.f2797g != commonFile.f2797g || this.f2792b != commonFile.f2792b) {
            return false;
        }
        Uri mo3021i = mo3021i();
        Uri mo3021i2 = commonFile.mo3021i();
        return mo3021i == mo3021i2 || mo3021i.equals(mo3021i2);
    }

    /* renamed from: f */
    public long m3018f() {
        return this.f2798h;
    }

    /* renamed from: g */
    public String m3019g() {
        return this.f2799i;
    }

    /* renamed from: h */
    public char m3020h() {
        return this.f2792b;
    }

    public int hashCode() {
        return mo3021i().hashCode() + ((int) this.f2797g) + this.f2792b;
    }

    /* renamed from: i */
    public Uri mo3021i() {
        return this.f2800j != null ? this.f2800j : Uri.EMPTY;
    }

    /* renamed from: j */
    public String mo3022j() {
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f2792b);
        parcel.writeString(this.f2793c);
        parcel.writeString(this.f2794d);
        parcel.writeInt(this.f2795e);
        parcel.writeLong(this.f2796f);
        parcel.writeLong(this.f2797g);
        parcel.writeLong(this.f2798h);
        parcel.writeString(this.f2799i);
    }
}
