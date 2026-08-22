package com.alensw.p023b.p027d;

import android.util.Log;
import com.alensw.p023b.p028e.C0675b;
import com.alensw.p023b.p028e.InterfaceC0679f;
import com.alensw.p023b.p035l.C0742b;
import org.json.JSONObject;

/* renamed from: com.alensw.b.d.b */
/* loaded from: classes.dex */
public class C0666b {
    /* renamed from: a */
    public boolean m2624a(float f, float f2, C0667c c0667c) {
        try {
            JSONObject optJSONObject = new JSONObject(C0675b.m2658a(C0742b.m2974a("http://api.map.baidu.com/geocoder/v2/?ak=501b2f91b60588975ba38e7deff3aa51&coordtype=wgs84ll&output=json&pois=0&location=%f,%f", f, f2), (InterfaceC0679f) null)).getJSONObject("result").optJSONObject("addressComponent");
            if (optJSONObject == null) {
                return false;
            }
            c0667c.f2545c = optJSONObject.optString("city");
            if (c0667c.f2545c == null || c0667c.f2545c.length() == 0) {
                return false;
            }
            c0667c.f2543a = "中国";
            c0667c.f2544b = optJSONObject.optString("province");
            c0667c.f2546d = optJSONObject.optString("district");
            c0667c.f2547e = optJSONObject.optString("street");
            c0667c.f2548f = optJSONObject.optString("street_number");
            return true;
        } catch (Throwable th) {
            Log.e("GeoCodeApi", "query failed: " + f + "," + f2, th);
            return false;
        }
    }
}
