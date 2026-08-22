package com.alensw.p038ui.p041c;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.text.format.Formatter;
import com.alensw.PicFolder.CropActivity;
import com.alensw.PicFolder.QuickApp;
import com.alensw.bean.CommonFile;
import com.alensw.bean.CommonFolder;
import com.alensw.p023b.p024a.C0645a;
import com.alensw.p023b.p031h.C0712h;
import com.alensw.p038ui.activity.C1094a;
import com.alensw.p038ui.view.C1310ak;
import com.alensw.p038ui.view.InterfaceC1309aj;
import java.util.GregorianCalendar;

/* renamed from: com.alensw.ui.c.ae */
/* loaded from: classes.dex */
class C1164ae implements InterfaceC1309aj {

    /* renamed from: a */
    final /* synthetic */ C1290z f3859a;

    /* renamed from: b */
    private final GregorianCalendar f3860b = new GregorianCalendar();

    /* renamed from: c */
    private final char[] f3861c = new char[32];

    /* renamed from: d */
    private int f3862d;

    C1164ae(C1290z c1290z) {
        this.f3859a = c1290z;
    }

    /* renamed from: a */
    private int m3887a(char[] cArr, int i, int i2) {
        int m3888b = m3888b(cArr, (i * 1000) + i2, 0);
        cArr[cArr.length - 3] = '/';
        return m3888b;
    }

    /* renamed from: b */
    private int m3888b(char[] cArr, int i, int i2) {
        int length = cArr.length;
        int i3 = length;
        while (i != 0) {
            int i4 = i / 10;
            i3--;
            cArr[i3] = (char) ((i - (i4 * 10)) + 48);
            i = i4;
        }
        while (length - i3 < i2) {
            i3--;
            cArr[i3] = '0';
        }
        return i3;
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public int mo3656a() {
        return this.f3859a.f4304y.m3047o();
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public String mo3657a(int i) {
        CommonFile m3027a = this.f3859a.f4304y.m3027a(i);
        if (m3027a != null) {
            return (this.f3859a.f4290k == 3 || this.f3859a.f4290k == 1) ? QuickApp.m2037a(m3027a.m3018f() * 1000) : (this.f3859a.f4290k == 7 || this.f3859a.f4290k == 8) ? Formatter.formatFileSize(this.f3859a.f4082C, m3027a.m3016d()) : this.f3859a.m3880b(m3027a.m3012a());
        }
        return null;
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public void mo3658a(int i, int i2, int i3) {
        C0645a c0645a;
        boolean z = true;
        if (this.f3859a.f4087H != 2) {
            return;
        }
        if (i3 != 0) {
            if (i3 < 0) {
                z = false;
            }
        } else if (this.f3862d < 0) {
            z = false;
        }
        if (this.f3862d != i3) {
            this.f3862d = i3;
            QuickApp.f2077t.m2168a(false);
        }
        int i4 = i2 - i;
        for (int i5 = 0; i5 < i4; i5++) {
            CommonFile m3027a = this.f3859a.f4304y.m3027a(z ? i + i5 : (i2 - 1) - i5);
            if (m3027a != null && (m3027a.m3015c() & 1) != 0) {
                c0645a = this.f3859a.f4277O;
                if (!c0645a.m2519a(m3027a)) {
                    this.f3859a.m4181a(m3027a);
                }
            }
        }
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public void mo3659a(int i, int i2, boolean z) {
        while (i < i2) {
            CommonFile m3027a = this.f3859a.f4304y.m3027a(i);
            if (m3027a != null && m3027a.m3020h() != 'D') {
                if (z) {
                    this.f3859a.f4298s.add(m3027a);
                } else {
                    this.f3859a.f4298s.remove(m3027a);
                }
            }
            i++;
        }
        this.f3859a.f4285f.m4257b();
        this.f3859a.m4190m();
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public void mo3660a(int i, Canvas canvas, RectF rectF) {
        CommonFile m3027a = this.f3859a.f4304y.m3027a(i);
        if (m3027a != null) {
            this.f3859a.f4299t.setColor((this.f3859a.f4082C.f3742U & 16777215) | (-872415232));
            canvas.drawRect(rectF, this.f3859a.f4299t);
            this.f3860b.setTimeInMillis(m3027a.m3018f() * 1000);
            int i2 = this.f3860b.get(1);
            int i3 = this.f3860b.get(2) + 1;
            int i4 = this.f3860b.get(5);
            char[] cArr = this.f3861c;
            float height = rectF.height();
            float f = height / 2.0f;
            float f2 = (2.0f * f) / 7.0f;
            float f3 = f2 / 3.0f;
            this.f3859a.f4299t.setColor(this.f3859a.f4082C.f3746Y);
            this.f3859a.f4299t.setTextSize(f);
            int m3888b = m3888b(cArr, i4, 2);
            float f4 = rectF.top + ((height - ((f + f2) + f3)) / 2.0f) + f;
            canvas.drawText(cArr, m3888b, cArr.length - m3888b, rectF.centerX(), f4 - this.f3859a.f4299t.descent(), this.f3859a.f4299t);
            this.f3859a.f4300u.setColor(this.f3859a.f4082C.f3746Y);
            this.f3859a.f4300u.setTextSize(f2);
            int m3887a = m3887a(cArr, i2, i3);
            canvas.drawText(cArr, m3887a, cArr.length - m3887a, rectF.centerX(), ((f4 + f2) + f3) - this.f3859a.f4300u.descent(), this.f3859a.f4300u);
        }
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: a */
    public void mo3661a(int i, C1310ak c1310ak) {
        C0645a c0645a;
        CommonFile m3027a = this.f3859a.f4304y.m3027a(i);
        if (m3027a != null) {
            int m3015c = m3027a.m3015c();
            char m3020h = m3027a.m3020h();
            if ((m3015c & 1) != 0) {
                c0645a = this.f3859a.f4277O;
                c1310ak.f4518a = (C0712h) c0645a.m2521b(m3027a);
            } else if (m3020h == 'D') {
                c1310ak.f4518a = this.f3859a.m4196t();
            }
            if (c1310ak.f4518a != null) {
                c1310ak.f4518a.mo2865l();
            }
            boolean z = this.f3859a.f4289j == 2;
            if (m3020h != 'I' || z) {
                c1310ak.f4520c = m3027a.m3012a();
                String m3019g = m3027a.m3019g();
                if (z) {
                    c1310ak.f4521d[0] = "";
                    c1310ak.f4521d[1] = m3019g;
                    if (m3019g == null) {
                        if (this.f3859a.f4290k == 7 || this.f3859a.f4290k == 8) {
                            c1310ak.f4521d[1] = Formatter.formatFileSize(this.f3859a.f4082C, m3027a.m3016d());
                        } else {
                            c1310ak.f4521d[1] = QuickApp.m2043b(1000 * m3027a.m3018f());
                        }
                    }
                } else {
                    c1310ak.f4521d[0] = m3019g;
                }
            }
            if (this.f3859a.f4285f.f4407d && this.f3859a.f4298s.contains(m3027a)) {
                c1310ak.f4519b |= 2;
            }
            if ((134217728 & m3015c) != 0) {
                c1310ak.f4519b |= 16;
            }
        }
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: b */
    public void mo3662b(int i) {
        if (this.f3859a.f4087H != 2) {
            return;
        }
        this.f3859a.f4304y.f2807k = i;
        CommonFile m3027a = this.f3859a.f4304y.m3027a(i);
        char m3020h = m3027a.m3020h();
        if (this.f3859a.f4285f.f4407d) {
            if (this.f3859a.f4298s.contains(m3027a)) {
                this.f3859a.f4298s.remove(m3027a);
            } else if (m3020h != 'D') {
                this.f3859a.f4298s.add(m3027a);
            }
            this.f3859a.f4285f.m4268d(i);
            if (this.f3859a.f4082C.m3832q() && this.f3859a.f4298s.isEmpty()) {
                this.f3859a.f4082C.m3813d(false);
                return;
            } else {
                this.f3859a.m4190m();
                return;
            }
        }
        if (this.f3859a.f4288i != 0) {
            Intent intent = this.f3859a.f4082C.getIntent();
            if (m3020h != 'I' || !intent.hasExtra("crop")) {
                this.f3859a.m3864a(m3027a.mo3021i(), m3027a.m3014b());
                return;
            }
            Intent intent2 = new Intent(intent.getAction(), m3027a.mo3021i());
            intent2.setClass(this.f3859a.f4082C, CropActivity.class);
            intent2.putExtras(intent);
            C1094a.m3780a((Activity) this.f3859a.f4082C, intent2, 2);
            return;
        }
        if (m3020h == 'D') {
            this.f3859a.mo4057a((CommonFolder) m3027a);
        } else if (m3020h == 'I') {
            this.f3859a.m4187b(false);
        } else if (m3020h == 'V') {
            C1178as.m3901a(this.f3859a.f4082C, m3027a);
        }
    }

    @Override // com.alensw.p038ui.view.InterfaceC1309aj
    /* renamed from: c */
    public void mo3663c(int i) {
        CommonFile m3027a;
        if (this.f3859a.f4087H != 2 || this.f3859a.f4288i != 0 || (this.f3859a.f4304y.m3015c() & 2) == 0 || (m3027a = this.f3859a.f4304y.m3027a(i)) == null || m3027a.m3020h() == 'D' || this.f3859a.f4082C.m3832q()) {
            return;
        }
        this.f3859a.f4082C.m3813d(true);
        mo3659a(i, i + 1, true);
    }
}
