package com.alensw.p023b.p027d;

import android.util.Log;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p035l.C0742b;
import org.json.JSONObject;

/* renamed from: com.alensw.b.d.a */
/* loaded from: classes.dex */
public class C0665a {
    /* renamed from: a */
    public boolean m2623a(float f, float f2, C0667c c0667c) {
        String optString;
        String[] split;
        try {
            JSONObject jSONObject = new JSONObject(C0675b.m2658a(C0742b.m2974a("http://gc.ditu.aliyun.com/regeocoding?type=010&l=%f,%f", f, f2), (InterfaceC0679f) null)).getJSONArray("addrList").getJSONObject(0);
            if (jSONObject.optInt("status") != 1 || (optString = jSONObject.optString("admName")) == null || (split = optString.split(",")) == null || split.length < 2) {
                return false;
            }
            c0667c.f2545c = split[split.length >= 3 ? (char) 1 : (char) 0];
            if (c0667c.f2545c == null || c0667c.f2545c.length() == 0) {
                return false;
            }
            c0667c.f2543a = "中国";
            c0667c.f2544b = split[0];
            c0667c.f2546d = split[split.length < 3 ? (char) 1 : (char) 2];
            c0667c.f2547e = jSONObject.optString("addr");
            if (c0667c.f2547e == null || c0667c.f2547e.length() == 0) {
                c0667c.f2547e = jSONObject.optString("name");
            }
            return true;
        } catch (Throwable th) {
            Log.e("GeoCodeApi", "query failed: " + f + "," + f2, th);
            return false;
        }
    }
}
