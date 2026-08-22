package com.alensw.p038ui.view;

/* renamed from: com.alensw.ui.view.bb */
/* loaded from: classes.dex */
class C1328bb implements InterfaceC1380y {

    /* renamed from: a */
    final /* synthetic */ PictureView f4571a;

    /* renamed from: b */
    private float f4572b;

    /* renamed from: c */
    private float f4573c;

    C1328bb(PictureView pictureView) {
        this.f4571a = pictureView;
    }

    @Override // com.alensw.p038ui.view.InterfaceC1380y
    /* renamed from: a */
    public void mo2144a() {
        this.f4571a.m4452b(this.f4571a.f4753af);
    }

    @Override // com.alensw.p038ui.view.InterfaceC1380y
    /* renamed from: a */
    public void mo2145a(float f, float f2) {
        if (this.f4571a.m4468m()) {
            this.f4571a.m4463h();
        }
        this.f4572b = this.f4571a.getTransRotation();
        this.f4573c = 0.0f;
    }

    @Override // com.alensw.p038ui.view.InterfaceC1380y
    /* renamed from: a */
    public boolean mo2146a(float f, float f2, float f3) {
        if (this.f4571a.getPictureType() <= 0 || Float.isNaN(f) || Float.isInfinite(f)) {
            return false;
        }
        if (f < 1.0f) {
            float min = Math.min(this.f4571a.getPictureWidth(), 16);
            float min2 = Math.min(this.f4571a.getPictureHeight(), 16);
            float width = this.f4571a.f4739P.width();
            float height = this.f4571a.f4739P.height();
            if (width * f < min || height * f < min2) {
                return false;
            }
        }
        this.f4571a.m4437a(f, f2, f3);
        if (this.f4571a.f4734K != null && this.f4571a.isShown()) {
            this.f4571a.f4734K.mo3959a(f, true);
        }
        return true;
    }

    @Override // com.alensw.p038ui.view.InterfaceC1380y
    /* renamed from: b */
    public void mo2147b(float f, float f2) {
        if (this.f4571a.f4734K == null || !this.f4571a.isShown()) {
            return;
        }
        this.f4571a.f4734K.mo3958a(f, f2);
    }

    @Override // com.alensw.p038ui.view.InterfaceC1380y
    /* renamed from: b */
    public boolean mo2148b(float f, float f2, float f3) {
        if (this.f4571a.getPictureType() <= 0) {
            return false;
        }
        this.f4571a.m4454c(f, f2, f3);
        this.f4573c = f;
        return true;
    }

    @Override // com.alensw.p038ui.view.InterfaceC1380y
    /* renamed from: c */
    public void mo2149c(float f, float f2) {
        if (this.f4571a.f4734K == null || !this.f4571a.isShown()) {
            return;
        }
        this.f4571a.f4734K.mo3961b(f, f2);
    }

    @Override // com.alensw.p038ui.view.InterfaceC1380y
    /* renamed from: d */
    public void mo2150d(float f, float f2) {
        this.f4571a.m4453c(f, f2);
    }

    @Override // com.alensw.p038ui.view.InterfaceC1380y
    /* renamed from: e */
    public void mo2151e(float f, float f2) {
        this.f4571a.m4458d(f, f2);
    }

    @Override // com.alensw.p038ui.view.InterfaceC1380y
    /* renamed from: f */
    public void mo2152f(float f, float f2) {
        float transRotation = this.f4571a.getTransRotation();
        if (transRotation == 0.0f && this.f4572b == 0.0f) {
            this.f4571a.m4459e(f, f2);
            return;
        }
        int signum = (int) Math.signum(this.f4573c);
        if (Math.abs(transRotation - this.f4572b) < 20.0f) {
            transRotation = 0.0f;
        } else if (signum > 0) {
            transRotation += 45.0f;
        } else if (signum < 0) {
            transRotation -= 45.0f;
        }
        this.f4571a.m4441a(Math.round(transRotation / 90.0f) * 90, false, f, f2, this.f4571a.f4751ad, null);
    }
}
