package android.support.p009a.p010a;

import android.app.Activity;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.InterfaceC0201d;
import android.view.MenuItem;
import android.view.View;

/* renamed from: android.support.a.a.a */
/* loaded from: classes.dex */
public class C0158a implements InterfaceC0201d {

    /* renamed from: a */
    private final Activity f737a;

    /* renamed from: b */
    private final InterfaceC0160c f738b;

    /* renamed from: c */
    private final DrawerLayout f739c;

    /* renamed from: d */
    private InterfaceC0163f f740d;

    /* renamed from: e */
    private Drawable f741e;

    /* renamed from: f */
    private boolean f742f = true;

    /* renamed from: g */
    private boolean f743g;

    /* renamed from: h */
    private final int f744h;

    /* renamed from: i */
    private final int f745i;

    public C0158a(Activity activity, DrawerLayout drawerLayout, Object obj, int i, int i2) {
        this.f737a = activity;
        this.f738b = m389a(activity);
        this.f739c = drawerLayout;
        this.f744h = i;
        this.f745i = i2;
        if (obj instanceof Drawable) {
            this.f740d = new C0167j(this, activity, (Drawable) obj, 0.33333334f);
        } else {
            C0162e c0162e = new C0162e(activity, this.f738b.mo406a());
            if (obj instanceof Integer) {
                c0162e.m416a(((Integer) obj).intValue());
            }
            this.f740d = c0162e;
        }
        this.f741e = m405c();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static InterfaceC0160c m389a(Activity activity) {
        return activity instanceof InterfaceC0161d ? ((InterfaceC0161d) activity).m409a() : Build.VERSION.SDK_INT >= 18 ? new C0166i(activity) : Build.VERSION.SDK_INT >= 11 ? new C0165h(activity) : new C0164g(activity);
    }

    /* renamed from: a */
    public static C0170m m390a(Activity activity, int i) {
        InterfaceC0160c m389a = m389a(activity);
        C0162e c0162e = new C0162e(activity, m389a.mo406a());
        c0162e.m416a(i);
        c0162e.mo410a(1.0f);
        m389a.mo408a(c0162e, 0);
        return c0162e;
    }

    /* renamed from: b */
    public static boolean m391b(Activity activity) {
        return Build.VERSION.SDK_INT >= 17 && activity.getWindow().getDecorView().getLayoutDirection() == 1;
    }

    /* renamed from: d */
    private void m392d() {
        if (this.f739c.m526f(8388611)) {
            this.f739c.m521d(8388611);
        } else {
            this.f739c.m520c(8388611);
        }
    }

    /* renamed from: a */
    public void m393a() {
        if (this.f739c.m524e(8388611)) {
            this.f740d.mo410a(1.0f);
        } else {
            this.f740d.mo410a(0.0f);
        }
        if (this.f742f) {
            m397a((Drawable) this.f740d, this.f739c.m524e(8388611) ? this.f745i : this.f744h);
        }
    }

    /* renamed from: a */
    public void m394a(float f) {
        float min = Math.min(1.0f, Math.max(0.0f, f));
        if (this.f742f) {
            this.f740d.mo410a(min);
        } else if (this.f741e instanceof InterfaceC0163f) {
            ((InterfaceC0163f) this.f741e).mo410a(min);
        }
    }

    /* renamed from: a */
    void m395a(int i) {
        this.f738b.mo407a(i);
    }

    /* renamed from: a */
    public void m396a(Configuration configuration) {
        if (!this.f743g) {
            this.f741e = m405c();
        }
        m393a();
    }

    /* renamed from: a */
    void m397a(Drawable drawable, int i) {
        this.f738b.mo408a(drawable, i);
    }

    @Override // android.support.v4.widget.InterfaceC0201d
    /* renamed from: a */
    public void mo398a(View view) {
        this.f740d.mo410a(1.0f);
        if (this.f742f) {
            m395a(this.f745i);
        }
    }

    @Override // android.support.v4.widget.InterfaceC0201d
    /* renamed from: a */
    public void mo399a(View view, float f) {
        this.f740d.mo410a(Math.min(1.0f, Math.max(0.0f, f)));
    }

    @Override // android.support.v4.widget.InterfaceC0201d
    /* renamed from: a */
    public void mo400a(View view, boolean z, int i) {
    }

    /* renamed from: a */
    public void m401a(boolean z) {
        if (z != this.f742f) {
            if (z) {
                m397a((Drawable) this.f740d, this.f739c.m524e(8388611) ? this.f745i : this.f744h);
            } else {
                m397a(this.f741e, 0);
            }
            this.f742f = z;
        }
    }

    /* renamed from: a */
    public boolean m402a(MenuItem menuItem) {
        if (menuItem == null || menuItem.getItemId() != 16908332 || !this.f742f) {
            return false;
        }
        m392d();
        return true;
    }

    @Override // android.support.v4.widget.InterfaceC0201d
    /* renamed from: b */
    public void mo403b(View view) {
        this.f740d.mo410a(0.0f);
        if (this.f742f) {
            m395a(this.f744h);
        }
    }

    /* renamed from: b */
    public boolean m404b() {
        return this.f742f;
    }

    /* renamed from: c */
    Drawable m405c() {
        C0162e c0162e = new C0162e(this.f737a, m389a(this.f737a).mo406a());
        if (this.f740d instanceof C0162e) {
            c0162e.m416a(((C0162e) this.f740d).m418b());
        }
        c0162e.mo410a(1.0f);
        return c0162e;
    }
}
