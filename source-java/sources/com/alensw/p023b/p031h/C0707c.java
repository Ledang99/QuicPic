package com.alensw.p023b.p031h;

import android.annotation.SuppressLint;
import com.alensw.jni.JniUtils;
import com.alensw.p023b.p026c.C0662f;
import java.io.File;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import org.apache.http.HttpStatus;
import org.apache.http.message.TokenParser;

/* renamed from: com.alensw.b.h.c */
/* loaded from: classes.dex */
public class C0707c extends JniUtils {

    /* renamed from: a */
    @SuppressLint({"SimpleDateFormat"})
    public static final SimpleDateFormat f2674a = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");

    /* renamed from: b */
    @SuppressLint({"SimpleDateFormat"})
    public static final SimpleDateFormat f2675b = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");

    /* renamed from: c */
    private int f2676c;

    static {
        f2675b.setTimeZone(TimeZone.getTimeZone("UTC"));
    }

    public C0707c() {
        this.f2676c = 0;
    }

    private C0707c(int i) {
        this.f2676c = 0;
        this.f2676c = i;
    }

    /* renamed from: a */
    public static int m2784a(C0662f c0662f, int i, boolean z) {
        try {
            C0707c m2786a = m2786a(c0662f, false);
            if (m2786a == null) {
                return -1;
            }
            if (!z) {
                i += m2786a.m2803f();
            }
            int i2 = (i + 360) % 360;
            boolean m2794a = m2786a.m2794a(i2);
            m2786a.m2792a();
            if (!m2794a) {
                i2 = -1;
            }
            return i2;
        } catch (Throwable th) {
            return -1;
        }
    }

    /* renamed from: a */
    public static long m2785a(String str) {
        try {
            long lastModified = new File(str).lastModified();
            C0707c m2787a = m2787a(str, true);
            if (m2787a == null) {
                return lastModified;
            }
            long m2789a = m2787a.m2789a(lastModified);
            m2787a.m2792a();
            return m2789a;
        } catch (Throwable th) {
            return 0L;
        }
    }

    /* renamed from: a */
    public static C0707c m2786a(C0662f c0662f, boolean z) {
        int exifOpenFD = exifOpenFD(c0662f.m2596c(), z);
        if (exifOpenFD != 0) {
            return new C0707c(exifOpenFD);
        }
        return null;
    }

    /* renamed from: a */
    public static C0707c m2787a(String str, boolean z) {
        C0662f c0662f;
        Throwable th;
        C0707c c0707c = null;
        try {
            c0662f = C0662f.m2591a(new File(str), z);
            try {
                c0707c = m2786a(c0662f, z);
                if (c0662f != null) {
                    c0662f.m2601h();
                }
            } catch (Throwable th2) {
                if (c0662f != null) {
                    c0662f.m2601h();
                }
                return c0707c;
            }
        } catch (Throwable th3) {
            c0662f = null;
            th = th3;
        }
        return c0707c;
    }

    /* renamed from: a */
    public static Date m2788a(String str, SimpleDateFormat simpleDateFormat) {
        try {
            return simpleDateFormat.parse(str, new ParsePosition(0));
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public long m2789a(long j) {
        long m2806i = m2806i();
        long m2805h = m2805h();
        return (m2806i == 0 || Math.abs(m2806i - j) > 10000) ? (m2805h == 0 || Math.abs(m2805h - j) > 10000) ? m2806i != 0 ? m2806i : m2805h != 0 ? m2805h : j : m2805h : m2806i;
    }

    /* renamed from: a */
    public Integer m2790a(int i, boolean z) {
        try {
            Object exifGetValue = exifGetValue(this.f2676c, i, z);
            if (exifGetValue instanceof Integer) {
                return (Integer) exifGetValue;
            }
        } catch (Throwable th) {
        }
        return null;
    }

    /* renamed from: a */
    public Date m2791a(int i, SimpleDateFormat simpleDateFormat) {
        String m2799c = m2799c(i, false);
        if (m2799c != null) {
            return m2788a(m2799c, simpleDateFormat);
        }
        return null;
    }

    /* renamed from: a */
    public void m2792a() {
        if (this.f2676c != 0) {
            exifClose(this.f2676c);
            this.f2676c = 0;
        }
    }

    /* renamed from: a */
    public void m2793a(C0715k c0715k, long j) {
        c0715k.f2708a = exifGetInfo(this.f2676c, 1);
        c0715k.f2709b = exifGetInfo(this.f2676c, 2);
        c0715k.f2710c = exifGetInfo(this.f2676c, 3);
        c0715k.f2712h = exifGetInfo(this.f2676c, 10) != 0;
        c0715k.f2711d = exifGetInfo(this.f2676c, 4);
        c0715k.f2713i = exifGetInfo(this.f2676c, 11) != 0;
        c0715k.f2714j = m2789a(j);
        c0715k.f2715k = m2812o();
        c0715k.f2716l = m2799c(272, false);
        c0715k.f2717m = m2799c(270, false);
        c0715k.f2718n = m2807j();
        c0715k.f2719o = "image/jpeg";
    }

    /* renamed from: a */
    public boolean m2794a(int i) {
        return exifSetDegrees(this.f2676c, i);
    }

    /* renamed from: a */
    public boolean m2795a(C0662f c0662f) {
        C0707c m2786a = m2786a(c0662f, false);
        if (m2786a == null) {
            return false;
        }
        boolean exifSaveTo = exifSaveTo(this.f2676c, m2786a.f2676c);
        m2786a.m2792a();
        return exifSaveTo;
    }

    /* renamed from: b */
    public Double m2796b(int i, boolean z) {
        try {
            Object exifGetValue = exifGetValue(this.f2676c, i, z);
            if (exifGetValue instanceof Double) {
                return (Double) exifGetValue;
            }
        } catch (Throwable th) {
        }
        return null;
    }

    /* renamed from: b */
    public final boolean m2797b() {
        return this.f2676c != 0;
    }

    /* renamed from: b */
    public boolean m2798b(C0662f c0662f, boolean z) {
        if (this.f2676c != 0) {
            m2792a();
        }
        this.f2676c = exifOpenFD(c0662f.m2596c(), z);
        return this.f2676c != 0;
    }

    /* renamed from: c */
    public String m2799c(int i, boolean z) {
        try {
            Object exifGetValue = exifGetValue(this.f2676c, i, z);
            return exifGetValue == null ? null : exifGetValue instanceof byte[] ? new String((byte[]) exifGetValue).trim() : exifGetValue.toString().trim();
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: c */
    public final boolean m2800c() {
        return exifGetInfo(this.f2676c, 11) != 0;
    }

    /* renamed from: d */
    public final int m2801d() {
        return exifGetInfo(this.f2676c, 3);
    }

    /* renamed from: e */
    public final long m2802e() {
        return exifGetInfo(this.f2676c, 1) | (exifGetInfo(this.f2676c, 2) << 32);
    }

    /* renamed from: f */
    public final int m2803f() {
        return exifGetInfo(this.f2676c, 4);
    }

    protected void finalize() {
        if (this.f2676c != 0) {
            m2792a();
        }
    }

    /* renamed from: g */
    public byte[] m2804g() {
        String m2799c = m2799c(HttpStatus.SC_USE_PROXY, false);
        if (m2799c == null || !m2799c.startsWith("GIMP")) {
            return exifGetThumbnail(this.f2676c);
        }
        return null;
    }

    /* renamed from: h */
    protected long m2805h() {
        Date m2791a = m2791a(36867, f2674a);
        if (m2791a == null) {
            m2791a = m2791a(306, f2674a);
        }
        if (m2791a == null) {
            m2791a = m2791a(36868, f2674a);
        }
        if (m2791a != null) {
            return m2791a.getTime();
        }
        return 0L;
    }

    /* renamed from: i */
    protected long m2806i() {
        double[] exifGet3RealValue;
        String m2799c = m2799c(29, true);
        if (m2799c == null || (exifGet3RealValue = exifGet3RealValue(this.f2676c, 7, true)) == null || exifGet3RealValue[0] < 0.0d || exifGet3RealValue[0] >= 24.0d || exifGet3RealValue[1] < 0.0d || exifGet3RealValue[1] >= 24.0d || exifGet3RealValue[2] < 0.0d || exifGet3RealValue[2] >= 24.0d) {
            return 0L;
        }
        if (exifGet3RealValue[0] == 0.0d && exifGet3RealValue[1] == 0.0d && exifGet3RealValue[2] == 0.0d && "0000:00:00".equals(m2799c)) {
            return 0L;
        }
        Date m2788a = m2788a(m2799c + " " + String.format("%d:%d:%d", Integer.valueOf((int) exifGet3RealValue[0]), Integer.valueOf((int) exifGet3RealValue[1]), Integer.valueOf((int) exifGet3RealValue[2])), f2675b);
        long time = m2788a != null ? m2788a.getTime() : 0L;
        if (time <= 0) {
            time = 0;
        }
        return time;
    }

    /* renamed from: j */
    public String m2807j() {
        String[] strArr = {m2809l(), m2810m(), m2808k(), m2811n()};
        StringBuilder sb = new StringBuilder(128);
        for (String str : strArr) {
            if (str != null) {
                sb.append(str);
                sb.append(TokenParser.f5042SP);
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    @SuppressLint({"DefaultLocale"})
    /* renamed from: k */
    public String m2808k() {
        Double m2796b = m2796b(33434, false);
        if (m2796b == null) {
            Double m2796b2 = m2796b(37377, false);
            if (m2796b2 == null) {
                return null;
            }
            m2796b = Double.valueOf(1.0d / Math.exp(m2796b2.doubleValue() * Math.log(2.0d)));
        }
        double doubleValue = m2796b.doubleValue();
        if (doubleValue <= 0.5d) {
            return String.format("1/%ds", Integer.valueOf((int) ((1.0d / doubleValue) + 0.5d)));
        }
        return String.format(doubleValue < 0.01d ? "%6.4fs" : "%5.3fs", Double.valueOf(doubleValue));
    }

    @SuppressLint({"DefaultLocale"})
    /* renamed from: l */
    public String m2809l() {
        Double m2796b = m2796b(33437, false);
        if (m2796b == null) {
            Double m2796b2 = m2796b(37378, false);
            if (m2796b2 == null) {
                m2796b2 = m2796b(37381, false);
            }
            if (m2796b2 == null) {
                return null;
            }
            m2796b = Double.valueOf(Math.exp(m2796b2.doubleValue() * Math.log(2.0d) * 0.5d));
        }
        double doubleValue = m2796b.doubleValue();
        return doubleValue == ((double) ((int) doubleValue)) ? String.format("F/%d", Integer.valueOf((int) doubleValue)) : String.format("F/%3.1f", Double.valueOf(doubleValue));
    }

    /* renamed from: m */
    public String m2810m() {
        Double m2796b = m2796b(37386, false);
        if (m2796b == null) {
            return null;
        }
        return Integer.toString((int) (m2796b.doubleValue() + 0.5d)) + "mm";
    }

    /* renamed from: n */
    public String m2811n() {
        Integer m2790a = m2790a(34855, false);
        if (m2790a != null && m2790a.intValue() != 0) {
            if (m2790a.intValue() < 32) {
                m2790a = Integer.valueOf(m2790a.intValue() * HttpStatus.SC_OK);
            }
            return "ISO-" + m2790a.toString();
        }
        Double m2796b = m2796b(41493, false);
        if (m2796b == null || m2796b.intValue() == 0) {
            return null;
        }
        return "ISO-" + m2796b.toString();
    }

    /* renamed from: o */
    public float[] m2812o() {
        double[] exifGet3RealValue = exifGet3RealValue(this.f2676c, 2, true);
        double[] exifGet3RealValue2 = exifGet3RealValue(this.f2676c, 4, true);
        if (exifGet3RealValue == null || exifGet3RealValue2 == null) {
            return null;
        }
        String m2799c = m2799c(1, true);
        String m2799c2 = m2799c(3, true);
        double d = exifGet3RealValue[0] + (exifGet3RealValue[1] / 60.0d) + (exifGet3RealValue[2] / 3600.0d);
        double d2 = (exifGet3RealValue2[2] / 3600.0d) + exifGet3RealValue2[0] + (exifGet3RealValue2[1] / 60.0d);
        if (d == 0.0d && d2 == 0.0d && m2799c == null && m2799c2 == null) {
            return null;
        }
        double d3 = (m2799c == null || m2799c.length() <= 0 || m2799c.charAt(0) != 'S') ? d : -d;
        if (m2799c2 != null && m2799c2.length() > 0 && m2799c2.charAt(0) == 'W') {
            d2 = -d2;
        }
        return new float[]{(float) d3, (float) d2};
    }
}
