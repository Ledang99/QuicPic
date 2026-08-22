package com.alensw.p038ui.p041c;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.net.Uri;
import android.text.format.Formatter;
import com.alensw.PicFolder.CropActivity;
import com.alensw.PicFolder.QuickApp;
import com.alensw.p022a.C0622d;
import com.alensw.p023b.p031h.C0712h;
import com.alensw.p023b.p035l.C0742b;
import com.alensw.p038ui.activity.C1094a;
import com.alensw.p038ui.view.C1310ak;
import com.alensw.p038ui.view.InterfaceC1309aj;
import java.io.File;

/* renamed from: com.alensw.ui.c.bq */
/* loaded from: classes.dex */
class C1203bq implements InterfaceC1309aj {

    /* renamed from: a */
    final /* synthetic */ C1192bf f3999a;

    /* renamed from: b */
    private int f4000b;

    C1203bq(C1192bf c1192bf) {
        this.f3999a = c1192bf;
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public int mo3656a() {
        return this.f3999a.f3963g.m2390j();
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public String mo3657a(int i) {
        C0622d m2381e = this.f3999a.f3963g.m2381e(i);
        if (m2381e != null) {
            return (this.f3999a.f3966j == 5 || this.f3999a.f3966j == 6) ? QuickApp.m2037a(m2381e.f2407e * 1000) : (this.f3999a.f3966j == 3 || this.f3999a.f3966j == 1) ? QuickApp.m2037a(m2381e.f2406d * 1000) : (this.f3999a.f3966j == 7 || this.f3999a.f3966j == 8) ? Formatter.formatFileSize(this.f3999a.f4082C, m2381e.f2408f) : this.f3999a.m3880b(m2381e.f2404b);
        }
        return null;
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public void mo3658a(int i, int i2, int i3) {
        boolean z = true;
        if (this.f3999a.f4087H != 2) {
            return;
        }
        if (i3 != 0) {
            if (i3 < 0) {
                z = false;
            }
        } else if (this.f4000b < 0) {
            z = false;
        }
        if (this.f4000b != i3) {
            this.f4000b = i3;
            QuickApp.f2077t.m2168a(false);
        }
        int i4 = i2 - i;
        for (int i5 = 0; i5 < i4; i5++) {
            C0622d m2381e = this.f3999a.f3963g.m2381e(z ? i + i5 : (i2 - 1) - i5);
            if (m2381e != null && !QuickApp.f2080w.m2519a(m2381e)) {
                this.f3999a.m3963a(m2381e);
            }
        }
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public void mo3659a(int i, int i2, boolean z) {
        while (i < i2) {
            C0622d m2381e = this.f3999a.f3963g.m2381e(i);
            if (m2381e != null) {
                if (z) {
                    this.f3999a.f3967k.add(m2381e);
                } else {
                    this.f3999a.f3967k.remove(m2381e);
                }
            }
            i++;
        }
        this.f3999a.f3962f.m4257b();
        this.f3999a.m3982m();
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public void mo3660a(int i, Canvas canvas, RectF rectF) {
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public void mo3661a(int i, C1310ak c1310ak) {
        C0622d m2381e = this.f3999a.f3963g.m2381e(i);
        if (m2381e != null) {
            c1310ak.f4518a = (C0712h) QuickApp.f2080w.m2521b(m2381e);
            if (c1310ak.f4518a != null) {
                c1310ak.f4518a.mo2865l();
            }
            boolean z = this.f3999a.f3965i == 2;
            if (m2381e.f2405c != 'I' || z) {
                c1310ak.f4520c = C0742b.m2997c(m2381e.f2404b);
            }
            if (z) {
                if (this.f3999a.f3966j == 5 || this.f3999a.f3966j == 6) {
                    c1310ak.f4521d[1] = QuickApp.m2043b(m2381e.f2407e * 1000);
                } else if (this.f3999a.f3966j == 3 || this.f3999a.f3966j == 1) {
                    c1310ak.f4521d[1] = QuickApp.m2043b(m2381e.f2406d * 1000);
                } else if (this.f3999a.f3966j == 7 || this.f3999a.f3966j == 8) {
                    c1310ak.f4521d[1] = Formatter.formatFileSize(this.f3999a.f4082C, m2381e.f2408f);
                }
            }
            if (this.f3999a.f3962f.f4407d && this.f3999a.f3967k.contains(m2381e)) {
                c1310ak.f4519b |= 2;
            }
        }
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: b */
    public void mo3662b(int i) {
        if (this.f3999a.f4087H != 2) {
            return;
        }
        File m2376c = this.f3999a.f3963g.m2376c(i);
        char m2383f = this.f3999a.f3963g.m2383f(i);
        if (this.f3999a.f3962f.f4407d) {
            C0622d m2381e = this.f3999a.f3963g.m2381e(i);
            if (this.f3999a.f3967k.contains(m2381e)) {
                this.f3999a.f3967k.remove(m2381e);
            } else {
                this.f3999a.f3967k.add(m2381e);
            }
            this.f3999a.f3962f.m4268d(i);
            if (this.f3999a.f4082C.m3832q() && this.f3999a.f3967k.isEmpty()) {
                this.f3999a.f4082C.m3813d(false);
                return;
            } else {
                this.f3999a.m3982m();
                return;
            }
        }
        if (this.f3999a.f3964h == 0) {
            if (m2383f != 'I') {
                if (m2383f == 'V') {
                    C1094a.m3779a(this.f3999a.f4082C, m2376c.getPath());
                    return;
                }
                return;
            } else {
                Uri fromFile = Uri.fromFile(m2376c);
                String m2385g = this.f3999a.f3963g.m2385g(i);
                this.f3999a.f3963g.f2419c = i;
                this.f3999a.m3966a(fromFile, m2385g, false);
                return;
            }
        }
        Intent intent = this.f3999a.f4082C.getIntent();
        this.f3999a.f3963g.f2419c = i;
        if (m2383f != 'I' || !intent.hasExtra("crop")) {
            this.f3999a.m3864a(C1246df.m4065a(m2376c.getPath(), m2383f), this.f3999a.f3963g.m2385g(i));
        } else {
            Intent intent2 = new Intent(intent.getAction(), Uri.fromFile(m2376c));
            intent2.setClass(this.f3999a.f4082C, CropActivity.class);
            intent2.putExtras(intent);
            C1094a.m3780a((Activity) this.f3999a.f4082C, intent2, 2);
        }
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: c */
    public void mo3663c(int i) {
        if (this.f3999a.f4087H == 2 && this.f3999a.f3964h == 0 && !this.f3999a.f4082C.m3832q()) {
            this.f3999a.f4082C.m3813d(true);
            mo3659a(i, i + 1, true);
        }
    }
}
