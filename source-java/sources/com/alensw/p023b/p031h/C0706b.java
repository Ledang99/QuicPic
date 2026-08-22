package com.alensw.p023b.p031h;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.media.MediaMetadataRetriever;
import android.media.ThumbnailUtils;
import android.os.Build;
import android.util.Log;
import com.alensw.p023b.p026c.C0662f;
import java.lang.reflect.Method;

/* renamed from: com.alensw.b.h.b */
/* loaded from: classes.dex */
public class C0706b {

    /* renamed from: a */
    public static boolean f2668a = false;

    /* renamed from: b */
    public static int f2669b = 0;

    /* renamed from: c */
    public static int f2670c = 0;

    /* renamed from: d */
    public static int f2671d = 0;

    /* renamed from: e */
    private static Object f2672e;

    /* renamed from: f */
    private static Method f2673f;

    static {
        if (Build.VERSION.SDK_INT < 8) {
            try {
                Class<?> cls = Class.forName("android.media.ThumbnailUtil");
                f2672e = cls.newInstance();
                f2673f = cls.getMethod("createVideoThumbnail", String.class);
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: a */
    public static int m2771a(int i, int i2) {
        int i3 = 1;
        int i4 = i;
        while (i4 > i2) {
            i3 = i3 < 8 ? i3 * 2 : i3 + 8;
            i4 = i / (i3 * i3);
        }
        return i3;
    }

    /* renamed from: a */
    public static int m2772a(int i, int i2, boolean z, int i3) {
        int min = (z ? Math.min(i, i2) : Math.max(i, i2)) / i3;
        if (min <= 1) {
            return 1;
        }
        return min <= 8 ? Integer.highestOneBit(min) : (min / 8) * 8;
    }

    /* renamed from: a */
    public static Bitmap m2773a(int i, int i2, Bitmap.Config config) {
        Bitmap.Config config2;
        if (config != null) {
            config2 = config;
        } else {
            try {
                config2 = C0705a.f2661a;
            } catch (OutOfMemoryError e) {
                if (config == null && C0705a.f2661a == Bitmap.Config.ARGB_8888) {
                    return m2773a(i, i2, Bitmap.Config.RGB_565);
                }
                Log.e("BitmapUtils", "create bitmap: " + e);
                return null;
            } catch (Throwable th) {
                Log.e("BitmapUtils", "create bitmap: " + th);
                return null;
            }
        }
        return Bitmap.createBitmap(i, i2, config2);
    }

    /* renamed from: a */
    public static Bitmap m2774a(Bitmap bitmap) {
        if (bitmap == null || bitmap.getConfig() != null) {
            return bitmap;
        }
        try {
            Bitmap copy = bitmap.copy(Bitmap.Config.ARGB_8888, false);
            bitmap.recycle();
            return copy;
        } catch (Throwable th) {
            Log.e("BitmapUtils", "create GLCompatible: " + th);
            return bitmap;
        }
    }

    /* renamed from: a */
    public static Bitmap m2775a(Bitmap bitmap, float f) {
        Bitmap.Config config = C0705a.f2661a;
        Bitmap bitmap2 = null;
        while (bitmap2 == null) {
            try {
                bitmap2 = Bitmap.createBitmap(Math.round(bitmap.getWidth() * f), Math.round(bitmap.getHeight() * f), config);
                Canvas canvas = new Canvas(bitmap2);
                canvas.scale(f, f);
                canvas.drawBitmap(bitmap, 0.0f, 0.0f, new Paint(6));
                return bitmap2;
            } catch (OutOfMemoryError e) {
                if (config != Bitmap.Config.ARGB_8888) {
                    break;
                }
                config = Bitmap.Config.RGB_565;
            } catch (Throwable th) {
                Log.e("BitmapUtils", "create scaled: " + th);
            }
        }
        return null;
    }

    /* renamed from: a */
    public static Bitmap m2776a(C0662f c0662f) {
        Bitmap bitmap = null;
        if (c0662f.m2594a()) {
            try {
                String m2597d = c0662f.m2597d();
                return Build.VERSION.SDK_INT >= 8 ? ThumbnailUtils.createVideoThumbnail(m2597d, 1) : f2672e != null ? (Bitmap) f2673f.invoke(f2672e, m2597d) : null;
            } catch (Throwable th) {
                Log.e("BitmapUtils", "video thumb:" + th);
                return null;
            }
        }
        if (Build.VERSION.SDK_INT < 10) {
            return null;
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                mediaMetadataRetriever.setDataSource(c0662f.m2595b());
                bitmap = mediaMetadataRetriever.getFrameAtTime(-1L);
            } finally {
                try {
                    mediaMetadataRetriever.release();
                } catch (Throwable th2) {
                }
            }
        } catch (Throwable th3) {
            Log.e("BitmapUtils", "video thumb:" + th3);
            try {
                mediaMetadataRetriever.release();
            } catch (Throwable th4) {
            }
        }
        return bitmap;
    }

    /* renamed from: a */
    public static Bitmap m2777a(C0662f c0662f, int i, C0705a c0705a) {
        int i2;
        int i3 = c0705a.outHeight * c0705a.outWidth;
        if (c0705a.m2770d()) {
            c0705a.inSampleSize = m2771a(i3, f2669b * 1000000);
            c0705a.inPreferredConfig = Bitmap.Config.ARGB_8888;
            i2 = i3;
        } else {
            if (i > 0) {
                c0705a.inSampleSize = m2771a(i3, i);
            } else {
                c0705a.inSampleSize = i3 > f2670c ? 2 : 1;
            }
            int i4 = i3 / (c0705a.inSampleSize * c0705a.inSampleSize);
            c0705a.inPreferredConfig = (f2668a || i4 <= f2671d) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
            i2 = i4;
        }
        while (0 == 0 && !c0705a.mCancel) {
            try {
                return m2778a(c0662f, c0705a);
            } catch (OutOfMemoryError e) {
                if (i2 >= f2670c) {
                    c0705a.inSampleSize *= 2;
                    int i5 = i3 / (c0705a.inSampleSize * c0705a.inSampleSize);
                    c0705a.inPreferredConfig = (f2668a || i5 <= f2671d) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
                    i2 = i5;
                } else if (!f2668a && c0705a.inPreferredConfig == Bitmap.Config.ARGB_8888) {
                    c0705a.inPreferredConfig = Bitmap.Config.RGB_565;
                } else {
                    if (c0705a.inSampleSize >= 32) {
                        return null;
                    }
                    c0705a.inSampleSize *= 2;
                }
            } catch (Throwable th) {
                Log.e("BitmapUtils", "load bitmap: " + th);
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static Bitmap m2778a(C0662f c0662f, C0705a c0705a) {
        Bitmap bitmap = null;
        if (!c0705a.f2667e && (bitmap = BitmapFactory.decodeFileDescriptor(c0662f.m2595b(), null, c0705a)) == null && !c0705a.inJustDecodeBounds && !c0705a.mCancel) {
            c0705a.f2667e = true;
            Log.e("BitmapUtils", "decode fd error!");
        }
        return (bitmap == null && !c0705a.inJustDecodeBounds && c0705a.f2667e && c0662f.m2594a()) ? BitmapFactory.decodeFile(c0662f.m2597d(), c0705a) : bitmap;
    }

    /* renamed from: a */
    public static Bitmap m2779a(C0662f c0662f, boolean z, int i, C0705a c0705a) {
        int i2 = c0705a.outWidth;
        int i3 = c0705a.outHeight;
        float f = c0705a.outWidth / c0705a.outHeight;
        if (f <= 0.5f || f >= 2.0f) {
            c0705a.inSampleSize = m2771a(c0705a.outHeight * c0705a.outWidth, (z ? ((i * i) * 4) / 3 : ((i * i) * 3) / 4) * 3);
        } else {
            c0705a.inSampleSize = m2772a(c0705a.outWidth, c0705a.outHeight, z, i);
        }
        c0705a.inJustDecodeBounds = false;
        c0705a.inPreferredConfig = C0705a.f2661a;
        Bitmap bitmap = null;
        while (bitmap == null && !c0705a.mCancel) {
            try {
                bitmap = m2778a(c0662f, c0705a);
                break;
            } catch (OutOfMemoryError e) {
                if (c0705a.inPreferredConfig != Bitmap.Config.ARGB_8888) {
                    if (i < 1920) {
                        break;
                    }
                    i /= 2;
                    c0705a.inSampleSize *= 2;
                    c0705a.inPreferredConfig = C0705a.f2661a;
                } else {
                    c0705a.inPreferredConfig = Bitmap.Config.RGB_565;
                }
            } catch (Throwable th) {
                Log.e("BitmapUtils", "load thumbnail: " + c0662f.m2600g() + ", " + i2 + "x" + i3 + "/" + c0705a.inSampleSize + ", " + th);
            }
        }
        return bitmap;
    }

    /* renamed from: a */
    public static Bitmap m2780a(C0707c c0707c, int i, C0705a c0705a) {
        try {
            byte[] m2804g = c0707c.m2804g();
            if (m2804g == null || c0705a.mCancel) {
                return null;
            }
            c0705a.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(m2804g, 0, m2804g.length, c0705a);
            c0705a.inJustDecodeBounds = false;
            if (c0705a.mCancel || c0705a.m2769c() || c0705a.outWidth * c0705a.outHeight < i) {
                return null;
            }
            long m2802e = c0707c.m2802e();
            if (!m2782a((int) (m2802e & 2147483647L), (int) ((m2802e >> 32) & 2147483647L), c0705a.outWidth, c0705a.outHeight, c0707c.m2803f())) {
                return null;
            }
            c0705a.m2768b();
            return BitmapFactory.decodeByteArray(m2804g, 0, m2804g.length, c0705a);
        } catch (Throwable th) {
            Log.e("BitmapUtils", "load exif: " + th);
            return null;
        }
    }

    /* renamed from: a */
    public static void m2781a(Context context) {
        f2669b = ((ActivityManager) context.getSystemService("activity")).getMemoryClass();
        f2670c = (int) (Math.max(f2669b / 3.0f, 4.0f) * 1000000.0f);
        f2671d = (int) (Math.max(f2669b / 8.0f, f2669b < 24 ? 2.0f : 3.2f) * 1000000.0f);
        C0705a.f2661a = f2669b >= 32 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
    }

    /* renamed from: a */
    public static boolean m2782a(int i, int i2, int i3, int i4, int i5) {
        return i5 == 0 && i * i4 == i2 * i3;
    }

    /* renamed from: b */
    public static boolean m2783b(C0662f c0662f, C0705a c0705a) {
        try {
            c0705a.inJustDecodeBounds = true;
            m2778a(c0662f, c0705a);
            c0705a.inJustDecodeBounds = false;
            if (c0705a.outWidth > 0) {
                if (c0705a.outHeight > 0) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            Log.e("BitmapUtils", "get size: " + th);
            c0705a.inJustDecodeBounds = false;
            c0705a.outHeight = -1;
            c0705a.outWidth = -1;
            return false;
        }
    }
}
