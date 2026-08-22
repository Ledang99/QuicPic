package android.support.v4.widget;

import android.view.View;

/* renamed from: android.support.v4.widget.g */
/* loaded from: classes.dex */
class C0204g extends AbstractC0212o {

    /* renamed from: a */
    final /* synthetic */ DrawerLayout f881a;

    /* renamed from: b */
    private final int f882b;

    /* renamed from: c */
    private C0209l f883c;

    /* renamed from: d */
    private final Runnable f884d = new RunnableC0205h(this);

    public C0204g(DrawerLayout drawerLayout, int i) {
        this.f881a = drawerLayout;
        this.f882b = i;
    }

    /* renamed from: b */
    private void m540b() {
        View m511a = this.f881a.m511a(this.f882b == 3 ? 5 : 3);
        if (m511a != null) {
            this.f881a.m531k(m511a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m541c() {
        View view;
        int i;
        int m605b = this.f883c.m605b();
        boolean z = this.f882b == 3;
        if (z) {
            View m511a = this.f881a.m511a(3);
            int i2 = (m511a != null ? -m511a.getWidth() : 0) + m605b;
            view = m511a;
            i = i2;
        } else {
            View m511a2 = this.f881a.m511a(5);
            int width = this.f881a.getWidth() - m605b;
            view = m511a2;
            i = width;
        }
        if (view != null) {
            if (((!z || view.getLeft() >= i) && (z || view.getLeft() <= i)) || this.f881a.m519c(view) != 0) {
                return;
            }
            C0202e c0202e = (C0202e) view.getLayoutParams();
            this.f883c.m603a(view, i, view.getTop());
            c0202e.f878c = true;
            this.f881a.invalidate();
            m540b();
            this.f881a.m517b();
        }
    }

    @Override // android.support.v4.widget.AbstractC0212o
    /* renamed from: a */
    public int mo542a(View view) {
        if (this.f881a.m529i(view)) {
            return view.getWidth();
        }
        return 0;
    }

    @Override // android.support.v4.widget.AbstractC0212o
    /* renamed from: a */
    public int mo543a(View view, int i, int i2) {
        if (this.f881a.m516a(view, 3)) {
            return Math.max(-view.getWidth(), Math.min(i, 0));
        }
        int width = this.f881a.getWidth();
        return Math.max(width - view.getWidth(), Math.min(i, width));
    }

    /* renamed from: a */
    public void m544a() {
        this.f881a.removeCallbacks(this.f884d);
    }

    @Override // android.support.v4.widget.AbstractC0212o
    /* renamed from: a */
    public void mo545a(int i) {
        this.f881a.m513a(this.f882b, i, this.f883c.m611c());
    }

    @Override // android.support.v4.widget.AbstractC0212o
    /* renamed from: a */
    public void mo546a(int i, int i2) {
        this.f881a.postDelayed(this.f884d, 160L);
    }

    /* renamed from: a */
    public void m547a(C0209l c0209l) {
        this.f883c = c0209l;
    }

    @Override // android.support.v4.widget.AbstractC0212o
    /* renamed from: a */
    public void mo548a(View view, float f, float f2) {
        int width;
        float m525f = this.f881a.m525f(view);
        int width2 = view.getWidth();
        if (this.f881a.m516a(view, 3)) {
            width = (f > 0.0f || (f == 0.0f && m525f > 0.5f)) ? 0 : -width2;
        } else {
            width = this.f881a.getWidth();
            if (f < 0.0f || (f == 0.0f && m525f > 0.5f)) {
                width -= width2;
            }
        }
        this.f883c.m601a(width, view.getTop());
        this.f881a.invalidate();
    }

    @Override // android.support.v4.widget.AbstractC0212o
    /* renamed from: a */
    public void mo549a(View view, int i, int i2, int i3, int i4) {
        int width = view.getWidth();
        float width2 = this.f881a.m516a(view, 3) ? (width + i) / width : (this.f881a.getWidth() - i) / width;
        this.f881a.m518b(view, width2);
        view.setVisibility(width2 == 0.0f ? 4 : 0);
        this.f881a.invalidate();
    }

    @Override // android.support.v4.widget.AbstractC0212o
    /* renamed from: a */
    public boolean mo550a(View view, int i) {
        return this.f881a.m529i(view) && this.f881a.m516a(view, this.f882b) && this.f881a.m519c(view) == 0;
    }

    @Override // android.support.v4.widget.AbstractC0212o
    /* renamed from: b */
    public int mo551b(View view, int i, int i2) {
        return view.getTop();
    }

    @Override // android.support.v4.widget.AbstractC0212o
    /* renamed from: b */
    public void mo552b(int i, int i2) {
        View m511a = (i & 1) == 1 ? this.f881a.m511a(3) : this.f881a.m511a(5);
        if (m511a == null || this.f881a.m519c(m511a) != 0) {
            return;
        }
        this.f883c.m600a(m511a, i2);
    }

    @Override // android.support.v4.widget.AbstractC0212o
    /* renamed from: b */
    public void mo553b(View view, int i) {
        ((C0202e) view.getLayoutParams()).f878c = false;
        m540b();
    }

    @Override // android.support.v4.widget.AbstractC0212o
    /* renamed from: b */
    public boolean mo554b(int i) {
        return false;
    }
}
