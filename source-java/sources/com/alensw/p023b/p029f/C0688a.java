package com.alensw.p023b.p029f;

import android.content.Context;
import android.util.Log;
import com.p045c.p046a.C1398a;
import com.p045c.p046a.C1402b;
import java.util.Map;

/* renamed from: com.alensw.b.f.a */
/* loaded from: classes.dex */
public class C0688a {
    /* renamed from: a */
    public static String m2712a(Context context, int i) {
        try {
            C1398a.m4566a("537c139556240b3cfd00f3fd");
            C1398a.m4568b(i >= 0 ? "official" : "unknown");
            C1402b.m4580b(false);
            C1402b.m4577a(i == 0);
            C1402b.m4570a(5000L);
            return C1398a.m4567b(context);
        } catch (Throwable th) {
            Log.e("Analytic", "init mob,0x ", th);
            return null;
        }
    }

    /* renamed from: a */
    public static void m2713a(Context context) {
        C1402b.m4578b(context);
    }

    /* renamed from: a */
    public static void m2714a(Context context, EnumC0689b enumC0689b) {
        C1402b.m4572a(context, enumC0689b.toString());
    }

    /* renamed from: a */
    public static void m2715a(Context context, EnumC0689b enumC0689b, String str) {
        C1402b.m4573a(context, enumC0689b.toString(), str);
    }

    /* renamed from: a */
    public static void m2716a(Context context, EnumC0689b enumC0689b, Map map) {
        C1402b.m4574a(context, enumC0689b.toString(), map);
    }

    /* renamed from: a */
    public static void m2717a(Context context, EnumC0689b enumC0689b, Map map, int i) {
        C1402b.m4575a(context, enumC0689b.toString(), map, i);
    }

    /* renamed from: a */
    public static void m2718a(String str) {
        C1402b.m4576a(str);
    }

    /* renamed from: b */
    public static void m2719b(Context context) {
        C1402b.m4571a(context);
    }

    /* renamed from: b */
    public static void m2720b(String str) {
        C1402b.m4579b(str);
    }
}
