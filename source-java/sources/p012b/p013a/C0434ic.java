package p012b.p013a;

import android.content.Context;
import android.telephony.TelephonyManager;

/* renamed from: b.a.ic */
/* loaded from: classes.dex */
public class C0434ic extends AbstractC0215a {

    /* renamed from: a */
    private Context f1557a;

    public C0434ic(Context context) {
        super("imei");
        this.f1557a = context;
    }

    @Override // p012b.p013a.AbstractC0215a
    /* renamed from: f */
    public String mo629f() {
        TelephonyManager telephonyManager = (TelephonyManager) this.f1557a.getSystemService("phone");
        if (telephonyManager == null) {
        }
        try {
            if (C0381gd.m1261a(this.f1557a, "android.permission.READ_PHONE_STATE")) {
                return telephonyManager.getDeviceId();
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }
}
