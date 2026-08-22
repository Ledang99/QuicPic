package com.p043b.p044a;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import org.xml.sax.Attributes;

/* renamed from: com.b.a.j */
/* loaded from: classes.dex */
class C1395j {

    /* renamed from: a */
    final /* synthetic */ C1394i f4937a;

    /* renamed from: b */
    private Paint f4938b;

    /* renamed from: c */
    private Paint f4939c;

    /* renamed from: d */
    private float f4940d;

    /* renamed from: e */
    private float f4941e;

    /* renamed from: f */
    private String f4942f;

    /* renamed from: g */
    private boolean f4943g;

    /* renamed from: h */
    private int f4944h;

    public C1395j(C1394i c1394i, Attributes attributes) {
        Float m4538a;
        Float m4538a2;
        boolean m4548a;
        boolean m4547a;
        String m4519d;
        this.f4937a = c1394i;
        this.f4938b = null;
        this.f4939c = null;
        this.f4944h = 0;
        m4538a = c1394i.m4538a("x", attributes, Float.valueOf(0.0f));
        this.f4940d = m4538a.floatValue();
        m4538a2 = c1394i.m4538a("y", attributes, Float.valueOf(0.0f));
        this.f4941e = m4538a2.floatValue();
        this.f4942f = null;
        this.f4943g = true;
        C1393h c1393h = new C1393h(attributes);
        m4548a = c1394i.m4548a(c1393h, c1394i.f4930t);
        if (m4548a) {
            this.f4939c = new Paint(c1394i.f4918h);
            c1394i.m4552a(attributes, this.f4939c);
        }
        m4547a = c1394i.m4547a(c1393h);
        if (m4547a) {
            this.f4938b = new Paint(c1394i.f4914d);
            c1394i.m4552a(attributes, this.f4938b);
        }
        m4519d = C1389d.m4519d("alignment-baseline", attributes);
        if ("middle".equals(m4519d)) {
            this.f4944h = 1;
        } else if ("top".equals(m4519d)) {
            this.f4944h = 2;
        }
    }

    /* renamed from: a */
    public void m4558a(Canvas canvas) {
        if (this.f4939c != null) {
            canvas.drawText(this.f4942f, this.f4940d, this.f4941e, this.f4939c);
        }
        if (this.f4938b != null) {
            canvas.drawText(this.f4942f, this.f4940d, this.f4941e, this.f4938b);
        }
    }

    /* renamed from: a */
    public void m4559a(char[] cArr, int i, int i2) {
        if (m4560a()) {
            if (this.f4942f == null) {
                this.f4942f = new String(cArr, i, i2);
            } else {
                this.f4942f += new String(cArr, i, i2);
            }
            if (this.f4944h > 0) {
                Paint paint = this.f4938b == null ? this.f4939c : this.f4938b;
                paint.getTextBounds(this.f4942f, 0, this.f4942f.length(), new Rect());
                this.f4941e = (this.f4944h == 1 ? -r1.centerY() : r1.height()) + this.f4941e;
            }
        }
    }

    /* renamed from: a */
    public boolean m4560a() {
        return this.f4943g;
    }

    /* renamed from: b */
    public void m4561b() {
        this.f4943g = false;
    }
}
