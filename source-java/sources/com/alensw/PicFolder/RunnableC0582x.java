package com.alensw.PicFolder;

import android.app.WallpaperManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.Message;
import com.alensw.p023b.p026c.C0658b;
import com.alensw.p023b.p026c.C0662f;
import com.alensw.p023b.p031h.C0705a;
import com.alensw.p023b.p031h.C0707c;
import com.alensw.p023b.p031h.C0714j;
import com.alensw.p023b.p031h.C0717m;
import com.alensw.p023b.p031h.C0718n;
import com.alensw.p023b.p035l.C0742b;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.OutputStream;
import java.util.Locale;

/* renamed from: com.alensw.PicFolder.x */
/* loaded from: classes.dex */
class RunnableC0582x implements Runnable {

    /* renamed from: a */
    final /* synthetic */ RectF f2248a;

    /* renamed from: b */
    final /* synthetic */ Matrix f2249b;

    /* renamed from: c */
    final /* synthetic */ Matrix f2250c;

    /* renamed from: d */
    final /* synthetic */ boolean f2251d;

    /* renamed from: e */
    final /* synthetic */ Context f2252e;

    /* renamed from: f */
    final /* synthetic */ ContentResolver f2253f;

    /* renamed from: g */
    final /* synthetic */ int f2254g;

    /* renamed from: h */
    final /* synthetic */ C0575q f2255h;

    RunnableC0582x(C0575q c0575q, RectF rectF, Matrix matrix, Matrix matrix2, boolean z, Context context, ContentResolver contentResolver, int i) {
        this.f2255h = c0575q;
        this.f2248a = rectF;
        this.f2249b = matrix;
        this.f2250c = matrix2;
        this.f2251d = z;
        this.f2252e = context;
        this.f2253f = contentResolver;
        this.f2254g = i;
    }

    /* renamed from: a */
    private boolean m2142a() {
        C0714j fullPicture;
        float width = this.f2248a.width();
        float height = this.f2248a.height();
        float[] fArr = new float[9];
        this.f2249b.getValues(fArr);
        float m2856a = C0714j.m2856a(fArr);
        int round = this.f2255h.f2224n > 0 ? this.f2255h.f2224n : Math.round((this.f2255h.f2213c * width) / m2856a);
        int round2 = this.f2255h.f2225o > 0 ? this.f2255h.f2225o : Math.round((height * this.f2255h.f2213c) / m2856a);
        if (this.f2255h.f2227q != null) {
            if (this.f2255h.f2227q.getWidth() == round && this.f2255h.f2227q.getHeight() == round2) {
                this.f2255h.f2227q.eraseColor(0);
            } else {
                this.f2255h.f2227q.recycle();
                this.f2255h.f2227q = null;
            }
        }
        if (this.f2255h.f2227q == null) {
            this.f2255h.m2132a(round, round2);
        }
        if (this.f2255h.f2227q == null || (fullPicture = this.f2255h.getFullPicture()) == null) {
            return false;
        }
        Paint paint = new Paint(6);
        Canvas canvas = new Canvas(this.f2255h.f2227q);
        float width2 = this.f2255h.f2227q.getWidth() / width;
        canvas.scale(width2, width2);
        canvas.translate(-this.f2248a.left, -this.f2248a.top);
        if (fullPicture instanceof C0718n) {
            C0714j picture = this.f2255h.getPicture();
            if (picture != null) {
                picture.mo2828a(canvas, this.f2250c, (C0714j) null, (Matrix) null, paint, false);
                picture.m2866m();
            }
            C0718n c0718n = (C0718n) fullPicture;
            int m2874a = C0718n.m2874a((1.0f / m2856a) / width2, 1.0f);
            int i = 1 << m2874a;
            int i2 = C0717m.f2722b << m2874a;
            RectF rectF = new RectF(this.f2248a);
            Matrix matrix = new Matrix();
            this.f2249b.invert(matrix);
            matrix.mapRect(rectF);
            int i3 = m2874a + C0717m.f2721a;
            int max = (Math.max((int) Math.floor(rectF.left), 0) >> i3) << i3;
            int max2 = (Math.max((int) Math.floor(rectF.top), 0) >> i3) << i3;
            int min = Math.min((int) Math.ceil(rectF.right), c0718n.m2849e());
            int min2 = Math.min((int) Math.ceil(rectF.bottom), c0718n.m2850f());
            C0705a c0705a = new C0705a();
            Matrix matrix2 = new Matrix();
            Rect rect = new Rect();
            for (int i4 = max2; i4 < min2; i4 += i2) {
                for (int i5 = max; i5 < min; i5 += i2) {
                    rect.left = i5;
                    rect.right = i5 + i2;
                    rect.top = i4;
                    rect.bottom = i4 + i2;
                    c0705a.inSampleSize = i;
                    Bitmap m2888a = c0718n.m2888a(rect, c0705a);
                    if (m2888a != null) {
                        matrix2.setScale(i, i);
                        matrix2.postTranslate(rect.left, rect.top);
                        matrix2.postConcat(this.f2249b);
                        canvas.drawBitmap(m2888a, matrix2, paint);
                        C0718n.m2883b(m2888a);
                    }
                }
            }
        } else {
            fullPicture.mo2828a(canvas, this.f2249b, (C0714j) null, (Matrix) null, paint, false);
        }
        fullPicture.m2866m();
        return true;
    }

    /* renamed from: a */
    public boolean m2143a(Intent intent) {
        Uri uri;
        File file;
        OutputStream m3005e;
        C0662f m2590a;
        String str;
        Uri pictureUri = this.f2255h.getPictureUri();
        Uri uri2 = this.f2255h.f2223m;
        if (uri2 == null) {
            String path = this.f2255h.f2222l != null ? this.f2255h.f2222l : pictureUri.getPath();
            if (this.f2255h.f2228r != null) {
                str = this.f2255h.f2228r.toString().toLowerCase(Locale.ENGLISH);
            } else {
                String m2975a = C0742b.m2975a(path, true);
                if ("png".equals(m2975a) || "bmp".equals(m2975a)) {
                    this.f2255h.f2228r = Bitmap.CompressFormat.PNG;
                    str = "png";
                } else {
                    this.f2255h.f2228r = Bitmap.CompressFormat.JPEG;
                    str = "jpg";
                }
            }
            File m2570c = this.f2251d ? C0658b.m2570c(this.f2252e, path) : C0742b.m2969a(new File(path), "." + str);
            if (m2570c != null) {
                C0742b.m2999c(m2570c);
                uri = Uri.fromFile(m2570c);
                intent.setDataAndType(uri, "image/" + str);
                file = m2570c;
            } else {
                intent.setDataAndType(uri2, "image/" + str);
                uri = uri2;
                file = m2570c;
            }
        } else {
            uri = uri2;
            file = null;
        }
        if (uri != null) {
            try {
                try {
                    m3005e = this.f2253f.openOutputStream(uri);
                } catch (Throwable th) {
                    m3005e = file != null ? C0742b.m3005e(file) : null;
                }
                if (m3005e != null) {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(m3005e);
                    if (this.f2255h.f2228r == null) {
                        this.f2255h.f2228r = Bitmap.CompressFormat.JPEG;
                    }
                    this.f2255h.f2227q.compress(this.f2255h.f2228r, 90, bufferedOutputStream);
                    bufferedOutputStream.close();
                    m3005e.close();
                }
                if (file != null && (m2590a = C0662f.m2590a(this.f2253f, pictureUri)) != null) {
                    C0707c m2786a = C0707c.m2786a(m2590a, true);
                    if (m2786a != null) {
                        C0662f m3002d = C0742b.m3002d(file);
                        if (m3002d != null) {
                            m2786a.m2795a(m3002d);
                            m3002d.m2601h();
                        }
                        m2786a.m2792a();
                    }
                    m2590a.m2601h();
                }
                if (this.f2255h.f2226p != 0) {
                    try {
                        file.setLastModified(this.f2255h.f2226p);
                    } catch (Throwable th2) {
                    }
                }
                return true;
            } catch (Throwable th3) {
            }
        }
        return false;
    }

    @Override // java.lang.Runnable
    public void run() {
        Intent intent = new Intent();
        Message obtainMessage = this.f2255h.f2229s.obtainMessage(1001, this.f2254g, 0, intent);
        if (m2142a()) {
            if (this.f2255h.f2217g) {
                intent.putExtra("data", this.f2255h.f2227q);
                obtainMessage.arg2 = this.f2255h.f2227q == null ? 0 : 1;
                this.f2255h.f2227q = null;
            } else if (this.f2255h.f2219i) {
                try {
                    WallpaperManager.getInstance(this.f2252e).setBitmap(this.f2255h.f2227q);
                    obtainMessage.arg2 = 1;
                } catch (Throwable th) {
                }
            } else {
                obtainMessage.arg2 = m2143a(intent) ? 1 : 0;
            }
        }
        this.f2255h.f2221k = false;
        this.f2255h.f2229s.post(new RunnableC0583y(this, obtainMessage));
    }
}
