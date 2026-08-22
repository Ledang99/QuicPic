.class public Lcom/alensw/b/h/n;
.super Lcom/alensw/b/h/j;


# static fields
.field public static final a:Z

.field public static final j:Z

.field private static w:I

.field private static x:Lcom/alensw/b/i/a;


# instance fields
.field private final k:Landroid/graphics/BitmapRegionDecoder;

.field private l:Lcom/alensw/b/h/p;

.field private m:Landroid/view/View;

.field private final n:Lcom/alensw/b/a/a;

.field private final o:Landroid/graphics/Matrix;

.field private p:Landroid/graphics/Paint;

.field private volatile q:I

.field private r:I

.field private final s:Landroid/graphics/Rect;

.field private final t:Landroid/graphics/RectF;

.field private final u:Landroid/graphics/Matrix;

.field private final v:[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/alensw/b/h/n;->a:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/alensw/b/h/n;->j:Z

    const/16 v0, 0x40

    sput v0, Lcom/alensw/b/h/n;->w:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Landroid/graphics/BitmapRegionDecoder;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v2

    const/4 v3, 0x3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alensw/b/h/j;-><init>(IIILandroid/net/Uri;Ljava/lang/String;)V

    new-instance v0, Lcom/alensw/b/h/o;

    sget v1, Lcom/alensw/b/h/n;->w:I

    invoke-direct {v0, p0, v1}, Lcom/alensw/b/h/o;-><init>(Lcom/alensw/b/h/n;I)V

    iput-object v0, p0, Lcom/alensw/b/h/n;->n:Lcom/alensw/b/a/a;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alensw/b/h/n;->o:Landroid/graphics/Matrix;

    iput v6, p0, Lcom/alensw/b/h/n;->q:I

    iput v6, p0, Lcom/alensw/b/h/n;->r:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/b/h/n;->s:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alensw/b/h/n;->t:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alensw/b/h/n;->u:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alensw/b/h/n;->v:[F

    iput-object p1, p0, Lcom/alensw/b/h/n;->k:Landroid/graphics/BitmapRegionDecoder;

    return-void
.end method

.method public static a(FF)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    add-int/lit8 v2, v0, 0x1

    shl-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/alensw/b/h/n;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/h/n;->s:Landroid/graphics/Rect;

    return-object v0
.end method

.method public static a(Lcom/alensw/b/c/f;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;)Lcom/alensw/b/h/n;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alensw/b/c/f;->b()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/alensw/b/c/f;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_1
    if-nez v1, :cond_1

    :goto_2
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "TilePicture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load fd decoder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alensw/b/c/f;->g()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "TilePicture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load fn decoder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/alensw/b/c/f;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, v2

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/alensw/b/h/n;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/alensw/b/h/n;-><init>(Landroid/graphics/BitmapRegionDecoder;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_2
.end method

.method private a(II)Lcom/alensw/b/h/q;
    .locals 6

    invoke-static {p1}, Lcom/alensw/b/h/m;->c(I)I

    move-result v2

    invoke-static {p1}, Lcom/alensw/b/h/m;->d(I)I

    move-result v3

    invoke-static {p1}, Lcom/alensw/b/h/m;->a(I)I

    move-result v0

    move v1, v0

    :goto_0
    if-gt v1, p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/alensw/b/h/n;->a(I)Lcom/alensw/b/h/q;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    sget v1, Lcom/alensw/b/h/m;->a:I

    add-int/2addr v1, v0

    shr-int v4, v2, v1

    shl-int/2addr v4, v1

    shr-int v5, v3, v1

    shl-int v1, v5, v1

    invoke-static {v4, v1, v0}, Lcom/alensw/b/h/m;->a(III)I

    move-result p1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 5

    const/4 v1, 0x1

    const/16 v0, 0x5a0

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    sput v0, Lcom/alensw/b/h/m;->a:I

    :goto_0
    sget v0, Lcom/alensw/b/h/m;->a:I

    shl-int v0, v1, v0

    sput v0, Lcom/alensw/b/h/m;->b:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    sget v2, Lcom/alensw/b/h/m;->b:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    sget v2, Lcom/alensw/b/h/m;->b:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sget v2, Lcom/alensw/b/h/b;->d:I

    sget v3, Lcom/alensw/b/h/m;->b:I

    sget v4, Lcom/alensw/b/h/m;->b:I

    mul-int/2addr v3, v4

    div-int/2addr v2, v3

    sub-int/2addr v2, v0

    sput v2, Lcom/alensw/b/h/n;->w:I

    new-instance v2, Lcom/alensw/b/i/a;

    sget-boolean v3, Lcom/alensw/b/h/n;->j:Z

    if-eqz v3, :cond_2

    :goto_1
    sget v1, Lcom/alensw/b/h/m;->b:I

    sget v3, Lcom/alensw/b/h/m;->b:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/alensw/b/i/a;-><init>(IIILandroid/graphics/Bitmap$Config;)V

    sput-object v2, Lcom/alensw/b/h/n;->x:Lcom/alensw/b/i/a;

    return-void

    :cond_0
    const/16 v0, 0x1e0

    if-lt p1, v0, :cond_1

    const/16 v0, 0x8

    sput v0, Lcom/alensw/b/h/m;->a:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    sput v0, Lcom/alensw/b/h/m;->a:I

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private a(ILandroid/graphics/Rect;Lcom/alensw/b/h/a;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    invoke-static {p1}, Lcom/alensw/b/h/m;->b(I)I

    move-result v0

    iput v0, p3, Lcom/alensw/b/h/a;->inSampleSize:I

    invoke-virtual {p0, p2, p3}, Lcom/alensw/b/h/n;->a(Landroid/graphics/Rect;Lcom/alensw/b/h/a;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    iget-boolean v0, p3, Lcom/alensw/b/h/a;->mCancel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p3}, Lcom/alensw/b/h/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TilePicture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decoder tile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/alensw/b/h/m;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v1, :cond_2

    new-instance v0, Lcom/alensw/b/h/q;

    invoke-direct {v0, p0, p1, v1}, Lcom/alensw/b/h/q;-><init>(Lcom/alensw/b/h/n;ILandroid/graphics/Bitmap;)V

    :goto_1
    iget-object v1, p0, Lcom/alensw/b/h/n;->n:Lcom/alensw/b/a/a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/alensw/b/a/a;->a(Ljava/lang/Object;Lcom/alensw/b/a/c;)Lcom/alensw/b/a/c;

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alensw/b/h/q;

    sget v1, Lcom/alensw/b/h/m;->b:I

    sget v2, Lcom/alensw/b/h/m;->b:I

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/alensw/b/h/q;-><init>(Lcom/alensw/b/h/n;III)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alensw/b/h/n;ILandroid/graphics/Rect;Lcom/alensw/b/h/a;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/b/h/n;->a(ILandroid/graphics/Rect;Lcom/alensw/b/h/a;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/alensw/b/h/n;)I
    .locals 1

    iget v0, p0, Lcom/alensw/b/h/n;->q:I

    return v0
.end method

.method private b(Landroid/graphics/Rect;Lcom/alensw/b/h/a;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p2, Lcom/alensw/b/h/a;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v1, p0, Lcom/alensw/b/h/n;->k:Landroid/graphics/BitmapRegionDecoder;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/alensw/b/h/n;->k:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/h/n;->k:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "TilePicture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode region: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", scale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/alensw/b/h/a;->inSampleSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static b(Landroid/graphics/Bitmap;)V
    .locals 1

    sget-boolean v0, Lcom/alensw/b/h/n;->j:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alensw/b/h/n;->x:Lcom/alensw/b/i/a;

    invoke-virtual {v0, p0}, Lcom/alensw/b/i/a;->b(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method private c(Landroid/graphics/Rect;Lcom/alensw/b/h/a;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/alensw/b/h/n;->o()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v0, "TilePicture"

    const-string v1, "create bitmap out of memory"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/alensw/b/h/n;->b:Lcom/alensw/b/h/i;

    iget v5, v5, Lcom/alensw/b/h/i;->a:I

    if-le v4, v5, :cond_2

    iget-object v0, p0, Lcom/alensw/b/h/n;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->a:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    move v0, v1

    :cond_2
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/alensw/b/h/n;->b:Lcom/alensw/b/h/i;

    iget v5, v5, Lcom/alensw/b/h/i;->b:I

    if-le v4, v5, :cond_4

    iget-object v0, p0, Lcom/alensw/b/h/n;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->b:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :goto_1
    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    iput-object v3, p2, Lcom/alensw/b/h/a;->inBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p2}, Lcom/alensw/b/h/n;->b(Landroid/graphics/Rect;Lcom/alensw/b/h/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v2, p2, Lcom/alensw/b/h/a;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v3, :cond_0

    invoke-static {v3}, Lcom/alensw/b/h/n;->b(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alensw/b/h/b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "TilePicture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decoder create bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method static synthetic c(Lcom/alensw/b/h/n;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/h/n;->m:Landroid/view/View;

    return-object v0
.end method

.method private d(Landroid/graphics/Rect;Lcom/alensw/b/h/a;)Landroid/graphics/Bitmap;
    .locals 2

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/alensw/b/h/n;->b:Lcom/alensw/b/h/i;

    iget v1, v1, Lcom/alensw/b/h/i;->a:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/b/h/n;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->a:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/alensw/b/h/n;->b:Lcom/alensw/b/h/i;

    iget v1, v1, Lcom/alensw/b/h/i;->b:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/b/h/n;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->b:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alensw/b/h/n;->b(Landroid/graphics/Rect;Lcom/alensw/b/h/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/alensw/b/h/b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static o()Landroid/graphics/Bitmap;
    .locals 4

    sget-object v0, Lcom/alensw/b/h/n;->x:Lcom/alensw/b/i/a;

    sget v1, Lcom/alensw/b/h/m;->b:I

    sget v2, Lcom/alensw/b/h/m;->b:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alensw/b/i/a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;Lcom/alensw/b/h/a;)Landroid/graphics/Bitmap;
    .locals 1

    sget-boolean v0, Lcom/alensw/b/h/n;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/alensw/b/h/n;->c(Landroid/graphics/Rect;Lcom/alensw/b/h/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alensw/b/h/n;->d(Landroid/graphics/Rect;Lcom/alensw/b/h/a;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)Lcom/alensw/b/h/q;
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/h/n;->n:Lcom/alensw/b/a/a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/b/a/a;->b(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/h/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alensw/b/h/q;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/h/q;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a()V
    .locals 2

    invoke-super {p0}, Lcom/alensw/b/h/j;->a()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alensw/b/h/n;->a(Z)V

    iget-object v1, p0, Lcom/alensw/b/h/n;->k:Landroid/graphics/BitmapRegionDecoder;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/h/n;->k:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(IILandroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/b/h/n;->t:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v0, p4}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alensw/b/h/n;->s:Landroid/graphics/Rect;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/h/n;->s:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/alensw/b/h/n;->v:[F

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->getValues([F)V

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/alensw/b/h/n;->v:[F

    invoke-static {v2}, Lcom/alensw/b/h/j;->a([F)F

    move-result v2

    div-float/2addr v1, v2

    const v2, 0x3f59999a    # 0.85f

    invoke-static {v1, v2}, Lcom/alensw/b/h/n;->a(FF)I

    move-result v1

    iget v2, p0, Lcom/alensw/b/h/n;->r:I

    if-ge v2, v1, :cond_1

    iput v1, p0, Lcom/alensw/b/h/n;->r:I

    :cond_1
    iget-object v2, p0, Lcom/alensw/b/h/n;->u:Landroid/graphics/Matrix;

    invoke-virtual {p3, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v2, p0, Lcom/alensw/b/h/n;->u:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    sget v2, Lcom/alensw/b/h/m;->a:I

    add-int/2addr v2, v1

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    shr-int/2addr v3, v2

    shl-int/2addr v3, v2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    shr-int/2addr v4, v2

    shl-int v2, v4, v2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/alensw/b/h/n;->b:Lcom/alensw/b/h/i;

    iget v5, v5, Lcom/alensw/b/h/i;->a:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    iget-object v5, p0, Lcom/alensw/b/h/n;->b:Lcom/alensw/b/h/i;

    iget v5, v5, Lcom/alensw/b/h/i;->b:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v5, p0, Lcom/alensw/b/h/n;->s:Landroid/graphics/Rect;

    monitor-enter v5

    :try_start_1
    iput v1, p0, Lcom/alensw/b/h/n;->q:I

    iget-object v1, p0, Lcom/alensw/b/h/n;->s:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/alensw/b/h/n;->s:Landroid/graphics/Rect;

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/alensw/b/h/n;->s:Landroid/graphics/Rect;

    iput v4, v1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/alensw/b/h/n;->s:Landroid/graphics/Rect;

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/alensw/b/h/j;Landroid/graphics/Matrix;Landroid/graphics/Paint;Z)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alensw/b/h/n;->p:Landroid/graphics/Paint;

    if-eqz p3, :cond_3

    move-object/from16 v0, p3

    iget-object v4, v0, Lcom/alensw/b/h/j;->b:Lcom/alensw/b/h/i;

    iget v4, v4, Lcom/alensw/b/h/i;->c:I

    :goto_0
    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    if-eqz v9, :cond_4

    const/4 v4, 0x1

    move v15, v4

    :goto_1
    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/alensw/b/h/j;->j()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v15, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/alensw/b/h/j;->i()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->save(I)I

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/alensw/b/h/j;->e()I

    move-result v4

    int-to-float v7, v4

    invoke-virtual/range {p3 .. p3}, Lcom/alensw/b/h/j;->f()I

    move-result v4

    int-to-float v8, v4

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/alensw/b/h/j;->d()Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alensw/b/h/n;->q:I

    move/from16 v16, v0

    add-int/lit8 v4, v16, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/alensw/b/h/n;->r:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    sget v4, Lcom/alensw/b/h/m;->b:I

    shl-int v18, v4, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alensw/b/h/n;->l:Lcom/alensw/b/h/p;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alensw/b/h/n;->o:Landroid/graphics/Matrix;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/b/h/n;->s:Landroid/graphics/Rect;

    iget v13, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/b/h/n;->s:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/b/h/n;->s:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/b/h/n;->s:Landroid/graphics/Rect;

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    if-nez p6, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/b/h/n;->m:Landroid/view/View;

    if-eqz v4, :cond_7

    sub-int v4, v21, v13

    sub-int v6, v22, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget v6, Lcom/alensw/b/h/m;->a:I

    add-int v6, v6, v16

    shr-int/2addr v4, v6

    :goto_2
    move v14, v5

    move v10, v4

    :goto_3
    move/from16 v0, v22

    if-ge v14, v0, :cond_6

    move v12, v13

    :goto_4
    move/from16 v0, v21

    if-ge v12, v0, :cond_a

    move/from16 v0, v16

    invoke-static {v12, v14, v0}, Lcom/alensw/b/h/m;->a(III)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/alensw/b/h/n;->a(II)Lcom/alensw/b/h/q;

    move-result-object v24

    if-eqz v24, :cond_8

    move-object/from16 v0, v24

    iget v4, v0, Lcom/alensw/b/h/q;->c:I

    move v11, v4

    :goto_5
    if-eqz v24, :cond_2

    invoke-virtual/range {v24 .. v24}, Lcom/alensw/b/h/q;->d()Landroid/graphics/Bitmap;

    move-result-object v25

    if-eqz v25, :cond_1

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v11}, Lcom/alensw/b/h/m;->b(I)I

    move-result v4

    invoke-static {v11}, Lcom/alensw/b/h/m;->c(I)I

    move-result v7

    invoke-static {v11}, Lcom/alensw/b/h/m;->d(I)I

    move-result v8

    int-to-float v5, v4

    int-to-float v4, v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float v4, v7

    int-to-float v5, v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    if-eqz v15, :cond_9

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lcom/alensw/b/h/q;->a:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->save(I)I

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    sub-int v4, v21, v7

    sget v7, Lcom/alensw/b/h/m;->b:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v7, v4

    sub-int v4, v22, v8

    sget v8, Lcom/alensw/b/h/m;->b:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v8, v4

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_6
    invoke-virtual/range {v24 .. v24}, Lcom/alensw/b/h/q;->m()I

    :cond_2
    if-lez v10, :cond_b

    move/from16 v0, v23

    if-eq v11, v0, :cond_b

    if-eqz v19, :cond_b

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alensw/b/h/p;->a(I)Z

    move-result v4

    if-eqz v4, :cond_b

    add-int/lit8 v4, v10, -0x1

    :goto_7
    add-int v5, v12, v18

    move v12, v5

    move v10, v4

    goto/16 :goto_4

    :cond_3
    const/4 v4, 0x3

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x0

    move v15, v4

    goto/16 :goto_1

    :cond_5
    const-string v4, "TilePicture"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "draw without preview: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alensw/b/h/n;->i:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_8
    const/4 v4, -0x1

    move v11, v4

    goto/16 :goto_5

    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_a
    add-int v4, v14, v18

    move v14, v4

    goto/16 :goto_3

    :cond_b
    move v4, v10

    goto :goto_7
.end method

.method public a(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/alensw/b/h/n;->s:Landroid/graphics/Rect;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/h/n;->s:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lcom/alensw/b/h/n;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/alensw/b/h/n;->l:Lcom/alensw/b/h/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/h/n;->l:Lcom/alensw/b/h/p;

    invoke-virtual {v0}, Lcom/alensw/b/h/p;->a()V

    iput-object v2, p0, Lcom/alensw/b/h/n;->l:Lcom/alensw/b/h/p;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alensw/b/h/n;->n:Lcom/alensw/b/a/a;

    invoke-virtual {v0}, Lcom/alensw/b/a/a;->c()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)Z
    .locals 2

    iput-object p1, p0, Lcom/alensw/b/h/n;->m:Landroid/view/View;

    iput-object p2, p0, Lcom/alensw/b/h/n;->p:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/alensw/b/h/n;->l:Lcom/alensw/b/h/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/h/n;->l:Lcom/alensw/b/h/p;

    invoke-virtual {v0}, Lcom/alensw/b/h/p;->a()V

    :cond_0
    new-instance v0, Lcom/alensw/b/h/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alensw/b/h/p;-><init>(Lcom/alensw/b/h/n;Lcom/alensw/b/h/o;)V

    iput-object v0, p0, Lcom/alensw/b/h/n;->l:Lcom/alensw/b/h/p;

    sget-object v0, Lcom/alensw/b/h/n;->c:Lcom/alensw/b/k/a;

    iget-object v1, p0, Lcom/alensw/b/h/n;->l:Lcom/alensw/b/h/p;

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/k;)Lcom/alensw/b/k/d;

    const/4 v0, 0x1

    return v0
.end method
