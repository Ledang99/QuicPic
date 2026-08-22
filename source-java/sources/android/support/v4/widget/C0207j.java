package android.support.v4.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.EdgeEffect;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* renamed from: android.support.v4.widget.j */
/* loaded from: classes.dex */
public class C0207j {

    /* renamed from: c */
    private static Constructor f886c;

    /* renamed from: d */
    private static Method f887d;

    /* renamed from: e */
    private static Method f888e;

    /* renamed from: f */
    private static Method f889f;

    /* renamed from: g */
    private static Method f890g;

    /* renamed from: h */
    private static Method f891h;

    /* renamed from: i */
    private static Method f892i;

    /* renamed from: j */
    private static Method f893j;

    /* renamed from: a */
    private EdgeEffect f894a;

    /* renamed from: b */
    private Object f895b;

    static {
        if (Build.VERSION.SDK_INT < 14) {
            try {
                Class<?> cls = Class.forName("android.widget.EdgeGlow");
                f886c = cls.getConstructor(Drawable.class, Drawable.class);
                f887d = cls.getMethod("setSize", Integer.TYPE, Integer.TYPE);
                f888e = cls.getMethod("draw", Canvas.class);
                f889f = cls.getMethod("isFinished", new Class[0]);
                f890g = cls.getMethod("onAbsorb", Integer.TYPE);
                f891h = cls.getMethod("onPull", Float.TYPE);
                f892i = cls.getMethod("onRelease", new Class[0]);
                f893j = cls.getMethod("finish", new Class[0]);
            } catch (Throwable th) {
            }
        }
    }

    @TargetApi(14)
    public C0207j(Context context) {
        if (Build.VERSION.SDK_INT >= 14) {
            this.f894a = new EdgeEffect(context);
            return;
        }
        try {
            Resources resources = context.getResources();
            this.f895b = f886c.newInstance(resources.getDrawable(resources.getIdentifier("overscroll_edge", "drawable", "android")), resources.getDrawable(resources.getIdentifier("overscroll_glow", "drawable", "android")));
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    private void m558a(Method method, Object... objArr) {
        if (method == null || this.f895b == null) {
            return;
        }
        try {
            method.invoke(this.f895b, objArr);
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    private boolean m559b(Method method, Object... objArr) {
        if (method != null && this.f895b != null) {
            try {
                return ((Boolean) method.invoke(this.f895b, objArr)).booleanValue();
            } catch (Throwable th) {
            }
        }
        return false;
    }

    /* renamed from: a */
    public void m560a(int i) {
        if (this.f894a != null) {
            this.f894a.onAbsorb(i);
        } else {
            m558a(f890g, Integer.valueOf(i));
        }
    }

    /* renamed from: a */
    public void m561a(int i, int i2) {
        if (this.f894a != null) {
            this.f894a.setSize(i, i2);
        } else {
            m558a(f887d, Integer.valueOf(i), Integer.valueOf(i2));
        }
    }

    /* renamed from: a */
    public boolean m562a() {
        return this.f894a != null ? this.f894a.isFinished() : m559b(f889f, new Object[0]);
    }

    /* renamed from: a */
    public boolean m563a(float f) {
        return m564a(f, 0.5f);
    }

    /* renamed from: a */
    public boolean m564a(float f, float f2) {
        if (this.f894a == null) {
            m558a(f891h, Float.valueOf(f));
        } else if (Build.VERSION.SDK_INT >= 21) {
            this.f894a.onPull(f, f2);
        } else {
            this.f894a.onPull(f);
        }
        return true;
    }

    /* renamed from: a */
    public boolean m565a(Canvas canvas) {
        return this.f894a != null ? this.f894a.draw(canvas) : m559b(f888e, canvas);
    }

    /* renamed from: b */
    public boolean m566b() {
        if (this.f894a != null) {
            this.f894a.onRelease();
        } else {
            m558a(f892i, new Object[0]);
        }
        return m562a();
    }
}
