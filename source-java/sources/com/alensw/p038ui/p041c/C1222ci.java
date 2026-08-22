package com.alensw.p038ui.p041c;

import android.graphics.Canvas;
import android.graphics.RectF;
import com.alensw.PicFolder.QuickApp;
import com.alensw.PicFolder.R;
import com.alensw.p022a.C0623e;
import com.alensw.p023b.p031h.C0712h;
import com.alensw.p038ui.view.C1310ak;
import com.alensw.p038ui.view.InterfaceC1309aj;
import java.io.File;

/* renamed from: com.alensw.ui.c.ci */
/* loaded from: classes.dex */
class C1222ci implements InterfaceC1309aj {

    /* renamed from: a */
    final /* synthetic */ C1212bz f4060a;

    /* renamed from: b */
    private final int f4061b = C0623e.f2410b.length();

    /* renamed from: c */
    private int f4062c;

    C1222ci(C1212bz c1212bz) {
        this.f4060a = c1212bz;
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public int mo3656a() {
        return this.f4060a.f4023l.m2509f();
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public String mo3657a(int i) {
        C0623e m2500b = this.f4060a.f4023l.m2500b(i);
        return (this.f4060a.f4031t == 3 || this.f4060a.f4031t == 4) ? C1212bz.m3992c(m2500b.f2421e) : this.f4060a.m3880b(m2500b.getName());
    }

    /* renamed from: a */
    public String m4018a(String str) {
        int lastIndexOf;
        return (str == null || (lastIndexOf = str.lastIndexOf(File.separatorChar)) <= 0) ? str : (!str.startsWith(C0623e.f2410b) || lastIndexOf <= this.f4061b) ? (!str.startsWith("/storage/") || lastIndexOf <= 9) ? (!str.startsWith("/mnt/") || lastIndexOf <= 5) ? str.substring(0, lastIndexOf) : str.substring(5, lastIndexOf) : str.substring(9, lastIndexOf) : str.substring(this.f4061b, lastIndexOf);
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public void mo3658a(int i, int i2, int i3) {
        boolean z = true;
        if (this.f4060a.f4087H == 2 && !this.f4060a.f4027p) {
            if (i3 != 0) {
                if (i3 < 0) {
                    z = false;
                }
            } else if (this.f4062c < 0) {
                z = false;
            }
            if (this.f4062c != i3) {
                this.f4062c = i3;
                QuickApp.f2077t.m2168a(false);
            }
            int i4 = i2 - i;
            for (int i5 = 0; i5 < i4; i5++) {
                C0623e m2500b = this.f4060a.f4023l.m2500b(z ? i + i5 : (i2 - 1) - i5);
                if (m2500b != null) {
                    this.f4060a.m4002d(m2500b);
                }
            }
        }
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public void mo3659a(int i, int i2, boolean z) {
        while (i < i2) {
            C0623e m2500b = this.f4060a.f4023l.m2500b(i);
            if (m2500b != null) {
                if (z) {
                    this.f4060a.f4017A.add(m2500b);
                } else {
                    this.f4060a.f4017A.remove(m2500b);
                }
            }
            i++;
        }
        this.f4060a.f4021j.m4257b();
        this.f4060a.f4082C.m3807a((CharSequence) (Integer.toString(this.f4060a.f4017A.size()) + "/" + this.f4060a.f4023l.m2509f()), false);
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public void mo3660a(int i, Canvas canvas, RectF rectF) {
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public void mo3661a(int i, C1310ak c1310ak) {
        C0623e m2500b = this.f4060a.f4023l.m2500b(i);
        int m2389i = m2500b.m2389i();
        int m2390j = m2500b.m2390j();
        if (m2390j > 0) {
            c1310ak.f4518a = (C0712h) QuickApp.f2079v.m2521b(m2500b);
        } else {
            c1310ak.f4518a = this.f4060a.m4005m();
        }
        if (c1310ak.f4518a != null) {
            c1310ak.f4518a.mo2865l();
        }
        if (m2389i == 0 && m2500b.f2423g == 2) {
            c1310ak.f4520c = this.f4060a.m4032g(R.string.camera);
        } else {
            c1310ak.f4520c = m2500b.getName();
        }
        if (this.f4060a.f4030s == 2) {
            String m3992c = C1212bz.m3992c(m2500b.f2421e);
            c1310ak.f4521d[0] = m2390j > 0 ? Integer.toString(m2390j) : "";
            if (this.f4060a.f4026o) {
                c1310ak.f4521d[1] = m3992c;
            } else {
                c1310ak.f4521d[1] = m4018a(m2500b.getPath());
                c1310ak.f4521d[2] = m3992c;
            }
        } else if (m2390j > 0) {
            c1310ak.f4521d[0] = Integer.toString(m2390j);
        }
        if (this.f4060a.f4021j.f4407d && this.f4060a.f4017A.contains(m2500b)) {
            c1310ak.f4519b = 2;
        }
        if (QuickApp.f2074q.f2452b && m2500b.m2369a(false)) {
            c1310ak.f4519b |= 1;
        }
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: b */
    public void mo3662b(int i) {
        if (this.f4060a.f4087H != 2) {
            return;
        }
        this.f4060a.f4021j.m4268d(this.f4060a.f4033v);
        this.f4060a.f4033v = i;
        this.f4060a.f4021j.m4268d(i);
        C0623e m2500b = this.f4060a.f4023l.m2500b(i);
        if (this.f4060a.f4032u == 3 && (!this.f4060a.f4026o || m2500b.m2389i() == 0)) {
            this.f4060a.m3874a((File) m2500b);
            return;
        }
        if (!this.f4060a.f4021j.f4407d) {
            if (m2500b.m2389i() != 0) {
                this.f4060a.m3999b(m2500b);
                return;
            } else {
                this.f4060a.m3994a(m2500b, i);
                C1159a.m3858a(this.f4060a.f4082C, "local");
                return;
            }
        }
        if (this.f4060a.f4017A.contains(m2500b)) {
            this.f4060a.f4017A.remove(m2500b);
        } else {
            this.f4060a.f4017A.add(m2500b);
        }
        this.f4060a.f4021j.m4268d(i);
        if (this.f4060a.f4082C.m3832q()) {
            if (this.f4060a.f4017A.isEmpty()) {
                this.f4060a.f4082C.m3813d(false);
            } else {
                this.f4060a.f4082C.m3807a((CharSequence) (Integer.toString(this.f4060a.f4017A.size()) + "/" + this.f4060a.f4023l.m2509f()), false);
            }
        }
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: c */
    public void mo3663c(int i) {
        if (this.f4060a.f4087H != 2) {
            return;
        }
        if (this.f4060a.f4032u != 0) {
            mo3662b(i);
        } else {
            if (this.f4060a.f4082C.m3832q()) {
                return;
            }
            this.f4060a.f4082C.m3813d(true);
            this.f4060a.f4033v = i;
            mo3659a(i, i + 1, true);
        }
    }
}
