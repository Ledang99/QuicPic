package com.alensw.cloud.oauth;

import android.content.ContentValues;
import com.alensw.cloud.EnumC0963z;
import org.json.JSONObject;

/* renamed from: com.alensw.cloud.oauth.a */
/* loaded from: classes.dex */
public class C0889a {

    /* renamed from: a */
    public EnumC0963z f3190a;

    /* renamed from: b */
    public String f3191b;

    /* renamed from: c */
    public String f3192c;

    /* renamed from: d */
    public String f3193d;

    /* renamed from: e */
    public String f3194e;

    /* renamed from: f */
    public String f3195f;

    /* renamed from: g */
    public final C0899aj f3196g = new C0899aj();

    /* renamed from: a */
    public static String m3345a(EnumC0963z enumC0963z, String str) {
        return Integer.toHexString(str.toLowerCase().hashCode()) + '@' + enumC0963z.toString().toLowerCase();
    }

    /* renamed from: a */
    public static boolean m3346a(EnumC0963z enumC0963z) {
        return enumC0963z == EnumC0963z.GDRIVE || enumC0963z == EnumC0963z.PICASA;
    }

    /* renamed from: b */
    public static EnumC0963z m3347b(String str) {
        try {
            return EnumC0963z.valueOf(str.substring(str.lastIndexOf(64) + 1).toUpperCase());
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public String m3348a() {
        return m3345a(this.f3190a, this.f3191b);
    }

    /* renamed from: a */
    public void m3349a(ContentValues contentValues) {
        this.f3190a = EnumC0963z.valueOf(contentValues.getAsString("cloud_id"));
        this.f3191b = contentValues.getAsString("user_id");
        this.f3192c = contentValues.getAsString("user_name");
        this.f3193d = contentValues.getAsString("server");
        this.f3194e = contentValues.getAsString("rootId");
        this.f3195f = contentValues.getAsString("apiExtra");
        this.f3196g.f3229a = contentValues.getAsString("token_access");
        this.f3196g.f3230b = contentValues.getAsString("token_refresh");
        this.f3196g.f3231c = contentValues.getAsString("token_scope");
        this.f3196g.f3232d = contentValues.getAsLong("token_expiresIn").longValue();
    }

    /* renamed from: a */
    public void m3350a(String str) {
        JSONObject jSONObject = new JSONObject(str);
        this.f3191b = jSONObject.getString("id");
        this.f3192c = jSONObject.getString("name");
    }

    /* renamed from: b */
    public ContentValues m3351b() {
        ContentValues contentValues = new ContentValues(7);
        contentValues.put("cloud_id", this.f3190a.toString());
        contentValues.put("user_id", this.f3191b);
        contentValues.put("user_name", this.f3192c);
        contentValues.put("server", this.f3193d);
        contentValues.put("rootId", this.f3194e);
        contentValues.put("apiExtra", this.f3195f);
        contentValues.put("token_access", this.f3196g.f3229a);
        contentValues.put("token_refresh", this.f3196g.f3230b);
        contentValues.put("token_scope", this.f3196g.f3231c);
        contentValues.put("token_expiresIn", Long.valueOf(this.f3196g.f3232d));
        return contentValues;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C0889a)) {
            return false;
        }
        C0889a c0889a = (C0889a) obj;
        if (this.f3190a != c0889a.f3190a || !this.f3191b.equals(c0889a.f3191b)) {
            return false;
        }
        if (this.f3193d == null) {
            if (c0889a.f3193d != null) {
                return false;
            }
        } else if (!this.f3193d.equals(c0889a.f3193d)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.f3190a.hashCode() + this.f3191b.hashCode();
    }

    public String toString() {
        return "cid=" + this.f3190a + ", uid=" + this.f3191b + ", name=" + this.f3192c;
    }
}
