package com.p043b.p044a;

import android.graphics.Color;
import android.util.Log;
import org.xml.sax.Attributes;

/* renamed from: com.b.a.h */
/* loaded from: classes.dex */
class C1393h {

    /* renamed from: a */
    C1396k f4908a;

    /* renamed from: b */
    Attributes f4909b;

    private C1393h(Attributes attributes) {
        String m4519d;
        this.f4908a = null;
        this.f4909b = attributes;
        m4519d = C1389d.m4519d("style", attributes);
        if (m4519d != null) {
            this.f4908a = new C1396k(m4519d);
        }
    }

    /* renamed from: a */
    private int m4528a(int i) {
        return ((i & 3840) << 8) | ((i & 3840) << 12) | ((i & 240) << 4) | ((i & 240) << 8) | ((i & 15) << 4) | (i & 15);
    }

    /* renamed from: a */
    public String m4529a(String str) {
        String m4519d;
        String m4562a = this.f4908a != null ? this.f4908a.m4562a(str) : null;
        if (m4562a != null) {
            return m4562a;
        }
        m4519d = C1389d.m4519d(str, this.f4909b);
        return m4519d;
    }

    /* renamed from: b */
    public String m4530b(String str) {
        return m4529a(str);
    }

    /* renamed from: c */
    public Integer m4531c(String str) {
        String m4529a = m4529a(str);
        if (m4529a == null) {
            return null;
        }
        if (!m4529a.startsWith("#") || (m4529a.length() != 4 && m4529a.length() != 7)) {
            try {
                return Integer.valueOf(Color.parseColor(m4529a));
            } catch (IllegalArgumentException e) {
                Log.w("SVG", "unknown color: " + m4529a);
                return null;
            }
        }
        try {
            int parseInt = Integer.parseInt(m4529a.substring(1), 16);
            if (m4529a.length() == 4) {
                parseInt = m4528a(parseInt);
            }
            return Integer.valueOf(parseInt);
        } catch (NumberFormatException e2) {
            return null;
        }
    }

    /* renamed from: d */
    public Float m4532d(String str) {
        String m4529a = m4529a(str);
        if (m4529a == null) {
            return null;
        }
        try {
            return Float.valueOf(Float.parseFloat(m4529a));
        } catch (NumberFormatException e) {
            return null;
        }
    }
}
