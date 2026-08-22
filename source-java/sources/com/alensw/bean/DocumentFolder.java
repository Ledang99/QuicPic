package com.alensw.bean;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.alensw.p023b.p033j.C0725a;
import java.util.Iterator;
import java.util.Set;
import org.apache.http.cookie.ClientCookie;

/* loaded from: classes.dex */
public class DocumentFolder extends CommonFolder {

    /* renamed from: u */
    protected final String f2820u;

    /* renamed from: v */
    protected final String f2821v;

    /* renamed from: x */
    private Uri f2822x;

    /* renamed from: w */
    public static final String[] f2819w = {"document_id", "_display_name", "mime_type", "flags", "_size", "last_modified", "datetaken", ClientCookie.COMMENT_ATTR};
    public static final Parcelable.Creator CREATOR = new C0751h();

    public DocumentFolder(Parcel parcel, char c) {
        super(parcel, c);
        this.f2820u = parcel.readString();
        this.f2821v = parcel.readString();
        int readInt = parcel.readInt();
        for (int i = 0; i < readInt; i++) {
            char readInt2 = (char) parcel.readInt();
            this.f2810n.add(readInt2 == 'D' ? new DocumentFolder(parcel, readInt2) : new DocumentFile(parcel, readInt2));
        }
    }

    public DocumentFolder(CommonFile commonFile, String str, String str2) {
        super(commonFile);
        this.f2820u = str;
        this.f2821v = str2 == null ? "" : str2;
    }

    public DocumentFolder(String str, String str2, String str3, int i, long j, long j2, String str4) {
        super(str3, i, j, j2, str4);
        this.f2820u = str;
        this.f2821v = str2 == null ? "" : str2;
    }

    @Override // com.alensw.bean.CommonFolder
    /* renamed from: a */
    public int mo3024a(Uri uri) {
        if (!this.f2820u.equals(uri.getAuthority())) {
            return super.mo3024a(uri);
        }
        try {
            String m2916b = C0725a.m2916b(uri);
            int size = this.f2810n.size();
            for (int i = 0; i < size; i++) {
                CommonFile commonFile = (CommonFile) this.f2810n.get(i);
                if ((commonFile instanceof DocumentFile) && ((DocumentFile) commonFile).f2818l.equals(m2916b)) {
                    return i;
                }
            }
            return super.mo3024a(uri);
        } catch (Throwable th) {
            return super.mo3024a(uri);
        }
    }

    @Override // com.alensw.bean.CommonFolder
    /* renamed from: a */
    public Cursor mo3026a(ContentResolver contentResolver, String str) {
        return contentResolver.query(mo3049q(), f2819w, null, null, str);
    }

    @Override // com.alensw.bean.CommonFolder
    /* renamed from: a */
    public void mo3031a(Cursor cursor, Set set) {
        if (cursor.moveToFirst()) {
            do {
                String string = cursor.getString(0);
                String string2 = cursor.getString(1);
                String string3 = cursor.getString(2);
                int i = cursor.getInt(3);
                long j = cursor.getLong(4) / 1000;
                long j2 = cursor.getLong(5) / 1000;
                String string4 = cursor.getString(6);
                if ((set == null || !set.contains(string)) && CommonFile.m3011a(string3, string2) == 'D') {
                    this.f2810n.add(new DocumentFolder(this.f2820u, string, string2, i, j, j2, string4));
                }
            } while (cursor.moveToNext());
        }
    }

    @Override // com.alensw.bean.CommonFolder
    /* renamed from: a */
    public Object[] mo3034a(ContentResolver contentResolver) {
        Cursor cursor;
        Cursor cursor2;
        try {
            cursor = contentResolver.query(mo3021i(), new String[]{"_size", "last_modified"}, null, null, null);
            if (cursor != null) {
                try {
                    if (cursor.moveToNext()) {
                        Object[] objArr = {Long.valueOf(cursor.getLong(0)), Long.valueOf(cursor.getLong(1))};
                        if (cursor == null) {
                            return objArr;
                        }
                        cursor.close();
                        return objArr;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
        return null;
    }

    @Override // com.alensw.bean.CommonFolder
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public DocumentFolder mo3028a(boolean z) {
        DocumentFolder documentFolder = new DocumentFolder(this, this.f2820u, this.f2821v);
        documentFolder.f2807k = this.f2807k;
        documentFolder.f2808l = this.f2808l;
        if (z) {
            documentFolder.m3032a((CommonFolder) this, true);
        }
        return documentFolder;
    }

    @Override // com.alensw.bean.CommonFolder
    /* renamed from: b */
    public void mo3037b(ContentResolver contentResolver) {
        C0725a.m2912a(contentResolver, mo3049q());
    }

    @Override // com.alensw.bean.CommonFolder
    /* renamed from: b */
    public void mo3039b(Cursor cursor, Set set) {
        if (cursor.moveToFirst()) {
            int size = this.f2810n.size();
            int count = cursor.getCount();
            if (count > 0) {
                this.f2810n.ensureCapacity(size + count);
            }
            do {
                String string = cursor.getString(0);
                String string2 = cursor.getString(1);
                String string3 = cursor.getString(2);
                int i = cursor.getInt(3);
                long j = cursor.getLong(4);
                long j2 = cursor.getLong(5) / 1000;
                long j3 = cursor.getLong(6) / 1000;
                String string4 = cursor.getString(7);
                if (set == null || !set.contains(string)) {
                    char m3011a = CommonFile.m3011a(string3, string2);
                    this.f2810n.add(m3011a == 'D' ? new DocumentFolder(this.f2820u, string, string2, i, j2, j3, string4) : new DocumentFile(m3011a, this.f2820u, string, string2, string3, i, j, j2, j3, string4));
                }
            } while (cursor.moveToNext());
        }
    }

    @Override // com.alensw.bean.CommonFile
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DocumentFolder)) {
            return false;
        }
        DocumentFolder documentFolder = (DocumentFolder) obj;
        return this.f2797g == documentFolder.f2797g && this.f2792b == documentFolder.f2792b && (this.f2821v == documentFolder.f2821v || this.f2821v.equals(documentFolder.f2821v));
    }

    @Override // com.alensw.bean.CommonFile
    public int hashCode() {
        return this.f2821v.hashCode() + ((int) this.f2797g) + this.f2792b;
    }

    @Override // com.alensw.bean.CommonFile
    /* renamed from: i */
    public Uri mo3021i() {
        if (this.f2800j == null) {
            this.f2800j = C0725a.m2918c(this.f2820u, this.f2821v);
        }
        return this.f2800j;
    }

    @Override // com.alensw.bean.CommonFolder
    /* renamed from: q */
    public Uri mo3049q() {
        if (this.f2822x == null) {
            this.f2822x = C0725a.m2908a(mo3021i());
        }
        return this.f2822x;
    }

    /* renamed from: t */
    public String m3055t() {
        return this.f2821v;
    }

    @Override // com.alensw.bean.CommonFolder, com.alensw.bean.CommonFile, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f2820u);
        parcel.writeString(this.f2821v);
        parcel.writeInt(this.f2810n.size());
        Iterator it = this.f2810n.iterator();
        while (it.hasNext()) {
            ((CommonFile) it.next()).writeToParcel(parcel, i);
        }
    }
}
