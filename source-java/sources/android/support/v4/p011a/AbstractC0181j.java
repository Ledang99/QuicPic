package android.support.v4.p011a;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: android.support.v4.a.j */
/* loaded from: classes.dex */
public abstract class AbstractC0181j {

    /* renamed from: a */
    private DataSetObservable f776a = new DataSetObservable();

    /* renamed from: a */
    public float m436a(int i) {
        return 1.0f;
    }

    /* renamed from: a */
    public abstract int mo437a();

    /* renamed from: a */
    public int m438a(Object obj) {
        return -1;
    }

    /* renamed from: a */
    public Object m439a(View view, int i) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    /* renamed from: a */
    public Object mo440a(ViewGroup viewGroup, int i) {
        return m439a((View) viewGroup, i);
    }

    /* renamed from: a */
    public void m441a(DataSetObserver dataSetObserver) {
        this.f776a.registerObserver(dataSetObserver);
    }

    /* renamed from: a */
    public void m442a(Parcelable parcelable, ClassLoader classLoader) {
    }

    /* renamed from: a */
    public void m443a(View view) {
    }

    /* renamed from: a */
    public void m444a(View view, int i, Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    /* renamed from: a */
    public void m445a(ViewGroup viewGroup) {
        m443a((View) viewGroup);
    }

    /* renamed from: a */
    public void mo446a(ViewGroup viewGroup, int i, Object obj) {
        m444a((View) viewGroup, i, obj);
    }

    /* renamed from: a */
    public abstract boolean mo447a(View view, Object obj);

    /* renamed from: b */
    public void m448b(DataSetObserver dataSetObserver) {
        this.f776a.unregisterObserver(dataSetObserver);
    }

    /* renamed from: b */
    public void m449b(View view) {
    }

    /* renamed from: b */
    public void m450b(View view, int i, Object obj) {
    }

    /* renamed from: b */
    public void m451b(ViewGroup viewGroup) {
        m449b((View) viewGroup);
    }

    /* renamed from: b */
    public void m452b(ViewGroup viewGroup, int i, Object obj) {
        m450b((View) viewGroup, i, obj);
    }
}
