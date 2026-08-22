package com.alensw.p038ui.view;

import android.content.DialogInterface;

/* renamed from: com.alensw.ui.view.at */
/* loaded from: classes.dex */
class DialogInterfaceOnMultiChoiceClickListenerC1319at implements DialogInterface.OnMultiChoiceClickListener {

    /* renamed from: a */
    final /* synthetic */ MultiListPreference f4553a;

    DialogInterfaceOnMultiChoiceClickListenerC1319at(MultiListPreference multiListPreference) {
        this.f4553a = multiListPreference;
    }

    @Override // android.content.DialogInterface.OnMultiChoiceClickListener
    public void onClick(DialogInterface dialogInterface, int i, boolean z) {
        boolean[] zArr;
        zArr = this.f4553a.f4446c;
        zArr[i] = z;
    }
}
