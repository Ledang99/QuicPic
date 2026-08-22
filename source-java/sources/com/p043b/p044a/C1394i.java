package com.p043b.p044a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Picture;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Typeface;
import android.util.Log;
import java.util.HashMap;
import java.util.Stack;
import java.util.StringTokenizer;
import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;

/* renamed from: com.b.a.i */
/* loaded from: classes.dex */
class C1394i extends DefaultHandler {

    /* renamed from: A */
    private static final Matrix f4910A = new Matrix();

    /* renamed from: a */
    HashMap f4911a;

    /* renamed from: b */
    Picture f4912b;

    /* renamed from: c */
    Canvas f4913c;

    /* renamed from: d */
    Paint f4914d;

    /* renamed from: e */
    boolean f4915e;

    /* renamed from: f */
    Stack f4916f;

    /* renamed from: g */
    Stack f4917g;

    /* renamed from: h */
    Paint f4918h;

    /* renamed from: i */
    boolean f4919i;

    /* renamed from: j */
    Stack f4920j;

    /* renamed from: k */
    Stack f4921k;

    /* renamed from: l */
    float f4922l;

    /* renamed from: m */
    Stack f4923m;

    /* renamed from: n */
    RectF f4924n;

    /* renamed from: o */
    RectF f4925o;

    /* renamed from: p */
    RectF f4926p;

    /* renamed from: q */
    Integer f4927q;

    /* renamed from: r */
    float f4928r;

    /* renamed from: s */
    int f4929s;

    /* renamed from: t */
    HashMap f4930t;

    /* renamed from: u */
    C1391f f4931u;

    /* renamed from: v */
    C1395j f4932v;

    /* renamed from: w */
    private boolean f4933w;

    /* renamed from: x */
    private int f4934x;

    /* renamed from: y */
    private boolean f4935y;

    /* renamed from: z */
    private boolean f4936z;

    private C1394i(Picture picture) {
        this.f4911a = new HashMap();
        this.f4915e = false;
        this.f4916f = new Stack();
        this.f4917g = new Stack();
        this.f4919i = false;
        this.f4920j = new Stack();
        this.f4921k = new Stack();
        this.f4922l = 1.0f;
        this.f4923m = new Stack();
        this.f4924n = new RectF();
        this.f4925o = null;
        this.f4926p = new RectF(Float.POSITIVE_INFINITY, Float.POSITIVE_INFINITY, Float.NEGATIVE_INFINITY, Float.NEGATIVE_INFINITY);
        this.f4927q = null;
        this.f4928r = C1389d.f4890a;
        this.f4929s = 0;
        this.f4933w = false;
        this.f4934x = 0;
        this.f4935y = false;
        this.f4930t = new HashMap();
        this.f4931u = null;
        this.f4932v = null;
        this.f4936z = false;
        this.f4912b = picture;
        this.f4914d = new Paint();
        this.f4914d.setAntiAlias(true);
        this.f4914d.setStyle(Paint.Style.STROKE);
        this.f4918h = new Paint();
        this.f4918h.setAntiAlias(true);
        this.f4918h.setStyle(Paint.Style.FILL);
    }

    /* renamed from: a */
    private static float m4533a(String str, float f) {
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException e) {
            return f;
        }
    }

    /* renamed from: a */
    private C1391f m4534a(boolean z, Attributes attributes) {
        String m4519d;
        String m4519d2;
        String m4519d3;
        Matrix m4522g;
        C1391f c1391f = new C1391f();
        m4519d = C1389d.m4519d("id", attributes);
        c1391f.f4892a = m4519d;
        c1391f.f4894c = z;
        if (z) {
            c1391f.f4895d = m4538a("x1", attributes, Float.valueOf(0.0f)).floatValue();
            c1391f.f4897f = m4538a("x2", attributes, Float.valueOf(0.0f)).floatValue();
            c1391f.f4896e = m4538a("y1", attributes, Float.valueOf(0.0f)).floatValue();
            c1391f.f4898g = m4538a("y2", attributes, Float.valueOf(0.0f)).floatValue();
        } else {
            c1391f.f4899h = m4538a("cx", attributes, Float.valueOf(0.0f)).floatValue();
            c1391f.f4900i = m4538a("cy", attributes, Float.valueOf(0.0f)).floatValue();
            c1391f.f4901j = m4538a("r", attributes, Float.valueOf(0.0f)).floatValue();
        }
        m4519d2 = C1389d.m4519d("gradientTransform", attributes);
        if (m4519d2 != null) {
            m4522g = C1389d.m4522g(m4519d2);
            c1391f.f4904m = m4522g;
        }
        m4519d3 = C1389d.m4519d("href", attributes);
        if (m4519d3 != null) {
            if (m4519d3.startsWith("#")) {
                m4519d3 = m4519d3.substring(1);
            }
            c1391f.f4893b = m4519d3;
        }
        return c1391f;
    }

    /* renamed from: a */
    private Float m4536a(String str, Attributes attributes) {
        return m4538a(str, attributes, (Float) null);
    }

    /* renamed from: a */
    private Float m4537a(String str, Attributes attributes, float f) {
        String m4519d;
        m4519d = C1389d.m4519d(str, attributes);
        if (m4519d == null) {
            return null;
        }
        if (m4519d.endsWith("px")) {
            return Float.valueOf(Float.parseFloat(m4519d.substring(0, m4519d.length() - 2)));
        }
        if (m4519d.endsWith("pt")) {
            return Float.valueOf((Float.valueOf(m4519d.substring(0, m4519d.length() - 2)).floatValue() * f) / 72.0f);
        }
        if (m4519d.endsWith("pc")) {
            return Float.valueOf((Float.valueOf(m4519d.substring(0, m4519d.length() - 2)).floatValue() * f) / 6.0f);
        }
        if (m4519d.endsWith("cm")) {
            return Float.valueOf((Float.valueOf(m4519d.substring(0, m4519d.length() - 2)).floatValue() * f) / 2.54f);
        }
        if (m4519d.endsWith("mm")) {
            return Float.valueOf((Float.valueOf(m4519d.substring(0, m4519d.length() - 2)).floatValue() * f) / 254.0f);
        }
        if (m4519d.endsWith("in")) {
            return Float.valueOf(Float.valueOf(m4519d.substring(0, m4519d.length() - 2)).floatValue() * f);
        }
        if (m4519d.endsWith("em")) {
            return Float.valueOf(Float.valueOf(m4519d.substring(0, m4519d.length() - 2)).floatValue() * this.f4918h.getTextSize());
        }
        if (m4519d.endsWith("ex")) {
            return Float.valueOf((Float.valueOf(m4519d.substring(0, m4519d.length() - 2)).floatValue() * this.f4918h.getTextSize()) / 2.0f);
        }
        if (!m4519d.endsWith("%")) {
            return Float.valueOf(m4519d);
        }
        return Float.valueOf(((str.indexOf("x") >= 0 || str.equals("width")) ? this.f4913c.getWidth() / 100.0f : (str.indexOf("y") >= 0 || str.equals("height")) ? this.f4913c.getHeight() / 100.0f : (this.f4913c.getHeight() + this.f4913c.getWidth()) / 2.0f) * Float.valueOf(m4519d.substring(0, m4519d.length() - 1)).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public Float m4538a(String str, Attributes attributes, Float f) {
        Float m4537a = m4537a(str, attributes, this.f4928r);
        return m4537a == null ? f : m4537a;
    }

    /* renamed from: a */
    private void m4539a() {
        this.f4913c.restore();
        this.f4929s--;
    }

    /* renamed from: a */
    private void m4540a(float f, float f2) {
        if (f < this.f4926p.left) {
            this.f4926p.left = f;
        }
        if (f > this.f4926p.right) {
            this.f4926p.right = f;
        }
        if (f2 < this.f4926p.top) {
            this.f4926p.top = f2;
        }
        if (f2 > this.f4926p.bottom) {
            this.f4926p.bottom = f2;
        }
    }

    /* renamed from: a */
    private void m4541a(float f, float f2, float f3, float f4) {
        m4540a(f, f2);
        m4540a(f + f3, f2 + f4);
    }

    /* renamed from: a */
    private void m4542a(Canvas canvas, float f, float f2, float f3, float f4, byte[] bArr) {
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        if (decodeByteArray != null) {
            decodeByteArray.prepareToDraw();
            Paint paint = new Paint(3);
            RectF rectF = new RectF(f, f2, f + f3, f2 + f4);
            canvas.clipRect(rectF, Region.Op.REPLACE);
            canvas.drawBitmap(decodeByteArray, (Rect) null, rectF, paint);
            decodeByteArray.recycle();
        }
    }

    /* renamed from: a */
    private void m4543a(Path path) {
        path.computeBounds(this.f4924n, false);
        m4540a(this.f4924n.left, this.f4924n.top);
        m4540a(this.f4924n.right, this.f4924n.bottom);
    }

    /* renamed from: a */
    private void m4544a(C1393h c1393h, Integer num, boolean z, Paint paint) {
        Float m4532d = c1393h.m4532d("opacity");
        if (m4532d == null) {
            m4532d = c1393h.m4532d(z ? "fill-opacity" : "stroke-opacity");
        }
        if (m4532d == null) {
            m4532d = Float.valueOf(1.0f);
        }
        paint.setColor((Math.round((m4532d.floatValue() * 255.0f) * this.f4922l) << 24) | num.intValue());
    }

    /* renamed from: a */
    private void m4545a(String str, String str2) {
        int i = 0;
        float f = 0.0f;
        if (str == null) {
            return;
        }
        if (str.equals("none")) {
            this.f4914d.setPathEffect(null);
            return;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str, " ,");
        int countTokens = stringTokenizer.countTokens();
        if ((countTokens & 1) == 1) {
            countTokens *= 2;
        }
        float[] fArr = new float[countTokens];
        float f2 = 1.0f;
        float f3 = 0.0f;
        int i2 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            f2 = m4533a(stringTokenizer.nextToken(), f2);
            fArr[i2] = f2;
            f3 += f2;
            i2++;
        }
        while (i2 < fArr.length) {
            float f4 = fArr[i];
            fArr[i2] = f4;
            f3 += f4;
            i2++;
            i++;
        }
        if (str2 != null) {
            try {
                f = Float.parseFloat(str2) % f3;
            } catch (NumberFormatException e) {
            }
        }
        this.f4914d.setPathEffect(new DashPathEffect(fArr, f));
    }

    /* renamed from: a */
    private void m4546a(Attributes attributes) {
        String m4519d;
        m4519d = C1389d.m4519d("transform", attributes);
        Matrix m4522g = m4519d == null ? f4910A : C1389d.m4522g(m4519d);
        this.f4929s++;
        this.f4913c.save();
        this.f4913c.concat(m4522g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m4547a(C1393h c1393h) {
        if ("none".equals(c1393h.m4530b("display"))) {
            return false;
        }
        Float m4532d = c1393h.m4532d("stroke-width");
        if (m4532d != null) {
            this.f4914d.setStrokeWidth(m4532d.floatValue());
        }
        if (this.f4914d.getStrokeWidth() <= 0.0f) {
            return false;
        }
        String m4530b = c1393h.m4530b("stroke-linecap");
        if ("round".equals(m4530b)) {
            this.f4914d.setStrokeCap(Paint.Cap.ROUND);
        } else if ("square".equals(m4530b)) {
            this.f4914d.setStrokeCap(Paint.Cap.SQUARE);
        } else if ("butt".equals(m4530b)) {
            this.f4914d.setStrokeCap(Paint.Cap.BUTT);
        }
        String m4530b2 = c1393h.m4530b("stroke-linejoin");
        if ("miter".equals(m4530b2)) {
            this.f4914d.setStrokeJoin(Paint.Join.MITER);
        } else if ("round".equals(m4530b2)) {
            this.f4914d.setStrokeJoin(Paint.Join.ROUND);
        } else if ("bevel".equals(m4530b2)) {
            this.f4914d.setStrokeJoin(Paint.Join.BEVEL);
        }
        m4545a(c1393h.m4530b("stroke-dasharray"), c1393h.m4530b("stroke-dashoffset"));
        String m4529a = c1393h.m4529a("stroke");
        if (m4529a == null) {
            if (this.f4915e) {
                return this.f4914d.getColor() != 0;
            }
            if (m4532d == null || this.f4927q == null) {
                this.f4914d.setColor(0);
                return false;
            }
            this.f4914d.setColor(this.f4927q.intValue());
            return true;
        }
        if (m4529a.equalsIgnoreCase("none")) {
            this.f4914d.setColor(0);
            return false;
        }
        Integer m4531c = c1393h.m4531c("stroke");
        if (m4531c != null) {
            m4544a(c1393h, m4531c, false, this.f4914d);
            return true;
        }
        Log.d("SVG", "Unrecognized stroke color, using none: " + m4529a);
        this.f4914d.setColor(0);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m4548a(C1393h c1393h, HashMap hashMap) {
        if ("none".equals(c1393h.m4530b("display"))) {
            return false;
        }
        String m4530b = c1393h.m4530b("fill");
        if (m4530b == null) {
            if (this.f4919i) {
                return this.f4918h.getColor() != 0;
            }
            this.f4918h.setShader(null);
            this.f4918h.setColor(this.f4927q != null ? this.f4927q.intValue() : -16777216);
            return true;
        }
        if (m4530b.startsWith("url(#")) {
            String substring = m4530b.substring("url(#".length(), m4530b.length() - 1);
            C1391f c1391f = (C1391f) hashMap.get(substring);
            if (c1391f != null) {
                this.f4918h.setShader(c1391f.m4525a());
                return true;
            }
            Log.w("SVG", "Didn't find shader, using black: " + substring);
            this.f4918h.setShader(null);
            m4544a(c1393h, (Integer) (-16777216), true, this.f4918h);
            return true;
        }
        if (m4530b.equalsIgnoreCase("none")) {
            this.f4918h.setShader(null);
            this.f4918h.setColor(0);
            return true;
        }
        this.f4918h.setShader(null);
        Integer m4531c = c1393h.m4531c("fill");
        if (m4531c != null) {
            m4544a(c1393h, m4531c, true, this.f4918h);
            return true;
        }
        Log.w("SVG", "Unrecognized fill color, using black: " + m4530b);
        m4544a(c1393h, (Integer) (-16777216), true, this.f4918h);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public boolean m4552a(Attributes attributes, Paint paint) {
        if ("none".equals(attributes.getValue("display"))) {
            return false;
        }
        if (attributes.getValue("font-size") != null) {
            paint.setTextSize(m4538a("font-size", attributes, Float.valueOf(10.0f)).floatValue());
        }
        Typeface m4555d = m4555d(attributes);
        if (m4555d != null) {
            paint.setTypeface(m4555d);
        }
        if (m4554c(attributes) != null) {
            paint.setTextAlign(m4554c(attributes));
        }
        return true;
    }

    /* renamed from: b */
    private String m4553b(Attributes attributes) {
        String str = "";
        for (int i = 0; i < attributes.getLength(); i++) {
            str = str + " " + attributes.getLocalName(i) + "='" + attributes.getValue(i) + "'";
        }
        return str;
    }

    /* renamed from: c */
    private Paint.Align m4554c(Attributes attributes) {
        String m4519d;
        m4519d = C1389d.m4519d("text-anchor", attributes);
        if (m4519d == null) {
            return null;
        }
        return "middle".equals(m4519d) ? Paint.Align.CENTER : "end".equals(m4519d) ? Paint.Align.RIGHT : Paint.Align.LEFT;
    }

    /* renamed from: d */
    private Typeface m4555d(Attributes attributes) {
        String m4519d;
        String m4519d2;
        String m4519d3;
        m4519d = C1389d.m4519d("font-family", attributes);
        m4519d2 = C1389d.m4519d("font-style", attributes);
        m4519d3 = C1389d.m4519d("font-weight", attributes);
        if (m4519d == null && m4519d2 == null && m4519d3 == null) {
            return null;
        }
        int i = "italic".equals(m4519d2) ? 2 : 0;
        if ("bold".equals(m4519d3)) {
            i |= 1;
        }
        return Typeface.create(m4519d, i);
    }

    /* renamed from: a */
    public void m4556a(float f) {
        this.f4928r = f;
    }

    /* renamed from: a */
    public void m4557a(Integer num) {
        this.f4927q = num;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) {
        if (this.f4932v != null) {
            this.f4932v.m4559a(cArr, i, i2);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endDocument() {
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) {
        C1391f c1391f;
        if (this.f4936z) {
            if (str2.equals("defs")) {
                this.f4936z = false;
                return;
            }
            return;
        }
        if (str2.equals("svg")) {
            this.f4912b.endRecording();
            return;
        }
        if (!this.f4933w && str2.equals("text")) {
            if (this.f4932v != null) {
                this.f4932v.m4558a(this.f4913c);
                this.f4932v.m4561b();
            }
            m4539a();
            return;
        }
        if (str2.equals("linearGradient") || str2.equals("radialGradient")) {
            if (this.f4931u.f4892a != null) {
                if (this.f4931u.f4893b != null && (c1391f = (C1391f) this.f4930t.get(this.f4931u.f4893b)) != null) {
                    this.f4931u = c1391f.m4526a(this.f4931u);
                }
                this.f4930t.put(this.f4931u.f4892a, this.f4931u);
                return;
            }
            return;
        }
        if (str2.equals("g")) {
            if (this.f4935y) {
                this.f4935y = false;
            }
            if (this.f4933w) {
                this.f4934x--;
                if (this.f4934x == 0) {
                    this.f4933w = false;
                }
            }
            m4539a();
            this.f4918h = (Paint) this.f4920j.pop();
            this.f4919i = ((Boolean) this.f4921k.pop()).booleanValue();
            this.f4914d = (Paint) this.f4916f.pop();
            this.f4915e = ((Boolean) this.f4917g.pop()).booleanValue();
            this.f4922l = ((Float) this.f4923m.pop()).floatValue();
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startDocument() {
    }

    /*  JADX ERROR: JadxRuntimeException in pass: ProcessVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Method arg registers not loaded: com.b.a.k.<init>(java.lang.String, com.b.a.e):void, class status: GENERATED_AND_UNLOADED
        	at jadx.core.dex.nodes.MethodNode.getArgRegs(MethodNode.java:290)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.isArgUnused(ProcessVariables.java:146)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.lambda$isVarUnused$0(ProcessVariables.java:131)
        	at jadx.core.utils.ListUtils.allMatch(ListUtils.java:193)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.isVarUnused(ProcessVariables.java:131)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables$1.processBlock(ProcessVariables.java:82)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:64)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.Collections$UnmodifiableCollection.forEach(Collections.java:1117)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.removeUnusedResults(ProcessVariables.java:73)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.visit(ProcessVariables.java:48)
        */
    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(java.lang.String r12, java.lang.String r13, java.lang.String r14, org.xml.sax.Attributes r15) {
        /*
            Method dump skipped, instructions count: 1889
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p043b.p044a.C1394i.startElement(java.lang.String, java.lang.String, java.lang.String, org.xml.sax.Attributes):void");
    }
}
