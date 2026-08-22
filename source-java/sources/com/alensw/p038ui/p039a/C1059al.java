package com.alensw.p038ui.p039a;

import com.alensw.p023b.p035l.C0742b;
import java.io.File;

/* renamed from: com.alensw.ui.a.al */
/* loaded from: classes.dex */
class C1059al implements InterfaceC1084s {

    /* renamed from: a */
    final /* synthetic */ DialogInterfaceOnClickListenerC1058ak f3639a;

    C1059al(DialogInterfaceOnClickListenerC1058ak dialogInterfaceOnClickListenerC1058ak) {
        this.f3639a = dialogInterfaceOnClickListenerC1058ak;
    }

    @Override // com.alensw.p038ui.p039a.InterfaceC1084s
    /* renamed from: a */
    public void mo3652a(String str) {
        File m3725a;
        String m2973a = C0742b.m2973a(str.trim(), '.');
        if (m2973a.length() == 0 || (m3725a = this.f3639a.f3638c.m3725a(m2973a)) == null) {
            return;
        }
        this.f3639a.f3637b.mo3728a(m3725a);
    }
}
