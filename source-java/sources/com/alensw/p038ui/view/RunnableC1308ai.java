package com.alensw.p038ui.view;

/* renamed from: com.alensw.ui.view.ai */
/* loaded from: classes.dex */
class RunnableC1308ai implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ImageGridView f4517a;

    RunnableC1308ai(ImageGridView imageGridView) {
        this.f4517a = imageGridView;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00e9, code lost:
    
        if (r2 != r0) goto L31;
     */
    /* JADX WARN: Removed duplicated region for block: B:12:0x008e  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        float f9;
        float f10;
        int m4255b;
        int i;
        int i2;
        int i3;
        InterfaceC1309aj interfaceC1309aj;
        int i4;
        int i5;
        InterfaceC1309aj interfaceC1309aj2;
        int i6;
        int i7;
        InterfaceC1309aj interfaceC1309aj3;
        int i8;
        int i9;
        float f11;
        float f12;
        if (this.f4517a.isPressed() && this.f4517a.isShown()) {
            int scrollY = this.f4517a.getScrollY();
            int scrollRangeY = this.f4517a.getScrollRangeY();
            int height = this.f4517a.getHeight();
            f = this.f4517a.f4374V;
            float f13 = f * 8.0f;
            f2 = this.f4517a.f4374V;
            float f14 = f2 * 64.0f;
            float paddingTop = this.f4517a.getPaddingTop() + f14;
            float paddingBottom = this.f4517a.getPaddingBottom() + f14;
            f3 = this.f4517a.f4377aB;
            f4 = this.f4517a.f4404az;
            if (f3 < f4) {
                f11 = this.f4517a.f4377aB;
                if (f11 < paddingTop) {
                    f12 = this.f4517a.f4377aB;
                    this.f4517a.scrollBy(0, -Math.min(Math.round(((paddingTop - f12) / f14) * f13), scrollY));
                    ImageGridView imageGridView = this.f4517a;
                    f9 = this.f4517a.f4376aA;
                    f10 = this.f4517a.f4377aB;
                    m4255b = imageGridView.m4255b(f9, f10);
                    if (m4255b != -1) {
                        i = this.f4517a.f4360H;
                        if (m4255b >= i) {
                            i3 = this.f4517a.f4360H;
                            i2 = m4255b + 1;
                        } else {
                            i2 = this.f4517a.f4360H;
                            i3 = m4255b;
                        }
                        interfaceC1309aj = this.f4517a.f4409r;
                        if (interfaceC1309aj != null && this.f4517a.isShown()) {
                            i4 = this.f4517a.f4402ax;
                            i5 = this.f4517a.f4403ay;
                            boolean z = Math.abs(i4 - i5) > 1;
                            if (z) {
                                interfaceC1309aj3 = this.f4517a.f4409r;
                                i8 = this.f4517a.f4402ax;
                                i9 = this.f4517a.f4403ay;
                                interfaceC1309aj3.mo3659a(i8, i9, false);
                            }
                            if (!z) {
                                i6 = this.f4517a.f4402ax;
                                if (i6 == i3) {
                                    i7 = this.f4517a.f4403ay;
                                }
                            }
                            interfaceC1309aj2 = this.f4517a.f4409r;
                            interfaceC1309aj2.mo3659a(i3, i2, true);
                        }
                        this.f4517a.f4402ax = i3;
                        this.f4517a.f4403ay = i2;
                    }
                    this.f4517a.m4394a(this);
                }
            }
            f5 = this.f4517a.f4377aB;
            f6 = this.f4517a.f4404az;
            if (f5 > f6) {
                f7 = this.f4517a.f4377aB;
                if (f7 > height - paddingBottom) {
                    f8 = this.f4517a.f4377aB;
                    this.f4517a.scrollBy(0, Math.min(Math.round(((f8 - (height - paddingBottom)) / f14) * f13), scrollRangeY - scrollY));
                }
            }
            ImageGridView imageGridView2 = this.f4517a;
            f9 = this.f4517a.f4376aA;
            f10 = this.f4517a.f4377aB;
            m4255b = imageGridView2.m4255b(f9, f10);
            if (m4255b != -1) {
            }
            this.f4517a.m4394a(this);
        }
    }
}
