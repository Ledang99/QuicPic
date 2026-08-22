package com.alensw.bean;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p035l.C0742b;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class LocalFolder extends CommonFolder {
    public static final Parcelable.Creator CREATOR = new C0753j();

    /* renamed from: u */
    protected final String f2827u;

    /* renamed from: v */
    public ArrayList f2828v;

    public LocalFolder(Parcel parcel, char c) {
        super(parcel, c);
        this.f2828v = null;
        this.f2827u = parcel.readString();
        int readInt = parcel.readInt();
        for (int i = 0; i < readInt; i++) {
            char readInt2 = (char) parcel.readInt();
            this.f2810n.add(readInt2 == 'D' ? new LocalFolder(parcel, readInt2) : new LocalFile(parcel, readInt2));
        }
    }

    public LocalFolder(CommonFile commonFile, String str) {
        super(commonFile);
        this.f2828v = null;
        this.f2827u = str;
    }

    public LocalFolder(String str, String str2, int i, long j, long j2) {
        super(str2 != null ? str2 : C0742b.m2992b(str), i, j, j2, null);
        this.f2828v = null;
        this.f2827u = str;
    }

    @Override // com.alensw.bean.CommonFolder
    /* renamed from: a */
    public int mo3024a(Uri uri) {
        if ("file".equals(uri.getScheme())) {
            return super.mo3024a(uri);
        }
        String lastPathSegment = uri.getLastPathSegment();
        int size = this.f2810n.size();
        for (int i = 0; i < size; i++) {
            CommonFile commonFile = (CommonFile) this.f2810n.get(i);
            if ((commonFile instanceof LocalFile) && ((LocalFile) commonFile).f2793c.equals(lastPathSegment)) {
                return i;
            }
        }
        return super.mo3024a(uri);
    }

    /* renamed from: a */
    public void m3059a(char c, int i, String str) {
        this.f2810n.ensureCapacity(256);
        if (c != 'D') {
            this.f2810n.add(new LocalFile(c, this.f2827u, str, C0690c.m2722a(str, c), 5, 0L, i, i));
        } else if (this.f2828v != null) {
            this.f2828v.add(new LocalFolder(C0742b.m2993b(this.f2827u, str), str, 50, i, i));
        }
    }

    @Override // com.alensw.bean.CommonFolder
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public LocalFolder mo3028a(boolean z) {
        LocalFolder localFolder = new LocalFolder(this, this.f2827u);
        localFolder.f2807k = this.f2807k;
        localFolder.f2808l = this.f2808l;
        if (z) {
            localFolder.m3032a((CommonFolder) this, true);
        }
        return localFolder;
    }

    @Override // com.alensw.bean.CommonFile
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocalFolder)) {
            return false;
        }
        LocalFolder localFolder = (LocalFolder) obj;
        return this.f2797g == localFolder.f2797g && this.f2792b == localFolder.f2792b && (this.f2827u == localFolder.f2827u || this.f2827u.equals(localFolder.f2827u));
    }

    @Override // com.alensw.bean.CommonFile
    public int hashCode() {
        return this.f2827u.hashCode() + ((int) this.f2797g);
    }

    @Override // com.alensw.bean.CommonFile
    /* renamed from: i */
    public Uri mo3021i() {
        if (this.f2800j == null) {
            this.f2800j = Uri.fromFile(new File(this.f2827u));
        }
        return this.f2800j;
    }

    @Override // com.alensw.bean.CommonFile
    /* renamed from: j */
    public String mo3022j() {
        return this.f2827u;
    }

    @Override // com.alensw.bean.CommonFolder, com.alensw.bean.CommonFile, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f2827u);
        parcel.writeInt(this.f2810n.size());
        Iterator it = this.f2810n.iterator();
        while (it.hasNext()) {
            ((CommonFile) it.next()).writeToParcel(parcel, i);
        }
    }
}
