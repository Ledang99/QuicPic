package p000a.p006d;

import java.io.IOException;
import java.util.HashMap;
import p000a.C0000a;
import p000a.p007e.C0155e;

/* renamed from: a.d.d */
/* loaded from: classes.dex */
public class C0124d {

    /* renamed from: a */
    static C0155e f594a = C0155e.m381a();

    /* renamed from: b */
    protected static C0125e f595b = new C0125e(0);

    /* renamed from: c */
    protected C0125e f596c = null;

    /* renamed from: d */
    protected C0125e f597d = null;

    /* renamed from: a */
    public C0126f m301a(C0094bm c0094bm, String str, String str2, String str3, C0140t c0140t) {
        C0126f m269a;
        try {
            String str4 = "\\" + str + "\\" + str2;
            if (str3 != null) {
                str4 = str4 + str3;
            }
            m269a = c0094bm.m269a(c0140t, str4, 0);
        } catch (IOException e) {
            C0155e c0155e = f594a;
            if (C0155e.f728a >= 4) {
                e.printStackTrace(f594a);
            }
        }
        if (m269a != null) {
            return m269a;
        }
        return null;
    }

    /* renamed from: a */
    public synchronized C0126f m302a(String str, String str2, String str3, C0140t c0140t) {
        C0126f c0126f;
        String str4;
        C0125e c0125e;
        C0125e c0125e2;
        C0126f c0126f2;
        C0094bm c0094bm;
        long currentTimeMillis = System.currentTimeMillis();
        if (str2.equals("IPC$")) {
            c0126f = null;
        } else {
            HashMap m303a = m303a(c0140t);
            if (m303a != null) {
                String lowerCase = str.toLowerCase();
                HashMap hashMap = (HashMap) m303a.get(lowerCase);
                if (hashMap != null) {
                    str4 = str2.toLowerCase();
                    C0125e c0125e3 = (C0125e) hashMap.get(str4);
                    if (c0125e3 == null || currentTimeMillis <= c0125e3.f598a) {
                        c0125e = c0125e3;
                    } else {
                        hashMap.remove(str4);
                        c0125e = null;
                    }
                    if (c0125e == null) {
                        c0094bm = m306b(lowerCase, c0140t);
                        if (c0094bm == null) {
                            c0126f = null;
                        } else {
                            C0126f m301a = m301a(c0094bm, lowerCase, str4, str3, c0140t);
                            if (m301a != null) {
                                int length = lowerCase.length() + 1 + 1 + str4.length();
                                C0125e c0125e4 = new C0125e(0L);
                                C0126f c0126f3 = m301a;
                                do {
                                    if (str3 == null) {
                                        c0126f3.f609j = c0125e4.f599b;
                                        c0126f3.f610k = "\\";
                                    }
                                    c0126f3.f600a -= length;
                                    c0126f3 = c0126f3.f608i;
                                } while (c0126f3 != m301a);
                                if (m301a.f610k != null) {
                                    c0125e4.f599b.put(m301a.f610k, m301a);
                                }
                                hashMap.put(str4, c0125e4);
                                c0125e2 = c0125e4;
                                c0126f2 = m301a;
                            } else if (str3 == null) {
                                hashMap.put(str4, f595b);
                                c0125e2 = c0125e;
                                c0126f2 = m301a;
                            } else {
                                c0125e2 = c0125e;
                                c0126f2 = m301a;
                            }
                        }
                    } else if (c0125e == f595b) {
                        c0125e2 = null;
                        c0126f2 = null;
                        c0094bm = null;
                    } else {
                        c0125e2 = c0125e;
                        c0126f2 = null;
                        c0094bm = null;
                    }
                    if (c0125e2 != null) {
                        c0126f2 = (C0126f) c0125e2.f599b.get("\\");
                        if (c0126f2 != null && currentTimeMillis > c0126f2.f607h) {
                            c0125e2.f599b.remove("\\");
                            c0126f2 = null;
                        }
                        if (c0126f2 == null) {
                            if (c0094bm == null && (c0094bm = m306b(lowerCase, c0140t)) == null) {
                                c0126f = null;
                            } else {
                                c0126f2 = m301a(c0094bm, lowerCase, str4, str3, c0140t);
                                if (c0126f2 != null) {
                                    c0126f2.f600a -= ((lowerCase.length() + 1) + 1) + str4.length();
                                    c0126f2.f604e = "\\";
                                    c0125e2.f599b.put("\\", c0126f2);
                                }
                            }
                        }
                    }
                    str = lowerCase;
                    c0126f = c0126f2;
                } else {
                    str4 = str2;
                    str = lowerCase;
                    c0126f = null;
                }
            } else {
                c0126f = null;
                str4 = str2;
            }
            if (c0126f == null && str3 != null) {
                if (this.f597d != null && currentTimeMillis > this.f597d.f598a) {
                    this.f597d = null;
                }
                if (this.f597d == null) {
                    this.f597d = new C0125e(0L);
                }
                String str5 = "\\" + str + "\\" + str4;
                if (!str3.equals("\\")) {
                    str5 = str5 + str3;
                }
                String lowerCase2 = str5.toLowerCase();
                for (String str6 : this.f597d.f599b.keySet()) {
                    int length2 = str6.length();
                    boolean z = false;
                    if (length2 == lowerCase2.length()) {
                        z = str6.equals(lowerCase2);
                    } else if (length2 < lowerCase2.length()) {
                        z = str6.regionMatches(0, lowerCase2, 0, length2) && lowerCase2.charAt(length2) == '\\';
                    }
                    c0126f = z ? (C0126f) this.f597d.f599b.get(str6) : c0126f;
                }
            }
        }
        return c0126f;
    }

    /* renamed from: a */
    public HashMap m303a(C0140t c0140t) {
        if (c0140t.f654h == "?") {
            return null;
        }
        if (this.f596c != null && System.currentTimeMillis() > this.f596c.f598a) {
            this.f596c = null;
        }
        if (this.f596c != null) {
            return this.f596c.f599b;
        }
        try {
            C0094bm m265a = C0094bm.m265a(C0000a.m1a(c0140t.f654h, true), 0);
            C0125e c0125e = new C0125e(3000L);
            C0126f m269a = m265a.m269a(c0140t, "", 0);
            if (m269a == null) {
                return null;
            }
            C0126f c0126f = m269a;
            do {
                c0125e.f599b.put(c0126f.f602c.toLowerCase(), new HashMap());
                c0126f = c0126f.f608i;
            } while (c0126f != m269a);
            this.f596c = c0125e;
            return this.f596c.f599b;
        } catch (IOException e) {
            C0155e c0155e = f594a;
            if (C0155e.f728a < 3) {
                return null;
            }
            e.printStackTrace(f594a);
            return null;
        }
    }

    /* renamed from: a */
    synchronized void m304a(String str, C0126f c0126f) {
        int indexOf = str.indexOf(92, 1);
        int indexOf2 = str.indexOf(92, indexOf + 1);
        String substring = str.substring(1, indexOf);
        String substring2 = str.substring(indexOf + 1, indexOf2);
        String lowerCase = str.substring(0, c0126f.f600a).toLowerCase();
        int length = lowerCase.length();
        while (length > 1 && lowerCase.charAt(length - 1) == '\\') {
            length--;
        }
        if (length < lowerCase.length()) {
            lowerCase = lowerCase.substring(0, length);
        }
        c0126f.f600a -= ((substring.length() + 1) + 1) + substring2.length();
        if (this.f597d != null && System.currentTimeMillis() + 10000 > this.f597d.f598a) {
            this.f597d = null;
        }
        if (this.f597d == null) {
            this.f597d = new C0125e(0L);
        }
        this.f597d.f599b.put(lowerCase, c0126f);
    }

    /* renamed from: a */
    public boolean m305a(String str, C0140t c0140t) {
        HashMap m303a = m303a(c0140t);
        return (m303a == null || m303a.get(str.toLowerCase()) == null) ? false : true;
    }

    /* renamed from: b */
    public C0094bm m306b(String str, C0140t c0140t) {
        try {
            C0126f m269a = C0094bm.m265a(C0000a.m1a(str, true), 0).m269a(c0140t, "\\" + str, 1);
            if (m269a != null) {
                C0126f c0126f = m269a;
                do {
                    try {
                        return C0094bm.m265a(C0000a.m0a(c0126f.f602c), 0);
                    } catch (IOException e) {
                        c0126f = c0126f.f608i;
                    }
                } while (c0126f != m269a);
                throw e;
            }
        } catch (IOException e2) {
            C0155e c0155e = f594a;
            if (C0155e.f728a >= 3) {
                e2.printStackTrace(f594a);
            }
        }
        return null;
    }
}
