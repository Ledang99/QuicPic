package com.alensw.p038ui.activity;

import android.annotation.TargetApi;
import android.content.Context;
import com.alensw.p038ui.view.AbstractC1357cd;

/* renamed from: com.alensw.ui.activity.u */
/* loaded from: classes.dex */
class C1152u extends AbstractC1357cd {

    /* renamed from: a */
    final /* synthetic */ ActivityC1147p f3836a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C1152u(ActivityC1147p activityC1147p, Context context) {
        super(context);
        this.f3836a = activityC1147p;
    }

    @Override // com.alensw.p038ui.view.AbstractC1357cd
    @TargetApi(9)
    /* renamed from: a */
    public void mo3855a(int i) {
        int i2 = 0;
        if (this.f3836a.f3830B == 2 && (i = i + 1) > 3) {
            i = 0;
        }
        switch (i) {
            case 0:
                i2 = 1;
                break;
            case 1:
                break;
            case 2:
                i2 = 9;
                break;
            case 3:
                i2 = 8;
                break;
            default:
                i2 = 4;
                break;
        }
        this.f3836a.setRequestedOrientation(i2);
    }
}
