package com.p043b.p044a;

import android.content.res.Resources;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.Picture;
import android.graphics.RectF;
import android.util.Log;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import javax.xml.parsers.SAXParserFactory;
import org.apache.commons.codec.binary.BaseNCodec;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.XMLReader;

/* renamed from: com.b.a.d */
/* loaded from: classes.dex */
public class C1389d {

    /* renamed from: a */
    static float f4890a = 72.0f;

    /* renamed from: b */
    private static final SAXParserFactory f4891b = SAXParserFactory.newInstance();

    /* renamed from: a */
    private static Matrix m4507a(String str, Matrix matrix) {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        float f;
        ArrayList arrayList4;
        ArrayList arrayList5;
        ArrayList arrayList6;
        ArrayList arrayList7;
        ArrayList arrayList8;
        ArrayList arrayList9;
        ArrayList arrayList10;
        ArrayList arrayList11;
        ArrayList arrayList12;
        float f2;
        ArrayList arrayList13;
        ArrayList arrayList14;
        ArrayList arrayList15;
        ArrayList arrayList16;
        float f3;
        ArrayList arrayList17;
        ArrayList arrayList18;
        ArrayList arrayList19;
        ArrayList arrayList20;
        ArrayList arrayList21;
        ArrayList arrayList22;
        ArrayList arrayList23;
        ArrayList arrayList24;
        float f4 = 0.0f;
        if (str.startsWith("matrix(")) {
            C1392g m4521f = m4521f(str.substring("matrix(".length()));
            arrayList18 = m4521f.f4906a;
            if (arrayList18.size() == 6) {
                Matrix matrix2 = new Matrix();
                arrayList19 = m4521f.f4906a;
                arrayList20 = m4521f.f4906a;
                arrayList21 = m4521f.f4906a;
                arrayList22 = m4521f.f4906a;
                arrayList23 = m4521f.f4906a;
                arrayList24 = m4521f.f4906a;
                matrix2.setValues(new float[]{((Float) arrayList19.get(0)).floatValue(), ((Float) arrayList20.get(2)).floatValue(), ((Float) arrayList21.get(4)).floatValue(), ((Float) arrayList22.get(1)).floatValue(), ((Float) arrayList23.get(3)).floatValue(), ((Float) arrayList24.get(5)).floatValue(), 0.0f, 0.0f, 1.0f});
                matrix.preConcat(matrix2);
            }
        } else if (str.startsWith("translate(")) {
            C1392g m4521f2 = m4521f(str.substring("translate(".length()));
            arrayList14 = m4521f2.f4906a;
            if (arrayList14.size() > 0) {
                arrayList15 = m4521f2.f4906a;
                float floatValue = ((Float) arrayList15.get(0)).floatValue();
                arrayList16 = m4521f2.f4906a;
                if (arrayList16.size() > 1) {
                    arrayList17 = m4521f2.f4906a;
                    f3 = ((Float) arrayList17.get(1)).floatValue();
                } else {
                    f3 = 0.0f;
                }
                matrix.preTranslate(floatValue, f3);
            }
        } else if (str.startsWith("scale(")) {
            C1392g m4521f3 = m4521f(str.substring("scale(".length()));
            arrayList10 = m4521f3.f4906a;
            if (arrayList10.size() > 0) {
                arrayList11 = m4521f3.f4906a;
                float floatValue2 = ((Float) arrayList11.get(0)).floatValue();
                arrayList12 = m4521f3.f4906a;
                if (arrayList12.size() > 1) {
                    arrayList13 = m4521f3.f4906a;
                    f2 = ((Float) arrayList13.get(1)).floatValue();
                } else {
                    f2 = floatValue2;
                }
                matrix.preScale(floatValue2, f2);
            }
        } else if (str.startsWith("skewX(")) {
            C1392g m4521f4 = m4521f(str.substring("skewX(".length()));
            arrayList8 = m4521f4.f4906a;
            if (arrayList8.size() > 0) {
                arrayList9 = m4521f4.f4906a;
                matrix.preSkew((float) Math.tan(((Float) arrayList9.get(0)).floatValue()), 0.0f);
            }
        } else if (str.startsWith("skewY(")) {
            C1392g m4521f5 = m4521f(str.substring("skewY(".length()));
            arrayList6 = m4521f5.f4906a;
            if (arrayList6.size() > 0) {
                arrayList7 = m4521f5.f4906a;
                matrix.preSkew(0.0f, (float) Math.tan(((Float) arrayList7.get(0)).floatValue()));
            }
        } else if (str.startsWith("rotate(")) {
            C1392g m4521f6 = m4521f(str.substring("rotate(".length()));
            arrayList = m4521f6.f4906a;
            if (arrayList.size() > 0) {
                arrayList2 = m4521f6.f4906a;
                float floatValue3 = ((Float) arrayList2.get(0)).floatValue();
                arrayList3 = m4521f6.f4906a;
                if (arrayList3.size() > 2) {
                    arrayList4 = m4521f6.f4906a;
                    float floatValue4 = ((Float) arrayList4.get(1)).floatValue();
                    arrayList5 = m4521f6.f4906a;
                    f4 = ((Float) arrayList5.get(2)).floatValue();
                    f = floatValue4;
                } else {
                    f = 0.0f;
                }
                matrix.preTranslate(f, f4);
                matrix.preRotate(floatValue3);
                matrix.preTranslate(-f, -f4);
            }
        } else {
            Log.w("SVG", "Invalid transform (" + str + ")");
        }
        return matrix;
    }

    /* renamed from: a */
    public static C1387b m4508a(Resources resources, int i) {
        return m4510a(resources.openRawResource(i), (Integer) null, resources.getDisplayMetrics().densityDpi);
    }

    /* renamed from: a */
    public static C1387b m4509a(Resources resources, int i, int i2) {
        return m4510a(resources.openRawResource(i), Integer.valueOf(i2), resources.getDisplayMetrics().densityDpi);
    }

    /* renamed from: a */
    private static C1387b m4510a(InputStream inputStream, Integer num, float f) {
        try {
            XMLReader xMLReader = f4891b.newSAXParser().getXMLReader();
            Picture picture = new Picture();
            C1394i c1394i = new C1394i(picture);
            c1394i.m4557a(num);
            c1394i.m4556a(f);
            xMLReader.setContentHandler(c1394i);
            xMLReader.parse(new InputSource(new BufferedInputStream(inputStream)));
            C1387b c1387b = new C1387b(picture, c1394i.f4925o);
            if (!Float.isInfinite(c1394i.f4926p.top)) {
                c1387b.m4506a(c1394i.f4926p);
            }
            return c1387b;
        } catch (Exception e) {
            Log.w("SVG", "Parse error: " + e);
            throw new C1388c(e);
        }
    }

    /* renamed from: a */
    public static C1387b m4511a(String str) {
        return m4510a(new ByteArrayInputStream(str.getBytes()), (Integer) null, f4890a);
    }

    /* renamed from: a */
    private static void m4513a(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, boolean z, boolean z2) {
        double d8;
        double d9;
        double d10;
        double d11;
        double d12 = (d - d3) / 2.0d;
        double d13 = (d2 - d4) / 2.0d;
        double radians = Math.toRadians(d7 % 360.0d);
        double cos = Math.cos(radians);
        double sin = Math.sin(radians);
        double d14 = (cos * d12) + (sin * d13);
        double d15 = (d12 * (-sin)) + (d13 * cos);
        double abs = Math.abs(d5);
        double abs2 = Math.abs(d6);
        double d16 = abs * abs;
        double d17 = abs2 * abs2;
        double d18 = d14 * d14;
        double d19 = d15 * d15;
        double d20 = (d18 / d16) + (d19 / d17);
        if (d20 > 1.0d) {
            double sqrt = abs * Math.sqrt(d20);
            double sqrt2 = abs2 * Math.sqrt(d20);
            d8 = sqrt2;
            d9 = sqrt;
            d10 = sqrt2 * sqrt2;
            d11 = sqrt * sqrt;
        } else {
            d8 = abs2;
            d9 = abs;
            d10 = d17;
            d11 = d16;
        }
        double d21 = z == z2 ? -1.0d : 1.0d;
        double d22 = (((d11 * d10) - (d11 * d19)) - (d10 * d18)) / ((d10 * d18) + (d11 * d19));
        if (d22 < 0.0d) {
            d22 = 0.0d;
        }
        double sqrt3 = Math.sqrt(d22) * d21;
        double d23 = ((d9 * d15) / d8) * sqrt3;
        double d24 = sqrt3 * (-((d8 * d14) / d9));
        double d25 = ((d + d3) / 2.0d) + ((cos * d23) - (sin * d24));
        double d26 = ((d2 + d4) / 2.0d) + (cos * d24) + (sin * d23);
        double d27 = (d14 - d23) / d9;
        double d28 = (d15 - d24) / d8;
        double d29 = ((-d14) - d23) / d9;
        double d30 = ((-d15) - d24) / d8;
        double degrees = Math.toDegrees((d28 < 0.0d ? -1.0d : 1.0d) * Math.acos(d27 / Math.sqrt((d27 * d27) + (d28 * d28))));
        double degrees2 = Math.toDegrees(((d27 * d30) - (d29 * d28) < 0.0d ? -1.0d : 1.0d) * Math.acos(((d28 * d30) + (d27 * d29)) / Math.sqrt(((d27 * d27) + (d28 * d28)) * ((d29 * d29) + (d30 * d30)))));
        if (!z2 && degrees2 > 0.0d) {
            degrees2 -= 360.0d;
        } else if (z2 && degrees2 < 0.0d) {
            degrees2 += 360.0d;
        }
        path.addArc(new RectF((float) (d25 - d9), (float) (d26 - d8), (float) (d25 + d9), (float) (d26 + d8)), (float) (degrees % 360.0d), (float) (degrees2 % 360.0d));
    }

    /* renamed from: b */
    public static String m4515b(String str) {
        return str.replaceAll("\"", "&quot;").replaceAll("'", "&apos").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("&", "&amp;");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static C1392g m4517c(String str, Attributes attributes) {
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            if (attributes.getLocalName(i).equals(str)) {
                return m4521f(attributes.getValue(i));
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static String m4519d(String str, Attributes attributes) {
        int length = attributes.getLength();
        for (int i = 0; i < length; i++) {
            if (attributes.getLocalName(i).equals(str)) {
                return attributes.getValue(i);
            }
        }
        return null;
    }

    /* renamed from: f */
    private static C1392g m4521f(String str) {
        int length = str.length();
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        int i = 0;
        for (int i2 = 1; i2 < length; i2++) {
            if (z) {
                z = false;
            } else {
                char charAt = str.charAt(i2);
                switch (charAt) {
                    case '\t':
                    case '\n':
                    case ' ':
                    case ',':
                    case '-':
                        String substring = str.substring(i, i2);
                        if (substring.trim().length() > 0) {
                            arrayList.add(Float.valueOf(Float.parseFloat(substring)));
                            if (charAt == '-') {
                                i = i2;
                                break;
                            } else {
                                i = i2 + 1;
                                z = true;
                                break;
                            }
                        } else {
                            i++;
                            break;
                        }
                    case ')':
                    case 'A':
                    case 'C':
                    case 'H':
                    case BaseNCodec.MIME_CHUNK_SIZE /* 76 */:
                    case 'M':
                    case 'Q':
                    case 'S':
                    case 'T':
                    case 'V':
                    case 'Z':
                    case 'a':
                    case 'c':
                    case 'h':
                    case 'l':
                    case 'm':
                    case 'q':
                    case 's':
                    case 't':
                    case 'v':
                    case 'z':
                        String substring2 = str.substring(i, i2);
                        if (substring2.trim().length() > 0) {
                            arrayList.add(Float.valueOf(Float.parseFloat(substring2)));
                        }
                        return new C1392g(arrayList, i2);
                }
            }
        }
        String substring3 = str.substring(i);
        if (substring3.length() > 0) {
            try {
                arrayList.add(Float.valueOf(Float.parseFloat(substring3)));
            } catch (NumberFormatException e) {
            }
            i = str.length();
        }
        return new C1392g(arrayList, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public static Matrix m4522g(String str) {
        Matrix matrix = new Matrix();
        while (true) {
            m4507a(str, matrix);
            int indexOf = str.indexOf(")");
            if (indexOf <= 0 || str.length() <= indexOf + 1) {
                break;
            }
            str = str.substring(indexOf + 1).replaceFirst("[\\s,]*", "");
        }
        return matrix;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public static RectF m4523h(String str) {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        C1392g m4521f = m4521f(str);
        arrayList = m4521f.f4906a;
        if (arrayList.size() < 4) {
            return null;
        }
        arrayList2 = m4521f.f4906a;
        float floatValue = ((Float) arrayList2.get(0)).floatValue();
        arrayList3 = m4521f.f4906a;
        float floatValue2 = ((Float) arrayList3.get(1)).floatValue();
        arrayList4 = m4521f.f4906a;
        float floatValue3 = ((Float) arrayList4.get(2)).floatValue();
        arrayList5 = m4521f.f4906a;
        return new RectF(floatValue, floatValue2, floatValue3, ((Float) arrayList5.get(3)).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public static Path m4524i(String str) {
        boolean z;
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        int length = str.length();
        C1386a c1386a = new C1386a(str, 0);
        c1386a.m4492a();
        Path path = new Path();
        RectF rectF = new RectF();
        float f8 = 0.0f;
        float f9 = 0.0f;
        float f10 = 0.0f;
        float f11 = 0.0f;
        char c = 'x';
        float f12 = 0.0f;
        float f13 = 0.0f;
        while (c1386a.f4881a < length) {
            char charAt = str.charAt(c1386a.f4881a);
            if (Character.isDigit(charAt) || charAt == '.' || charAt == '-') {
                charAt = c == 'M' ? 'L' : c == 'm' ? 'l' : c;
            } else {
                c1386a.m4494c();
            }
            path.computeBounds(rectF, true);
            switch (charAt) {
                case 'A':
                case 'a':
                    float m4496e = c1386a.m4496e();
                    float m4496e2 = c1386a.m4496e();
                    float m4496e3 = c1386a.m4496e();
                    int m4496e4 = (int) c1386a.m4496e();
                    int m4496e5 = (int) c1386a.m4496e();
                    float m4496e6 = c1386a.m4496e();
                    float m4496e7 = c1386a.m4496e();
                    if (charAt == 'a') {
                        m4496e6 += f12;
                        m4496e7 += f13;
                    }
                    m4513a(path, f12, f13, m4496e6, m4496e7, m4496e, m4496e2, m4496e3, m4496e4 == 1, m4496e5 == 1);
                    z = false;
                    f = f8;
                    f2 = f9;
                    f4 = f10;
                    f3 = f11;
                    f6 = m4496e7;
                    f5 = m4496e6;
                    break;
                case 'C':
                case 'c':
                    float m4496e8 = c1386a.m4496e();
                    float m4496e9 = c1386a.m4496e();
                    float m4496e10 = c1386a.m4496e();
                    float m4496e11 = c1386a.m4496e();
                    float m4496e12 = c1386a.m4496e();
                    float m4496e13 = c1386a.m4496e();
                    if (charAt == 'c') {
                        m4496e10 += f12;
                        m4496e12 += f12;
                        m4496e9 += f13;
                        m4496e11 += f13;
                        m4496e13 += f13;
                        f7 = m4496e8 + f12;
                    } else {
                        f7 = m4496e8;
                    }
                    path.cubicTo(f7, m4496e9, m4496e10, m4496e11, m4496e12, m4496e13);
                    z = true;
                    f = f8;
                    f2 = f9;
                    float f14 = m4496e11;
                    f3 = m4496e10;
                    f4 = f14;
                    float f15 = m4496e13;
                    f5 = m4496e12;
                    f6 = f15;
                    break;
                case 'H':
                case 'h':
                    float m4496e14 = c1386a.m4496e();
                    if (charAt != 'h') {
                        path.lineTo(m4496e14, f13);
                        f = f8;
                        f2 = f9;
                        f4 = f10;
                        f3 = f11;
                        f5 = m4496e14;
                        f6 = f13;
                        z = false;
                        break;
                    } else {
                        path.rLineTo(m4496e14, 0.0f);
                        float f16 = m4496e14 + f12;
                        f = f8;
                        f2 = f9;
                        f4 = f10;
                        f3 = f11;
                        f5 = f16;
                        f6 = f13;
                        z = false;
                        break;
                    }
                case BaseNCodec.MIME_CHUNK_SIZE /* 76 */:
                case 'l':
                    float m4496e15 = c1386a.m4496e();
                    float m4496e16 = c1386a.m4496e();
                    if (charAt != 'l') {
                        path.lineTo(m4496e15, m4496e16);
                        z = false;
                        f = f8;
                        f2 = f9;
                        f4 = f10;
                        f3 = f11;
                        f5 = m4496e15;
                        f6 = m4496e16;
                        break;
                    } else {
                        path.rLineTo(m4496e15, m4496e16);
                        float f17 = m4496e15 + f12;
                        float f18 = m4496e16 + f13;
                        z = false;
                        f = f8;
                        f2 = f9;
                        f4 = f10;
                        f3 = f11;
                        f5 = f17;
                        f6 = f18;
                        break;
                    }
                case 'M':
                case 'm':
                    float m4496e17 = c1386a.m4496e();
                    float m4496e18 = c1386a.m4496e();
                    if (charAt == 'm') {
                        path.rMoveTo(m4496e17, m4496e18);
                        float f19 = m4496e17 + f12;
                        f = f13 + m4496e18;
                        f2 = f19;
                    } else {
                        path.moveTo(m4496e17, m4496e18);
                        f = m4496e18;
                        f2 = m4496e17;
                    }
                    z = false;
                    f4 = f10;
                    f3 = f11;
                    f6 = f;
                    f5 = f2;
                    break;
                case 'Q':
                case 'q':
                    float m4496e19 = c1386a.m4496e();
                    float m4496e20 = c1386a.m4496e();
                    float m4496e21 = c1386a.m4496e();
                    float m4496e22 = c1386a.m4496e();
                    if (charAt == 'q') {
                        m4496e21 += f12;
                        m4496e22 += f13;
                        m4496e19 += f12;
                        m4496e20 += f13;
                    }
                    path.cubicTo(f12, f13, m4496e19, m4496e20, m4496e21, m4496e22);
                    z = true;
                    f = f8;
                    f2 = f9;
                    float f20 = m4496e20;
                    f3 = m4496e19;
                    f4 = f20;
                    float f21 = m4496e22;
                    f5 = m4496e21;
                    f6 = f21;
                    break;
                case 'S':
                case 's':
                    float m4496e23 = c1386a.m4496e();
                    float m4496e24 = c1386a.m4496e();
                    float m4496e25 = c1386a.m4496e();
                    float m4496e26 = c1386a.m4496e();
                    if (charAt == 's') {
                        m4496e23 += f12;
                        m4496e25 += f12;
                        m4496e24 += f13;
                        m4496e26 += f13;
                    }
                    path.cubicTo((f12 * 2.0f) - f11, (2.0f * f13) - f10, m4496e23, m4496e24, m4496e25, m4496e26);
                    z = true;
                    f = f8;
                    f2 = f9;
                    float f22 = m4496e24;
                    f3 = m4496e23;
                    f4 = f22;
                    float f23 = m4496e26;
                    f5 = m4496e25;
                    f6 = f23;
                    break;
                case 'T':
                case 't':
                    float m4496e27 = c1386a.m4496e();
                    float m4496e28 = c1386a.m4496e();
                    if (charAt == 't') {
                        m4496e27 += f12;
                        m4496e28 += f13;
                    }
                    float f24 = (2.0f * f12) - f11;
                    float f25 = (2.0f * f13) - f10;
                    path.cubicTo(f12, f13, f24, f25, m4496e27, m4496e28);
                    z = true;
                    f = f8;
                    f2 = f9;
                    f3 = f24;
                    f4 = f25;
                    float f26 = m4496e28;
                    f5 = m4496e27;
                    f6 = f26;
                    break;
                case 'V':
                case 'v':
                    float m4496e29 = c1386a.m4496e();
                    if (charAt != 'v') {
                        path.lineTo(f12, m4496e29);
                        z = false;
                        f2 = f9;
                        f4 = f10;
                        f3 = f11;
                        f6 = m4496e29;
                        f5 = f12;
                        f = f8;
                        break;
                    } else {
                        path.rLineTo(0.0f, m4496e29);
                        float f27 = m4496e29 + f13;
                        z = false;
                        f2 = f9;
                        f4 = f10;
                        f3 = f11;
                        f6 = f27;
                        f5 = f12;
                        f = f8;
                        break;
                    }
                case 'Z':
                case 'z':
                    path.close();
                    z = false;
                    f = f8;
                    f2 = f9;
                    f4 = f10;
                    f3 = f11;
                    f6 = f8;
                    f5 = f9;
                    break;
                default:
                    Log.w("SVG", "Invalid path command: " + charAt);
                    c1386a.m4494c();
                    f2 = f9;
                    f4 = f10;
                    f3 = f11;
                    f6 = f13;
                    f5 = f12;
                    f = f8;
                    z = false;
                    break;
            }
            if (!z) {
                f4 = f6;
                f3 = f5;
            }
            c1386a.m4492a();
            f8 = f;
            f9 = f2;
            f10 = f4;
            f11 = f3;
            f13 = f6;
            c = charAt;
            f12 = f5;
        }
        return path;
    }
}
