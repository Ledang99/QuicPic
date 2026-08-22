package com.alensw.jni;

import android.graphics.Bitmap;
import android.os.Environment;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class JniUtils {
    static {
        System.loadLibrary("qpicjni156");
        init(Environment.getExternalStorageDirectory().getPath());
    }

    public static native void exifClose(int i);

    public static native double[] exifGet3RealValue(int i, int i2, boolean z);

    public static native int exifGetInfo(int i, int i2);

    public static native byte[] exifGetThumbnail(int i);

    public static native Object exifGetValue(int i, int i2, boolean z);

    public static native int exifOpenFD(int i, boolean z);

    public static native boolean exifSaveTo(int i, int i2);

    public static native boolean exifSetDegrees(int i, int i2);

    public static native void fsCancelScan(int i, boolean z);

    public static native int fsCreateScanner(Method method);

    public static native void fsDestroyScanner(int i);

    public static native void fsInitExtensions(int i, String str);

    public static native int fsScanFolders(int i, Object obj, int i2);

    public static native int fsScanPictures(int i, Object obj, int i2);

    public static native boolean fuCopyFD(int i, int i2);

    public static native long fuGetAvailBytes(String str);

    public static native long fuGetFileSize(String str);

    public static native int fuGetFileTime(String str);

    public static native boolean fuHasNoMedia(String str);

    public static native int gifAllocBuffer(int i);

    public static native void gifClose(int i);

    public static native int gifDecodeFrame(int i, int i2, int i3);

    public static native boolean gifDrawFrame(int i, int i2, int i3, Bitmap bitmap);

    public static native boolean gifDrawFrame2(int i, int i2, int i3, int[] iArr, int i4);

    public static native void gifFreeBuffer(int i);

    public static native int gifGetDuration(int i);

    public static native int gifGetFrameCount(int i);

    public static native int gifGetImageHeight(int i);

    public static native int gifGetImageWidth(int i);

    public static native int gifOpenFD(int i, boolean z);

    public static native void gifSetBkColor(int i, int i2);

    private static native int init(String str);
}
