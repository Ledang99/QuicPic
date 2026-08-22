package com.alensw.bean;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Parcel;
import com.alensw.p023b.p035l.C0742b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.apache.commons.logging.impl.SimpleLog;

/* loaded from: classes.dex */
public class CommonFolder extends CommonFile {

    /* renamed from: o */
    public static final Comparator f2801o = new C0744a();

    /* renamed from: p */
    public static final Comparator f2802p = new C0745b();

    /* renamed from: q */
    public static final Comparator f2803q = new C0746c();

    /* renamed from: r */
    public static final Comparator f2804r = new C0747d();

    /* renamed from: s */
    public static final Comparator f2805s = new C0748e();

    /* renamed from: t */
    public static final Comparator f2806t = new C0749f();

    /* renamed from: k */
    public int f2807k;

    /* renamed from: l */
    public int f2808l;

    /* renamed from: m */
    protected Comparator f2809m;

    /* renamed from: n */
    protected final ArrayList f2810n;

    public CommonFolder(Parcel parcel, char c) {
        super(parcel, c);
        this.f2807k = -1;
        this.f2808l = 0;
        this.f2809m = f2801o;
        this.f2810n = new ArrayList();
        this.f2807k = parcel.readInt();
        this.f2808l = parcel.readInt();
    }

    public CommonFolder(CommonFile commonFile) {
        super(commonFile);
        this.f2807k = -1;
        this.f2808l = 0;
        this.f2809m = f2801o;
        this.f2810n = new ArrayList();
    }

    public CommonFolder(String str, int i, long j, long j2, String str2) {
        super('D', str, "vnd.android.document/directory", i, 0L, j, j2, str2, null);
        this.f2807k = -1;
        this.f2808l = 0;
        this.f2809m = f2801o;
        this.f2810n = new ArrayList();
    }

    /* renamed from: a */
    public static int m3023a(int i, int i2) {
        return (i << 4) | i2;
    }

    /* renamed from: a */
    public int mo3024a(Uri uri) {
        int size = this.f2810n.size();
        for (int i = 0; i < size; i++) {
            if (((CommonFile) this.f2810n.get(i)).mo3021i().equals(uri)) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: a */
    public int m3025a(CommonFile commonFile) {
        int mo3024a;
        int m2962a = C0742b.m2962a(this.f2810n, commonFile, this.f2809m);
        return (m2962a >= 0 || (mo3024a = mo3024a(commonFile.mo3021i())) == -1) ? m2962a : mo3024a;
    }

    /* renamed from: a */
    public Cursor mo3026a(ContentResolver contentResolver, String str) {
        return null;
    }

    /* renamed from: a */
    public final CommonFile m3027a(int i) {
        return (i < 0 || i >= this.f2810n.size()) ? CommonFile.f2791a : (CommonFile) this.f2810n.get(i);
    }

    /* renamed from: a */
    public CommonFolder mo3028a(boolean z) {
        CommonFolder commonFolder = new CommonFolder(this);
        commonFolder.f2807k = this.f2807k;
        commonFolder.f2808l = this.f2808l;
        if (z) {
            commonFolder.m3032a(this, true);
        }
        return commonFolder;
    }

    /* renamed from: a */
    public void m3029a(int i, CommonFile commonFile) {
        this.f2810n.add(i, commonFile);
    }

    /* renamed from: a */
    public void mo3030a(ContentResolver contentResolver, ContentObserver contentObserver) {
        contentResolver.registerContentObserver(mo3021i(), false, contentObserver);
    }

    /* renamed from: a */
    public void mo3031a(Cursor cursor, Set set) {
    }

    /* renamed from: a */
    public void m3032a(CommonFolder commonFolder, boolean z) {
        this.f2810n.clear();
        if (!commonFolder.m3046n()) {
            this.f2810n.ensureCapacity(commonFolder.m3047o());
        }
        CommonFile m3027a = commonFolder.m3027a(commonFolder.f2807k);
        Iterator it = commonFolder.f2810n.iterator();
        while (it.hasNext()) {
            CommonFile commonFile = (CommonFile) it.next();
            if (z || commonFile.f2792b != 'D') {
                if (m3027a == commonFile) {
                    this.f2807k = this.f2810n.size();
                }
                this.f2810n.add(commonFile);
            }
        }
    }

    /* renamed from: a */
    public void m3033a(Collection collection) {
        for (Object obj : collection) {
            if (obj instanceof CommonFile) {
                m3042d((CommonFile) obj);
            }
        }
    }

    /* renamed from: a */
    public Object[] mo3034a(ContentResolver contentResolver) {
        return null;
    }

    /* renamed from: b */
    public int m3035b(CommonFile commonFile) {
        return C0742b.m2962a(this.f2810n, commonFile, this.f2809m);
    }

    /* renamed from: b */
    public final Uri m3036b(int i) {
        return (i < 0 || i >= this.f2810n.size()) ? Uri.EMPTY : ((CommonFile) this.f2810n.get(i)).mo3021i();
    }

    /* renamed from: b */
    public void mo3037b(ContentResolver contentResolver) {
    }

    /* renamed from: b */
    public void mo3038b(ContentResolver contentResolver, ContentObserver contentObserver) {
        contentResolver.unregisterContentObserver(contentObserver);
    }

    /* renamed from: b */
    public void mo3039b(Cursor cursor, Set set) {
    }

    /* renamed from: c */
    public int m3040c(CommonFile commonFile) {
        int m3025a = m3025a(commonFile);
        if (m3025a < 0) {
            m3025a = (-m3025a) - 1;
        }
        this.f2810n.add(m3025a, commonFile);
        return m3025a;
    }

    /* renamed from: c */
    public boolean m3041c(int i) {
        int size = this.f2810n.size();
        if (i < 0 || i >= size) {
            return false;
        }
        this.f2810n.remove(i);
        int i2 = size - 1;
        if (this.f2807k >= i2) {
            this.f2807k = i2 - 1;
        } else if (this.f2807k > i) {
            this.f2807k--;
        }
        return true;
    }

    /* renamed from: d */
    public boolean m3042d(CommonFile commonFile) {
        int m3025a = m3025a(commonFile);
        if (m3025a < 0) {
            return false;
        }
        m3041c(m3025a);
        return true;
    }

    @Override // com.alensw.bean.CommonFile, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* renamed from: k */
    public final int m3043k() {
        return (this.f2808l & 240) >> 4;
    }

    /* renamed from: l */
    public final int m3044l() {
        return this.f2808l & 15;
    }

    /* renamed from: m */
    public final boolean m3045m() {
        int i = this.f2808l & 15;
        return i == 3 || i == 1;
    }

    /* renamed from: n */
    public boolean m3046n() {
        return this.f2810n.isEmpty();
    }

    /* renamed from: o */
    public int m3047o() {
        return this.f2810n.size();
    }

    /* renamed from: p */
    public final List m3048p() {
        ArrayList arrayList = new ArrayList(this.f2810n.size());
        Iterator it = this.f2810n.iterator();
        while (it.hasNext()) {
            CommonFile commonFile = (CommonFile) it.next();
            if (commonFile.m3020h() != 'D') {
                arrayList.add(commonFile);
            }
        }
        return arrayList;
    }

    /* renamed from: q */
    public Uri mo3049q() {
        return Uri.EMPTY;
    }

    /* renamed from: r */
    public void m3050r() {
        this.f2810n.clear();
        this.f2807k = -1;
    }

    /* renamed from: s */
    public void m3051s() {
        switch (m3044l()) {
            case 1:
                this.f2809m = f2804r;
                break;
            case 2:
                this.f2809m = f2801o;
                break;
            case 3:
                this.f2809m = f2803q;
                break;
            case 4:
                this.f2809m = f2802p;
                break;
            case SimpleLog.LOG_LEVEL_OFF /* 7 */:
                this.f2809m = f2805s;
                break;
            case 8:
                this.f2809m = f2806t;
                break;
        }
        CommonFile m3027a = m3027a(this.f2807k);
        C0742b.m2987a(this.f2810n, this.f2809m);
        if (m3027a != null) {
            this.f2807k = m3025a(m3027a);
        }
    }

    @Override // com.alensw.bean.CommonFile, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f2807k);
        parcel.writeInt(this.f2808l);
    }
}
