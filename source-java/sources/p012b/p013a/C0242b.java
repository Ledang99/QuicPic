package p012b.p013a;

import android.content.Context;
import android.content.SharedPreferences;
import com.p045c.p046a.C1420t;

/* renamed from: b.a.b */
/* loaded from: classes.dex */
public class C0242b implements InterfaceC0451it {

    /* renamed from: a */
    public int f1009a;

    /* renamed from: b */
    public int f1010b;

    /* renamed from: c */
    public long f1011c;

    /* renamed from: e */
    private int f1013e;

    /* renamed from: h */
    private Context f1016h;

    /* renamed from: d */
    private final int f1012d = 3600000;

    /* renamed from: f */
    private long f1014f = 0;

    /* renamed from: g */
    private long f1015g = 0;

    public C0242b(Context context) {
        m751b(context);
    }

    /* renamed from: a */
    public static C0222ag m750a(Context context) {
        SharedPreferences m1509a = C0456iy.m1509a(context);
        C0222ag c0222ag = new C0222ag();
        c0222ag.m649b(m1509a.getInt("failed_requests ", 0));
        c0222ag.m653c(m1509a.getInt("last_request_spent_ms", 0));
        c0222ag.m645a(m1509a.getInt("successful_request", 0));
        return c0222ag;
    }

    /* renamed from: b */
    private void m751b(Context context) {
        this.f1016h = context.getApplicationContext();
        SharedPreferences m1509a = C0456iy.m1509a(context);
        this.f1009a = m1509a.getInt("successful_request", 0);
        this.f1010b = m1509a.getInt("failed_requests ", 0);
        this.f1013e = m1509a.getInt("last_request_spent_ms", 0);
        this.f1011c = m1509a.getLong("last_request_time", 0L);
        this.f1014f = m1509a.getLong("last_req", 0L);
    }

    /* renamed from: a */
    public boolean m752a() {
        return ((this.f1011c > 0L ? 1 : (this.f1011c == 0L ? 0 : -1)) == 0) && (!C1420t.m4606a(this.f1016h).m4623g());
    }

    /* renamed from: b */
    public void m753b() {
        this.f1009a++;
        this.f1011c = this.f1014f;
    }

    /* renamed from: c */
    public void m754c() {
        this.f1010b++;
    }

    /* renamed from: d */
    public void m755d() {
        this.f1014f = System.currentTimeMillis();
    }

    /* renamed from: e */
    public void m756e() {
        this.f1013e = (int) (System.currentTimeMillis() - this.f1014f);
    }

    /* renamed from: f */
    public void m757f() {
        C0456iy.m1509a(this.f1016h).edit().putInt("successful_request", this.f1009a).putInt("failed_requests ", this.f1010b).putInt("last_request_spent_ms", this.f1013e).putLong("last_request_time", this.f1011c).putLong("last_req", this.f1014f).commit();
    }

    /* renamed from: g */
    public void m758g() {
        C0456iy.m1509a(this.f1016h).edit().putLong("first_activate_time", System.currentTimeMillis()).commit();
    }

    /* renamed from: h */
    public boolean m759h() {
        if (this.f1015g == 0) {
            this.f1015g = C0456iy.m1509a(this.f1016h).getLong("first_activate_time", 0L);
        }
        return this.f1015g == 0;
    }

    /* renamed from: i */
    public long m760i() {
        return m759h() ? System.currentTimeMillis() : this.f1015g;
    }

    /* renamed from: j */
    public long m761j() {
        return this.f1014f;
    }

    @Override // p012b.p013a.InterfaceC0451it
    /* renamed from: k */
    public void mo762k() {
        m755d();
    }

    @Override // p012b.p013a.InterfaceC0451it
    /* renamed from: l */
    public void mo763l() {
        m756e();
    }

    @Override // p012b.p013a.InterfaceC0451it
    /* renamed from: m */
    public void mo764m() {
        m753b();
    }

    @Override // p012b.p013a.InterfaceC0451it
    /* renamed from: n */
    public void mo765n() {
        m754c();
    }
}
