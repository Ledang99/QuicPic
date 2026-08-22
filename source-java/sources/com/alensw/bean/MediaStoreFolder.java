package com.alensw.bean;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.format.DateUtils;
import android.util.Log;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p022a.C0613ba;
import com.alensw.p022a.C0633o;
import com.alensw.p023b.p027d.C0670f;
import com.alensw.p023b.p029f.C0690c;
import com.alensw.p023b.p035l.C0742b;
import java.util.ArrayList;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public class MediaStoreFolder extends CommonFolder {

    /* renamed from: A */
    private Context f2833A;

    /* renamed from: B */
    private C0670f f2834B;

    /* renamed from: C */
    private C0633o f2835C;

    /* renamed from: D */
    private boolean f2836D;

    /* renamed from: E */
    private ArrayList f2837E;

    /* renamed from: F */
    private ArrayList f2838F;

    /* renamed from: w */
    private final boolean f2839w;

    /* renamed from: x */
    private final boolean f2840x;

    /* renamed from: y */
    private int f2841y;

    /* renamed from: z */
    private String f2842z;

    /* renamed from: u */
    protected static final HashMap f2831u = new HashMap();

    /* renamed from: v */
    public static final String[] f2832v = {"_id", "_data", "_display_name", "mime_type", "_size", "date_modified", "datetaken", "latitude", "longitude"};
    public static final Parcelable.Creator CREATOR = new C0756m();

    public MediaStoreFolder(int i, String str, int i2, long j, long j2, String str2, boolean z, boolean z2) {
        super(str, i2, j, j2, null);
        this.f2839w = z;
        this.f2840x = z2;
        this.f2841y = i;
        this.f2842z = str2;
        m3069t();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaStoreFolder(Parcel parcel, char c) {
        super(parcel, c);
        this.f2839w = parcel.readInt() != 0;
        this.f2840x = parcel.readInt() != 0;
        this.f2841y = parcel.readInt();
        this.f2842z = parcel.readString();
        m3069t();
        int readInt = parcel.readInt();
        for (int i = 0; i < readInt; i++) {
            char readInt2 = (char) parcel.readInt();
            this.f2810n.add(readInt2 == 'D' ? new MediaStoreFolder(parcel, readInt2) : new MediaStoreFile(parcel, readInt2));
        }
    }

    public MediaStoreFolder(CommonFile commonFile, boolean z, boolean z2) {
        super(commonFile);
        this.f2839w = z;
        this.f2840x = z2;
        this.f2841y = 0;
        this.f2842z = null;
        m3069t();
    }

    /* renamed from: a */
    private String m3061a(float f, float f2) {
        if (f == 0.0f && f2 == 0.0f) {
            return "";
        }
        long m2631a = C0670f.m2631a(f, f2);
        String m2646a = this.f2834B.m2646a(f, f2, m2631a);
        if (m2646a != null) {
            return m2646a;
        }
        this.f2834B.m2648a(f, f2, m2631a, null);
        this.f2836D = true;
        return "";
    }

    /* renamed from: a */
    private String m3062a(long j) {
        return DateUtils.formatDateTime(this.f2833A, j, 52);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x014e  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m3063a(ContentResolver contentResolver, char c) {
        Cursor cursor;
        Cursor cursor2;
        long j;
        long j2;
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        long m3066b = m3066b(gregorianCalendar);
        m3064a(gregorianCalendar);
        long timeInMillis = gregorianCalendar.getTimeInMillis() / 1000;
        String m3062a = m3062a(1000 * m3066b);
        try {
            cursor = contentResolver.query(C0613ba.m2269a(c), f2832v, null, null, "datetaken DESC");
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        int size = this.f2810n.size();
                        int count = cursor.getCount();
                        if (count > 0) {
                            this.f2810n.ensureCapacity(size + count);
                        }
                        String str = m3062a;
                        long j3 = timeInMillis;
                        long j4 = m3066b;
                        while (true) {
                            long j5 = cursor.getLong(5);
                            long j6 = cursor.getLong(6) / 1000;
                            if (j6 == 0) {
                                j6 = j5;
                            }
                            if (j6 < j4 || j6 >= j3) {
                                gregorianCalendar.setTimeInMillis(1000 * j6);
                                long m3066b2 = m3066b(gregorianCalendar);
                                m3064a(gregorianCalendar);
                                long timeInMillis2 = gregorianCalendar.getTimeInMillis() / 1000;
                                str = m3062a(1000 * m3066b2);
                                j = timeInMillis2;
                                j2 = m3066b2;
                            } else {
                                j = j3;
                                j2 = j4;
                            }
                            String string = cursor.getString(1);
                            if (m3065a(string)) {
                                int i = cursor.getInt(0);
                                C0757n c0757n = new C0757n(j2, m3061a(cursor.getFloat(7), cursor.getFloat(8)));
                                MediaStoreFolder mediaStoreFolder = (MediaStoreFolder) f2831u.get(c0757n);
                                if (mediaStoreFolder == null) {
                                    mediaStoreFolder = new MediaStoreFolder(i, str, 268435507, j5, j6, string, true, false);
                                    mediaStoreFolder.f2799i = c0757n.f2847b;
                                    if (c == 'I') {
                                        this.f2810n.add(mediaStoreFolder);
                                    } else {
                                        m3040c(mediaStoreFolder);
                                    }
                                    f2831u.put(c0757n, mediaStoreFolder);
                                } else if (mediaStoreFolder.f2798h < j6) {
                                    mediaStoreFolder.f2797g = j5;
                                    mediaStoreFolder.f2798h = j6;
                                    mediaStoreFolder.f2841y = i;
                                    mediaStoreFolder.f2842z = string;
                                    mediaStoreFolder.f2800j = null;
                                }
                                if (j6 >= m3066b && j6 < timeInMillis) {
                                    MediaStoreFile mediaStoreFile = new MediaStoreFile(c, i, cursor.getString(2), cursor.getString(3), 5, cursor.getLong(4), j5, j6, string);
                                    if (c == 'I') {
                                        mediaStoreFolder.f2810n.add(mediaStoreFile);
                                    } else {
                                        mediaStoreFolder.m3040c(mediaStoreFile);
                                    }
                                }
                            }
                            if (!cursor.moveToNext()) {
                                break;
                            }
                            j3 = j;
                            j4 = j2;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    try {
                        th.printStackTrace();
                        if (cursor2 != null) {
                            cursor2.close();
                            return;
                        }
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = cursor2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    /* renamed from: a */
    private static void m3064a(GregorianCalendar gregorianCalendar) {
        if (gregorianCalendar.get(2) == 11) {
            gregorianCalendar.roll(1, 1);
        }
        gregorianCalendar.roll(2, 1);
    }

    /* renamed from: a */
    private boolean m3065a(String str) {
        int size = this.f2837E.size();
        for (int i = 0; i < size; i++) {
            if (C0742b.m3000c((String) this.f2837E.get(i), str)) {
                return false;
            }
        }
        int size2 = this.f2838F.size();
        if (size2 == 0) {
            return true;
        }
        for (int i2 = 0; i2 < size2; i2++) {
            if (C0742b.m3000c((String) this.f2838F.get(i2), str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    private static long m3066b(GregorianCalendar gregorianCalendar) {
        int i = gregorianCalendar.get(1);
        int i2 = gregorianCalendar.get(2);
        gregorianCalendar.clear();
        gregorianCalendar.set(i, i2, 1);
        return gregorianCalendar.getTimeInMillis() / 1000;
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0102  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m3067b(ContentResolver contentResolver, char c) {
        Cursor cursor;
        Cursor cursor2;
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTimeInMillis(this.f2798h * 1000);
        long m3066b = m3066b(gregorianCalendar);
        m3064a(gregorianCalendar);
        try {
            cursor = contentResolver.query(C0613ba.m2269a(c), f2832v, "datetaken>=? AND datetaken<?", new String[]{Long.toString(m3066b * 1000), Long.toString((gregorianCalendar.getTimeInMillis() / 1000) * 1000)}, "datetaken DESC");
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        int size = this.f2810n.size();
                        int count = cursor.getCount();
                        if (count > 0) {
                            this.f2810n.ensureCapacity(size + count);
                        }
                        do {
                            long j = cursor.getLong(5);
                            long j2 = cursor.getLong(6) / 1000;
                            String string = cursor.getString(1);
                            if (m3065a(string)) {
                                int i = cursor.getInt(0);
                                if (m3061a(cursor.getFloat(7), cursor.getFloat(8)).equals(this.f2799i)) {
                                    MediaStoreFile mediaStoreFile = new MediaStoreFile(c, i, cursor.getString(2), cursor.getString(3), 5, cursor.getLong(4), j, j2, string);
                                    if (c == 'I') {
                                        this.f2810n.add(mediaStoreFile);
                                    } else {
                                        m3040c(mediaStoreFile);
                                    }
                                    if (this.f2798h < j2) {
                                        this.f2797g = j;
                                        this.f2798h = j2;
                                        this.f2841y = i;
                                        this.f2842z = string;
                                        this.f2800j = null;
                                    }
                                }
                            }
                        } while (cursor.moveToNext());
                    }
                } catch (Throwable th) {
                    th = th;
                    if (cursor != null) {
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
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0094  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m3068c(ContentResolver contentResolver, char c) {
        Cursor cursor;
        Cursor cursor2;
        try {
            cursor = contentResolver.query(C0613ba.m2269a(c), f2832v, null, null, "datetaken DESC");
            if (cursor != null) {
                try {
                    if (cursor.moveToFirst()) {
                        int size = this.f2810n.size();
                        int count = cursor.getCount();
                        if (count > 0) {
                            this.f2810n.ensureCapacity(size + count);
                        }
                        do {
                            String string = cursor.getString(1);
                            if (m3065a(string)) {
                                MediaStoreFile mediaStoreFile = new MediaStoreFile(c, cursor.getInt(0), cursor.getString(2), cursor.getString(3), 5, cursor.getLong(4), cursor.getLong(5), cursor.getLong(6) / 1000, string);
                                if (c == 'I') {
                                    this.f2810n.add(mediaStoreFile);
                                } else {
                                    m3040c(mediaStoreFile);
                                }
                            }
                        } while (cursor.moveToNext());
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor2 = cursor;
                    try {
                        th.printStackTrace();
                        if (cursor2 != null) {
                            cursor2.close();
                            return;
                        }
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = cursor2;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    /* renamed from: t */
    private void m3069t() {
        this.f2808l = m3023a(0, 1);
        this.f2809m = f2804r;
        this.f2833A = QuickApp.m2036a();
        this.f2834B = C0670f.m2633a(this.f2833A);
        this.f2835C = C0633o.m2410a(this.f2833A);
    }

    @Override // com.alensw.bean.CommonFolder
    /* renamed from: a */
    public int mo3024a(Uri uri) {
        if (!"media".equals(uri.getAuthority())) {
            return super.mo3024a(uri);
        }
        try {
            int m2960a = C0742b.m2960a(uri.getLastPathSegment(), 0);
            int size = this.f2810n.size();
            for (int i = 0; i < size; i++) {
                CommonFile commonFile = (CommonFile) this.f2810n.get(i);
                if ((commonFile instanceof MediaStoreFile) && ((MediaStoreFile) commonFile).f2829k == m2960a) {
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
        boolean z = (QuickApp.f2074q.f2453c & 2) != 0;
        this.f2837E = this.f2835C.m2413a(true);
        this.f2838F = this.f2835C.m2413a(false);
        if (!this.f2839w) {
            long currentTimeMillis = System.currentTimeMillis();
            m3068c(contentResolver, 'I');
            if (z) {
                m3068c(contentResolver, 'V');
            }
            Log.d("MediaStoreFolder", "query: " + m3047o() + " folders, used=" + (System.currentTimeMillis() - currentTimeMillis));
            return null;
        }
        this.f2836D = false;
        if (this.f2840x) {
            f2831u.clear();
            long currentTimeMillis2 = System.currentTimeMillis();
            m3063a(contentResolver, 'I');
            if (z) {
                m3063a(contentResolver, 'V');
            }
            Log.d("MediaStoreFolder", "query: " + m3047o() + " folders, used=" + (System.currentTimeMillis() - currentTimeMillis2));
        } else {
            m3067b(contentResolver, 'I');
            if (z) {
                m3067b(contentResolver, 'V');
            }
        }
        if (!this.f2836D) {
            return null;
        }
        this.f2836D = false;
        this.f2834B.m2647a(new RunnableC0755l(this, contentResolver));
        return null;
    }

    @Override // com.alensw.bean.CommonFolder
    /* renamed from: a */
    public void mo3030a(ContentResolver contentResolver, ContentObserver contentObserver) {
        contentResolver.registerContentObserver(C0613ba.m2269a('I'), false, contentObserver);
        contentResolver.registerContentObserver(C0613ba.m2269a('V'), false, contentObserver);
    }

    @Override // com.alensw.bean.CommonFolder
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public MediaStoreFolder mo3028a(boolean z) {
        MediaStoreFolder mediaStoreFolder = new MediaStoreFolder(this, this.f2839w, this.f2840x);
        mediaStoreFolder.f2807k = this.f2807k;
        mediaStoreFolder.f2808l = this.f2808l;
        if (z) {
            mediaStoreFolder.m3032a((CommonFolder) this, true);
        }
        return mediaStoreFolder;
    }

    @Override // com.alensw.bean.CommonFolder
    /* renamed from: b */
    public void mo3038b(ContentResolver contentResolver, ContentObserver contentObserver) {
        contentResolver.unregisterContentObserver(contentObserver);
    }

    @Override // com.alensw.bean.CommonFile
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaStoreFolder)) {
            return false;
        }
        MediaStoreFolder mediaStoreFolder = (MediaStoreFolder) obj;
        return this.f2839w == mediaStoreFolder.f2839w && this.f2840x == mediaStoreFolder.f2840x && this.f2797g == mediaStoreFolder.f2797g && this.f2792b == mediaStoreFolder.f2792b && this.f2841y == mediaStoreFolder.f2841y;
    }

    @Override // com.alensw.bean.CommonFile
    public int hashCode() {
        return this.f2841y + ((int) this.f2797g) + this.f2792b;
    }

    @Override // com.alensw.bean.CommonFile
    /* renamed from: i */
    public Uri mo3021i() {
        if (this.f2800j == null) {
            if (this.f2840x) {
                this.f2800j = C0613ba.m2269a('I');
            } else if (!m3046n()) {
                this.f2800j = m3036b(0);
            } else if (this.f2842z != null) {
                this.f2800j = C0613ba.m2269a(C0690c.m2721a(this.f2842z)).buildUpon().appendEncodedPath(Integer.toString(this.f2841y)).build();
            } else {
                this.f2800j = C0613ba.m2269a('I');
            }
        }
        return this.f2800j;
    }

    @Override // com.alensw.bean.CommonFile
    /* renamed from: j */
    public String mo3022j() {
        return this.f2842z;
    }

    @Override // com.alensw.bean.CommonFolder, com.alensw.bean.CommonFile, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f2839w ? 1 : 0);
        parcel.writeInt(this.f2840x ? 1 : 0);
        parcel.writeInt(this.f2841y);
        parcel.writeString(this.f2842z);
        parcel.writeInt(this.f2810n.size());
        Iterator it = this.f2810n.iterator();
        while (it.hasNext()) {
            ((CommonFile) it.next()).writeToParcel(parcel, i);
        }
    }
}
