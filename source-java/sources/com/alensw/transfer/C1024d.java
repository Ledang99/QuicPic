package com.alensw.transfer;

import java.net.InetAddress;
import java.util.Collection;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.alensw.transfer.d */
/* loaded from: classes.dex */
public class C1024d {

    /* renamed from: a */
    public long f3554a;

    /* renamed from: f */
    private long f3559f;

    /* renamed from: g */
    private boolean f3560g;

    /* renamed from: h */
    private long f3561h;

    /* renamed from: i */
    private String f3562i;

    /* renamed from: j */
    private InetAddress f3563j;

    /* renamed from: k */
    private String f3564k;

    /* renamed from: l */
    private InterfaceC1025e f3565l;

    /* renamed from: c */
    private final AtomicInteger f3556c = new AtomicInteger(0);

    /* renamed from: d */
    private final AtomicBoolean f3557d = new AtomicBoolean(false);

    /* renamed from: e */
    private final AtomicLong f3558e = new AtomicLong();

    /* renamed from: b */
    public final HashMap f3555b = new HashMap();

    /* renamed from: m */
    private long f3566m = 0;

    /* renamed from: a */
    public String m3669a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("peer_name", this.f3562i);
            jSONObject.put("peer_address", this.f3563j.getHostAddress());
            jSONObject.put("host", this.f3564k);
            jSONObject.put("total_size", this.f3554a);
            jSONObject.put("id", this.f3559f);
            JSONArray jSONArray = new JSONArray();
            for (C1026f c1026f : this.f3555b.values()) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("id", c1026f.f3567a);
                jSONObject2.put("name", c1026f.f3568b);
                jSONObject2.put("mimetype", c1026f.f3569c);
                jSONObject2.put("size", c1026f.f3570d);
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("items", jSONArray);
            return jSONObject.toString();
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public void m3670a(int i) {
        this.f3556c.set(i);
        m3690l();
    }

    /* renamed from: a */
    public void m3671a(long j) {
        this.f3559f = j;
    }

    /* renamed from: a */
    public synchronized void m3672a(InterfaceC1025e interfaceC1025e) {
        this.f3565l = interfaceC1025e;
    }

    /* renamed from: a */
    public void m3673a(String str) {
        JSONObject jSONObject = new JSONObject(str);
        this.f3562i = jSONObject.optString("peer_name");
        this.f3563j = InetAddress.getByName(jSONObject.getString("peer_address"));
        this.f3564k = jSONObject.getString("host");
        this.f3554a = jSONObject.getLong("total_size");
        this.f3559f = jSONObject.getLong("id");
        JSONArray jSONArray = jSONObject.getJSONArray("items");
        this.f3555b.clear();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i);
            C1026f c1026f = new C1026f();
            c1026f.f3567a = jSONObject2.getString("id");
            c1026f.f3568b = jSONObject2.optString("name");
            c1026f.f3569c = jSONObject2.optString("mimetype");
            c1026f.f3570d = jSONObject2.optLong("size");
            this.f3555b.put(c1026f.f3567a, c1026f);
        }
    }

    /* renamed from: a */
    public void m3674a(InetAddress inetAddress) {
        this.f3563j = inetAddress;
    }

    /* renamed from: a */
    public void m3675a(boolean z) {
        this.f3560g = z;
    }

    /* renamed from: b */
    public void m3676b(long j) {
        this.f3561h = j;
    }

    /* renamed from: b */
    public void m3677b(String str) {
        this.f3562i = str;
    }

    /* renamed from: b */
    public boolean m3678b() {
        return this.f3560g;
    }

    /* renamed from: c */
    public long m3679c(long j) {
        return this.f3558e.addAndGet(j);
    }

    /* renamed from: c */
    public String m3680c() {
        return this.f3562i;
    }

    /* renamed from: c */
    public void m3681c(String str) {
        this.f3564k = str;
    }

    /* renamed from: d */
    public long m3682d() {
        return this.f3559f;
    }

    /* renamed from: e */
    public InetAddress m3683e() {
        return this.f3563j;
    }

    /* renamed from: f */
    public String m3684f() {
        return this.f3564k;
    }

    /* renamed from: g */
    public long m3685g() {
        return this.f3561h;
    }

    /* renamed from: h */
    public long m3686h() {
        return this.f3558e.get();
    }

    /* renamed from: i */
    public long m3687i() {
        return this.f3554a;
    }

    /* renamed from: j */
    public Collection m3688j() {
        return this.f3555b.values();
    }

    /* renamed from: k */
    public synchronized void m3689k() {
        this.f3565l = null;
    }

    /* renamed from: l */
    public void m3690l() {
        long currentTimeMillis = System.currentTimeMillis();
        if (Math.abs(currentTimeMillis - this.f3566m) < 100) {
            return;
        }
        InterfaceC1025e interfaceC1025e = this.f3565l;
        if (interfaceC1025e != null) {
            interfaceC1025e.mo3696a(this);
        }
        this.f3566m = currentTimeMillis;
    }

    /* renamed from: m */
    public void m3691m() {
        InterfaceC1025e interfaceC1025e = this.f3565l;
        if (interfaceC1025e != null) {
            interfaceC1025e.mo3697b(this);
        }
    }

    /* renamed from: n */
    public boolean m3692n() {
        return this.f3557d.get();
    }

    /* renamed from: o */
    public void m3693o() {
        this.f3557d.set(true);
    }

    /* renamed from: p */
    public int m3694p() {
        return this.f3556c.get();
    }

    /* renamed from: q */
    public float m3695q() {
        return (float) (this.f3558e.get() / m3687i());
    }
}
