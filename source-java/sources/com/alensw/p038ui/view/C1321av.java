package com.alensw.p038ui.view;

import java.util.List;

/* renamed from: com.alensw.ui.view.av */
/* loaded from: classes.dex */
class C1321av implements InterfaceC1316aq {

    /* renamed from: a */
    final /* synthetic */ LockPatternView f4563a;

    /* renamed from: b */
    final /* synthetic */ PasswordView f4564b;

    C1321av(PasswordView passwordView, LockPatternView lockPatternView) {
        this.f4564b = passwordView;
        this.f4563a = lockPatternView;
    }

    @Override // com.alensw.p038ui.view.InterfaceC1316aq
    /* renamed from: a */
    public void mo4351a() {
    }

    @Override // com.alensw.p038ui.view.InterfaceC1316aq
    /* renamed from: a */
    public void mo4352a(List list) {
    }

    @Override // com.alensw.p038ui.view.InterfaceC1316aq
    /* renamed from: b */
    public void mo4353b() {
    }

    @Override // com.alensw.p038ui.view.InterfaceC1316aq
    /* renamed from: b */
    public void mo4354b(List list) {
        InterfaceC1324ay interfaceC1324ay;
        InterfaceC1324ay interfaceC1324ay2;
        if (list.size() <= 1) {
            this.f4563a.m4299a();
            return;
        }
        interfaceC1324ay = this.f4564b.f4450d;
        if (interfaceC1324ay != null) {
            String m4278a = LockPatternView.m4278a(list);
            interfaceC1324ay2 = this.f4564b.f4450d;
            interfaceC1324ay2.mo3753a(this.f4564b, m4278a);
        }
    }
}
