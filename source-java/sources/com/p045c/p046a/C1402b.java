package com.p045c.p046a;

import android.content.Context;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import p012b.p013a.C0382ge;

/* renamed from: com.c.a.b */
/* loaded from: classes.dex */
public class C1402b {

    /* renamed from: a */
    private static final C1414n f4973a = new C1414n();

    /* renamed from: a */
    public static void m4570a(long j) {
        C1398a.f4964l = j;
    }

    /* renamed from: a */
    public static void m4571a(Context context) {
        f4973a.m4599b(context);
    }

    /* renamed from: a */
    public static void m4572a(Context context, String str) {
        f4973a.m4596a(context, str, null, -1L, 1);
    }

    /* renamed from: a */
    public static void m4573a(Context context, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            C0382ge.m1279a("MobclickAgent", "label is null or empty");
        } else {
            f4973a.m4596a(context, str, str2, -1L, 1);
        }
    }

    /* renamed from: a */
    public static void m4574a(Context context, String str, Map map) {
        if (map == null) {
            C0382ge.m1281b("MobclickAgent", "input map is null");
        } else {
            f4973a.m4597a(context, str, new HashMap(map), -1L);
        }
    }

    /* renamed from: a */
    public static void m4575a(Context context, String str, Map map, int i) {
        HashMap hashMap = map == null ? new HashMap() : new HashMap(map);
        hashMap.put("__ct__", Integer.valueOf(i));
        f4973a.m4597a(context, str, hashMap, -1L);
    }

    /* renamed from: a */
    public static void m4576a(String str) {
        if (TextUtils.isEmpty(str)) {
            C0382ge.m1281b("MobclickAgent", "pageName is null or empty");
        } else {
            f4973a.m4598a(str);
        }
    }

    /* renamed from: a */
    public static void m4577a(boolean z) {
        C1398a.f4963k = z;
    }

    /* renamed from: b */
    public static void m4578b(Context context) {
        if (context == null) {
            C0382ge.m1281b("MobclickAgent", "unexpected null context in onResume");
        } else {
            f4973a.m4595a(context);
        }
    }

    /* renamed from: b */
    public static void m4579b(String str) {
        if (TextUtils.isEmpty(str)) {
            C0382ge.m1281b("MobclickAgent", "pageName is null or empty");
        } else {
            f4973a.m4600b(str);
        }
    }

    /* renamed from: b */
    public static void m4580b(boolean z) {
        C1398a.f4960h = z;
    }
}
