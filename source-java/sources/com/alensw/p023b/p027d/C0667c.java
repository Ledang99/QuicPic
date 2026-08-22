package com.alensw.p023b.p027d;

import android.content.Context;
import android.text.TextUtils;
import java.util.Locale;

/* renamed from: com.alensw.b.d.c */
/* loaded from: classes.dex */
public class C0667c {

    /* renamed from: a */
    public String f2543a;

    /* renamed from: b */
    public String f2544b;

    /* renamed from: c */
    public String f2545c;

    /* renamed from: d */
    public String f2546d;

    /* renamed from: e */
    public String f2547e;

    /* renamed from: f */
    public String f2548f;

    /* renamed from: a */
    public String m2625a() {
        StringBuilder sb = new StringBuilder(128);
        if (!TextUtils.isEmpty(this.f2546d)) {
            sb.append(this.f2546d).append(',');
        }
        if (!TextUtils.isEmpty(this.f2545c) && !this.f2545c.equals(this.f2544b)) {
            sb.append(this.f2545c).append(',');
        }
        if (!TextUtils.isEmpty(this.f2544b)) {
            sb.append(this.f2544b);
        }
        int length = sb.length();
        if (length > 0 && sb.charAt(length - 1) == ',') {
            length--;
            sb.deleteCharAt(length);
        }
        if (length == 0 && !TextUtils.isEmpty(this.f2543a)) {
            sb.append(this.f2543a);
        }
        return sb.toString();
    }

    /* renamed from: a */
    public String m2626a(Context context) {
        StringBuilder sb = new StringBuilder(256);
        boolean equals = Locale.CHINA.equals(context.getResources().getConfiguration().locale);
        if (!TextUtils.isEmpty(this.f2543a) && (!equals || !"中国".equals(this.f2543a))) {
            sb.append(this.f2543a).append(',');
        }
        if (!TextUtils.isEmpty(this.f2544b)) {
            sb.append(this.f2544b).append(',');
        }
        if (!TextUtils.isEmpty(this.f2545c) && !this.f2545c.equals(this.f2544b)) {
            sb.append(this.f2545c).append(',');
        }
        if (!TextUtils.isEmpty(this.f2546d)) {
            sb.append(this.f2546d).append(',');
        }
        if (!TextUtils.isEmpty(this.f2547e)) {
            sb.append(this.f2547e).append(',');
        }
        if (!TextUtils.isEmpty(this.f2548f)) {
            sb.append(this.f2548f);
        }
        int length = sb.length();
        if (length > 0 && sb.charAt(length - 1) == ',') {
            sb.deleteCharAt(length - 1);
        }
        return sb.toString();
    }

    public String toString() {
        return m2625a();
    }
}
