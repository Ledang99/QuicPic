package com.p014a.p015a.p016a;

import java.io.IOException;

/* renamed from: com.a.a.a.j */
/* loaded from: classes.dex */
public class C0520j extends IOException {

    /* renamed from: a */
    protected C0516f f1943a;

    protected C0520j(String str, C0516f c0516f) {
        this(str, c0516f, null);
    }

    protected C0520j(String str, C0516f c0516f, Throwable th) {
        super(str);
        if (th != null) {
            initCause(th);
        }
        this.f1943a = c0516f;
    }

    /* renamed from: a */
    public C0516f m1922a() {
        return this.f1943a;
    }

    /* renamed from: b */
    protected String m1923b() {
        return null;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        if (message == null) {
            message = "N/A";
        }
        C0516f m1922a = m1922a();
        String m1923b = m1923b();
        if (m1922a == null && m1923b == null) {
            return message;
        }
        StringBuilder sb = new StringBuilder(100);
        sb.append(message);
        if (m1923b != null) {
            sb.append(m1923b);
        }
        if (m1922a != null) {
            sb.append('\n');
            sb.append(" at ");
            sb.append(m1922a.toString());
        }
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public String toString() {
        return getClass().getName() + ": " + getMessage();
    }
}
