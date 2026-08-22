package com.alensw.p038ui.p041c;

import android.net.Uri;
import android.nfc.NfcAdapter;
import android.nfc.NfcEvent;

/* renamed from: com.alensw.ui.c.db */
/* loaded from: classes.dex */
class C1242db implements NfcAdapter.CreateBeamUrisCallback {

    /* renamed from: a */
    final /* synthetic */ ActivityC1237cx f4117a;

    C1242db(ActivityC1237cx activityC1237cx) {
        this.f4117a = activityC1237cx;
    }

    @Override // android.nfc.NfcAdapter.CreateBeamUrisCallback
    public Uri[] createBeamUris(NfcEvent nfcEvent) {
        return this.f4117a.m4045f();
    }
}
