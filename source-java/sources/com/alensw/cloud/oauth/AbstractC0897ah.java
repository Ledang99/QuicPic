package com.alensw.cloud.oauth;

import com.alensw.cloud.EnumC0963z;
import com.alensw.p023b.p028e.InterfaceC0679f;
import org.apache.commons.logging.impl.SimpleLog;

/* renamed from: com.alensw.cloud.oauth.ah */
/* loaded from: classes.dex */
public abstract class AbstractC0897ah {

    /* renamed from: a */
    private final EnumC0963z f3226a;

    /* renamed from: b */
    protected final String f3227b;

    protected AbstractC0897ah(EnumC0963z enumC0963z, String str) {
        this.f3226a = enumC0963z;
        this.f3227b = str;
    }

    /* renamed from: a */
    public static AbstractC0897ah m3376a(EnumC0963z enumC0963z) {
        switch (C0898ai.f3228a[enumC0963z.ordinal()]) {
            case 1:
                return new C0901al();
            case 2:
                return new C0906d();
            case 3:
                return new C0922t();
            case 4:
                return new C0900ak();
            case 5:
                return new C0924v();
            case SimpleLog.LOG_LEVEL_FATAL /* 6 */:
                return new C0923u();
            case SimpleLog.LOG_LEVEL_OFF /* 7 */:
                return new C0890aa();
            case 8:
                return new C0902am();
            case 9:
                return new C0921s();
            case 10:
                return new C0905c();
            case 11:
                return new C0903an();
            default:
                return new C0912j(enumC0963z);
        }
    }

    /* renamed from: d */
    public static AbstractC0897ah m3377d(String str) {
        try {
            return m3376a(EnumC0963z.valueOf(str));
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public abstract String mo3361a(InterfaceC0679f interfaceC0679f);

    /* renamed from: a */
    public abstract void mo3353a(C0889a c0889a, InterfaceC0679f interfaceC0679f);

    /* renamed from: a */
    public abstract void mo3367a(C0899aj c0899aj, InterfaceC0679f interfaceC0679f);

    /* renamed from: a */
    public boolean mo3378a() {
        return false;
    }

    /* renamed from: a */
    public abstract boolean mo3368a(String str);

    /* renamed from: d */
    public final EnumC0963z m3379d() {
        return this.f3226a;
    }

    /* renamed from: e */
    public final boolean m3380e(String str) {
        return str.startsWith(this.f3227b);
    }
}
