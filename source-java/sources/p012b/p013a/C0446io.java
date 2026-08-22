package p012b.p013a;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;

/* renamed from: b.a.io */
/* loaded from: classes.dex */
public class C0446io {

    /* renamed from: c */
    private SharedPreferences f1594c;

    /* renamed from: a */
    private final String f1592a = "umeng_event_snapshot";

    /* renamed from: b */
    private boolean f1593b = false;

    /* renamed from: d */
    private Map f1595d = new HashMap();

    public C0446io(Context context) {
        this.f1594c = C0456iy.m1510a(context, "umeng_event_snapshot");
    }

    /* renamed from: a */
    public void m1481a(boolean z) {
        this.f1593b = z;
    }
}
