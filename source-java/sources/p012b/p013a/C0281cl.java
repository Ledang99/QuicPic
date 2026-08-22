package p012b.p013a;

import android.content.Context;
import android.provider.Settings;

/* renamed from: b.a.cl */
/* loaded from: classes.dex */
public class C0281cl extends AbstractC0215a {

    /* renamed from: a */
    private Context f1141a;

    public C0281cl(Context context) {
        super("android_id");
        this.f1141a = context;
    }

    @Override // p012b.p013a.AbstractC0215a
    /* renamed from: f */
    public String mo629f() {
        try {
            return Settings.Secure.getString(this.f1141a.getContentResolver(), "android_id");
        } catch (Exception e) {
            return null;
        }
    }
}
