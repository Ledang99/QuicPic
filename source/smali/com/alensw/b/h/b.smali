.class public Lcom/alensw/b/h/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:I

.field public static c:I

.field public static d:I

.field private static e:Ljava/lang/Object;

.field private static f:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alensw/b/h/b;->a:Z

    sput v0, Lcom/alensw/b/h/b;->b:I

    sput v0, Lcom/alensw/b/h/b;->c:I

    sput v0, Lcom/alensw/b/h/b;->d:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    :try_start_0
    const-string v0, "android.media.ThumbnailUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/alensw/b/h/b;->e:Ljava/lang/Object;

    const-string v1, "createVideoThumbnail"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alensw/b/h/b;->f:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(II)I
    .locals 2

    const/4 v0, 0x1

    move v1, p0

    :goto_0
    if-le v1, p1, :cond_1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    :goto_1
    mul-int v1, v0, v0

    div-int v1, p0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_1
    return v0
.end method

.method public static a(IIZI)I
    .locals 2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    div-int/2addr v0, p3

    if-gt v0, v1, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-gt v0, v1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    goto :goto_1

    :cond_2
    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    goto :goto_1
.end method

.method public static a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4

    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    :try_start_0
    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Lcom/alensw/b/h/a;->a:Landroid/graphics/Bitmap$Config;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    if-nez p2, :cond_1

    sget-object v1, Lcom/alensw/b/h/a;->a:Landroid/graphics/Bitmap$Config;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Lcom/alensw/b/h/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v1, "BitmapUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "BitmapUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BitmapUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create GLCompatible: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    sget-object v0, Lcom/alensw/b/h/a;->a:Landroid/graphics/Bitmap$Config;

    move-object v2, v0

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, p1, p1}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x6

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, p0, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return-object v0

    :catch_0
    move-exception v3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "BitmapUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create scaled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method public static a(Lcom/alensw/b/c/f;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alensw/b/c/f;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/alensw/b/c/f;->d()Ljava/lang/String;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    move-object v1, v0

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    sget-object v2, Lcom/alensw/b/h/b;->e:Ljava/lang/Object;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/alensw/b/h/b;->f:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/alensw/b/h/b;->e:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "BitmapUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video thumb:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_1
    invoke-virtual {p0}, Lcom/alensw/b/c/f;->b()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_3
    const-string v3, "BitmapUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video thumb:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :goto_2
    throw v0

    :catch_4
    move-exception v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Lcom/alensw/b/c/f;ILcom/alensw/b/h/a;)Landroid/graphics/Bitmap;
    .locals 5

    iget v0, p2, Lcom/alensw/b/h/a;->outWidth:I

    iget v1, p2, Lcom/alensw/b/h/a;->outHeight:I

    mul-int/2addr v1, v0

    invoke-virtual {p2}, Lcom/alensw/b/h/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/alensw/b/h/b;->b:I

    const v2, 0xf4240

    mul-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/alensw/b/h/b;->a(II)I

    move-result v0

    iput v0, p2, Lcom/alensw/b/h/a;->inSampleSize:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Lcom/alensw/b/h/a;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move v0, v1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_a

    iget-boolean v3, p2, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v3, :cond_a

    :try_start_0
    invoke-static {p0, p2}, Lcom/alensw/b/h/b;->a(Lcom/alensw/b/c/f;Lcom/alensw/b/h/a;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_2
    return-object v0

    :cond_0
    if-lez p1, :cond_2

    invoke-static {v1, p1}, Lcom/alensw/b/h/b;->a(II)I

    move-result v0

    iput v0, p2, Lcom/alensw/b/h/a;->inSampleSize:I

    :goto_3
    iget v0, p2, Lcom/alensw/b/h/a;->inSampleSize:I

    iget v2, p2, Lcom/alensw/b/h/a;->inSampleSize:I

    mul-int/2addr v0, v2

    div-int v2, v1, v0

    sget-boolean v0, Lcom/alensw/b/h/b;->a:Z

    if-nez v0, :cond_1

    sget v0, Lcom/alensw/b/h/b;->d:I

    if-gt v2, v0, :cond_4

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_4
    iput-object v0, p2, Lcom/alensw/b/h/a;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move v0, v2

    goto :goto_0

    :cond_2
    sget v0, Lcom/alensw/b/h/b;->c:I

    if-le v1, v0, :cond_3

    const/4 v0, 0x2

    :goto_5
    iput v0, p2, Lcom/alensw/b/h/a;->inSampleSize:I

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_4

    :catch_0
    move-exception v3

    sget v3, Lcom/alensw/b/h/b;->c:I

    if-lt v0, v3, :cond_7

    iget v0, p2, Lcom/alensw/b/h/a;->inSampleSize:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p2, Lcom/alensw/b/h/a;->inSampleSize:I

    iget v0, p2, Lcom/alensw/b/h/a;->inSampleSize:I

    iget v3, p2, Lcom/alensw/b/h/a;->inSampleSize:I

    mul-int/2addr v0, v3

    div-int v3, v1, v0

    sget-boolean v0, Lcom/alensw/b/h/b;->a:Z

    if-nez v0, :cond_5

    sget v0, Lcom/alensw/b/h/b;->d:I

    if-gt v3, v0, :cond_6

    :cond_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_6
    iput-object v0, p2, Lcom/alensw/b/h/a;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    move v0, v3

    goto :goto_1

    :cond_6
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_6

    :cond_7
    sget-boolean v3, Lcom/alensw/b/h/b;->a:Z

    if-nez v3, :cond_8

    iget-object v3, p2, Lcom/alensw/b/h/a;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_8

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, p2, Lcom/alensw/b/h/a;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_8
    iget v3, p2, Lcom/alensw/b/h/a;->inSampleSize:I

    const/16 v4, 0x20

    if-ge v3, v4, :cond_9

    iget v3, p2, Lcom/alensw/b/h/a;->inSampleSize:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p2, Lcom/alensw/b/h/a;->inSampleSize:I

    goto :goto_1

    :cond_9
    move-object v0, v2

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "BitmapUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto/16 :goto_2

    :cond_a
    move-object v0, v2

    goto/16 :goto_2
.end method

.method public static a(Lcom/alensw/b/c/f;Lcom/alensw/b/h/a;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p1, Lcom/alensw/b/h/a;->e:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/b/c/f;->b()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p1, Lcom/alensw/b/h/a;->inJustDecodeBounds:Z

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/alensw/b/h/a;->e:Z

    const-string v1, "BitmapUtils"

    const-string v2, "decode fd error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v1, p1, Lcom/alensw/b/h/a;->inJustDecodeBounds:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lcom/alensw/b/h/a;->e:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alensw/b/c/f;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/alensw/b/c/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static a(Lcom/alensw/b/c/f;ZILcom/alensw/b/h/a;)Landroid/graphics/Bitmap;
    .locals 7

    iget v1, p3, Lcom/alensw/b/h/a;->outWidth:I

    iget v2, p3, Lcom/alensw/b/h/a;->outHeight:I

    iget v0, p3, Lcom/alensw/b/h/a;->outWidth:I

    int-to-float v0, v0

    iget v3, p3, Lcom/alensw/b/h/a;->outHeight:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    iget v0, p3, Lcom/alensw/b/h/a;->outWidth:I

    iget v3, p3, Lcom/alensw/b/h/a;->outHeight:I

    invoke-static {v0, v3, p1, p2}, Lcom/alensw/b/h/b;->a(IIZI)I

    move-result v0

    iput v0, p3, Lcom/alensw/b/h/a;->inSampleSize:I

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/alensw/b/h/a;->inJustDecodeBounds:Z

    sget-object v0, Lcom/alensw/b/h/a;->a:Landroid/graphics/Bitmap$Config;

    iput-object v0, p3, Lcom/alensw/b/h/a;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_0

    iget-boolean v3, p3, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v3, :cond_0

    :try_start_0
    invoke-static {p0, p3}, Lcom/alensw/b/h/b;->a(Lcom/alensw/b/c/f;Lcom/alensw/b/h/a;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    iget v0, p3, Lcom/alensw/b/h/a;->outWidth:I

    iget v3, p3, Lcom/alensw/b/h/a;->outHeight:I

    mul-int/2addr v3, v0

    if-eqz p1, :cond_2

    mul-int v0, p2, p2

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    :goto_3
    mul-int/lit8 v0, v0, 0x3

    invoke-static {v3, v0}, Lcom/alensw/b/h/b;->a(II)I

    move-result v0

    iput v0, p3, Lcom/alensw/b/h/a;->inSampleSize:I

    goto :goto_0

    :cond_2
    mul-int v0, p2, p2

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_3

    :catch_0
    move-exception v3

    iget-object v3, p3, Lcom/alensw/b/h/a;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v3, v4, :cond_3

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, p3, Lcom/alensw/b/h/a;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_3
    const/16 v3, 0x780

    if-lt p2, v3, :cond_0

    div-int/lit8 p2, p2, 0x2

    iget v3, p3, Lcom/alensw/b/h/a;->inSampleSize:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, p3, Lcom/alensw/b/h/a;->inSampleSize:I

    sget-object v3, Lcom/alensw/b/h/a;->a:Landroid/graphics/Bitmap$Config;

    iput-object v3, p3, Lcom/alensw/b/h/a;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v4, "BitmapUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load thumbnail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alensw/b/c/f;->g()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "x"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lcom/alensw/b/h/a;->inSampleSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public static a(Lcom/alensw/b/h/c;ILcom/alensw/b/h/a;)Landroid/graphics/Bitmap;
    .locals 8

    const-wide/32 v6, 0x7fffffff

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alensw/b/h/c;->g()[B

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, p2, Lcom/alensw/b/h/a;->mCancel:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p2, Lcom/alensw/b/h/a;->inJustDecodeBounds:Z

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iput-boolean v2, p2, Lcom/alensw/b/h/a;->inJustDecodeBounds:Z

    iget-boolean v2, p2, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/alensw/b/h/a;->c()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p2, Lcom/alensw/b/h/a;->outWidth:I

    iget v3, p2, Lcom/alensw/b/h/a;->outHeight:I

    mul-int/2addr v2, v3

    if-lt v2, p1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/b/h/c;->e()J

    move-result-wide v2

    and-long v4, v2, v6

    long-to-int v4, v4

    const/16 v5, 0x20

    shr-long/2addr v2, v5

    and-long/2addr v2, v6

    long-to-int v2, v2

    invoke-virtual {p0}, Lcom/alensw/b/h/c;->f()I

    move-result v3

    iget v5, p2, Lcom/alensw/b/h/a;->outWidth:I

    iget v6, p2, Lcom/alensw/b/h/a;->outHeight:I

    invoke-static {v4, v2, v5, v6, v3}, Lcom/alensw/b/h/b;->a(IIIII)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/alensw/b/h/a;->b()V

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BitmapUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load exif: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    const v3, 0x49742400    # 1000000.0f

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    sput v0, Lcom/alensw/b/h/b;->b:I

    sget v0, Lcom/alensw/b/h/b;->b:I

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lcom/alensw/b/h/b;->c:I

    sget v0, Lcom/alensw/b/h/b;->b:I

    int-to-float v0, v0

    const/high16 v1, 0x41000000    # 8.0f

    div-float v1, v0, v1

    sget v0, Lcom/alensw/b/h/b;->b:I

    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    :goto_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sput v0, Lcom/alensw/b/h/b;->d:I

    sget v0, Lcom/alensw/b/h/b;->b:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_1
    sput-object v0, Lcom/alensw/b/h/a;->a:Landroid/graphics/Bitmap$Config;

    return-void

    :cond_0
    const v0, 0x404ccccd    # 3.2f

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method public static a(IIIII)Z
    .locals 2

    if-nez p4, :cond_0

    mul-int v0, p0, p3

    mul-int v1, p1, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lcom/alensw/b/c/f;Lcom/alensw/b/h/a;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p1, Lcom/alensw/b/h/a;->inJustDecodeBounds:Z

    invoke-static {p0, p1}, Lcom/alensw/b/h/b;->a(Lcom/alensw/b/c/f;Lcom/alensw/b/h/a;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/alensw/b/h/a;->inJustDecodeBounds:Z

    iget v2, p1, Lcom/alensw/b/h/a;->outWidth:I

    if-lez v2, :cond_0

    iget v2, p1, Lcom/alensw/b/h/a;->outHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "BitmapUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p1, Lcom/alensw/b/h/a;->inJustDecodeBounds:Z

    const/4 v0, -0x1

    iput v0, p1, Lcom/alensw/b/h/a;->outHeight:I

    iput v0, p1, Lcom/alensw/b/h/a;->outWidth:I

    move v0, v1

    goto :goto_0
.end method
