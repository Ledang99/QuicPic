package com.p045c.p046a;

import android.content.Context;
import android.text.TextUtils;

/* renamed from: com.c.a.q */
/* loaded from: classes.dex */
public class C1417q {

    /* renamed from: a */
    private static String[] f5000a = new String[2];

    /* renamed from: a */
    public static String[] m4601a(Context context) {
        String[] m4613a;
        if (!TextUtils.isEmpty(f5000a[0]) && !TextUtils.isEmpty(f5000a[1])) {
            return f5000a;
        }
        if (context == null || (m4613a = C1420t.m4606a(context).m4613a()) == null) {
            return null;
        }
        f5000a[0] = m4613a[0];
        f5000a[1] = m4613a[1];
        return f5000a;
    }
}
