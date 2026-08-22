package com.alensw.p023b.p027d;

import android.content.Context;
import android.location.Address;
import android.location.Geocoder;
import android.util.Log;
import java.io.IOException;
import java.util.List;

/* renamed from: com.alensw.b.d.e */
/* loaded from: classes.dex */
public class C0669e {

    /* renamed from: a */
    private final Geocoder f2549a;

    public C0669e(Context context) {
        this.f2549a = new Geocoder(context);
    }

    /* renamed from: a */
    public boolean m2630a(float f, float f2, C0667c c0667c) {
        try {
            List<Address> fromLocation = this.f2549a.getFromLocation(f, f2, 1);
            if (!fromLocation.isEmpty()) {
                Address address = fromLocation.get(0);
                c0667c.f2543a = address.getCountryName();
                c0667c.f2544b = address.getAdminArea();
                c0667c.f2545c = address.getSubAdminArea();
                c0667c.f2546d = address.getLocality();
                c0667c.f2547e = address.getThoroughfare();
                c0667c.f2548f = address.getFeatureName();
                return true;
            }
        } catch (IOException e) {
        } catch (Throwable th) {
            Log.e("GeoCodeApi", "query failed: " + f + "," + f2, th);
        }
        return false;
    }
}
