package com.alensw.cloud.oauth;

import org.json.JSONObject;

/* renamed from: com.alensw.cloud.oauth.aj */
/* loaded from: classes.dex */
public class C0899aj {

    /* renamed from: a */
    public String f3229a;

    /* renamed from: b */
    public String f3230b;

    /* renamed from: c */
    public String f3231c;

    /* renamed from: d */
    public long f3232d;

    /* renamed from: a */
    public void m3381a(String str) {
        JSONObject jSONObject = new JSONObject(str);
        this.f3229a = jSONObject.getString("access_token");
        if (jSONObject.has("refresh_token")) {
            this.f3230b = jSONObject.getString("refresh_token");
        }
        if (jSONObject.has("scope")) {
            this.f3231c = jSONObject.getString("scope");
        }
        if (!jSONObject.has("expires_in")) {
            this.f3232d = 0L;
        } else {
            this.f3232d = (jSONObject.getInt("expires_in") * 1000) + System.currentTimeMillis();
        }
    }

    /* renamed from: a */
    public boolean m3382a() {
        return this.f3232d != 0 && this.f3232d < System.currentTimeMillis() + 300000;
    }

    public String toString() {
        return "access_token=" + this.f3229a + ", refresh_token=" + this.f3230b + ", scope=" + this.f3231c + ", expires=" + this.f3232d;
    }
}
