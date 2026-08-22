.class public Lcom/alensw/jni/JniUtils;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "qpicjni156"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/jni/JniUtils;->init(Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native exifClose(I)V
.end method

.method public static native exifGet3RealValue(IIZ)[D
.end method

.method public static native exifGetInfo(II)I
.end method

.method public static native exifGetThumbnail(I)[B
.end method

.method public static native exifGetValue(IIZ)Ljava/lang/Object;
.end method

.method public static native exifOpenFD(IZ)I
.end method

.method public static native exifSaveTo(II)Z
.end method

.method public static native exifSetDegrees(II)Z
.end method

.method public static native fsCancelScan(IZ)V
.end method

.method public static native fsCreateScanner(Ljava/lang/reflect/Method;)I
.end method

.method public static native fsDestroyScanner(I)V
.end method

.method public static native fsInitExtensions(ILjava/lang/String;)V
.end method

.method public static native fsScanFolders(ILjava/lang/Object;I)I
.end method

.method public static native fsScanPictures(ILjava/lang/Object;I)I
.end method

.method public static native fuCopyFD(II)Z
.end method

.method public static native fuGetAvailBytes(Ljava/lang/String;)J
.end method

.method public static native fuGetFileSize(Ljava/lang/String;)J
.end method

.method public static native fuGetFileTime(Ljava/lang/String;)I
.end method

.method public static native fuHasNoMedia(Ljava/lang/String;)Z
.end method

.method public static native gifAllocBuffer(I)I
.end method

.method public static native gifClose(I)V
.end method

.method public static native gifDecodeFrame(III)I
.end method

.method public static native gifDrawFrame(IIILandroid/graphics/Bitmap;)Z
.end method

.method public static native gifDrawFrame2(III[II)Z
.end method

.method public static native gifFreeBuffer(I)V
.end method

.method public static native gifGetDuration(I)I
.end method

.method public static native gifGetFrameCount(I)I
.end method

.method public static native gifGetImageHeight(I)I
.end method

.method public static native gifGetImageWidth(I)I
.end method

.method public static native gifOpenFD(IZ)I
.end method

.method public static native gifSetBkColor(II)V
.end method

.method private static native init(Ljava/lang/String;)I
.end method
