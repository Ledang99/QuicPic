.class public Lcom/alensw/a/ao;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field protected b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private final h:Landroid/content/Context;

.field private final i:Landroid/content/ContentResolver;

.field private final j:Lcom/alensw/b/a/f;

.field private final k:Lcom/alensw/b/k/a;

.field private final l:Lcom/alensw/b/k/a;

.field private final m:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private final n:Lcom/alensw/b/a/a;

.field private final o:Lcom/alensw/b/a/a;

.field private p:Lcom/alensw/b/h/j;

.field private final q:Ljava/lang/Object;

.field private r:Landroid/graphics/Bitmap;

.field private final s:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/16 v1, 0x1e0

    const/16 v0, 0x140

    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Lcom/alensw/a/ao;->a:Z

    new-instance v2, Lcom/alensw/b/k/a;

    const/4 v3, 0x4

    const/4 v4, 0x5

    invoke-direct {v2, v6, v3, v7, v4}, Lcom/alensw/b/k/a;-><init>(IIII)V

    iput-object v2, p0, Lcom/alensw/a/ao;->k:Lcom/alensw/b/k/a;

    new-instance v2, Lcom/alensw/b/k/a;

    const/4 v3, 0x7

    invoke-direct {v2, v5, v5, v7, v3}, Lcom/alensw/b/k/a;-><init>(IIII)V

    iput-object v2, p0, Lcom/alensw/a/ao;->l:Lcom/alensw/b/k/a;

    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v2, p0, Lcom/alensw/a/ao;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v2, Lcom/alensw/b/a/a;

    invoke-direct {v2, v6}, Lcom/alensw/b/a/a;-><init>(I)V

    iput-object v2, p0, Lcom/alensw/a/ao;->n:Lcom/alensw/b/a/a;

    new-instance v2, Lcom/alensw/a/ap;

    invoke-direct {v2, p0, v6}, Lcom/alensw/a/ap;-><init>(Lcom/alensw/a/ao;I)V

    iput-object v2, p0, Lcom/alensw/a/ao;->o:Lcom/alensw/b/a/a;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/alensw/a/ao;->q:Ljava/lang/Object;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v2, p0, Lcom/alensw/a/ao;->s:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/alensw/a/ao;->h:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/alensw/a/ao;->i:Landroid/content/ContentResolver;

    new-instance v2, Lcom/alensw/b/a/f;

    invoke-direct {v2}, Lcom/alensw/b/a/f;-><init>()V

    iput-object v2, p0, Lcom/alensw/a/ao;->j:Lcom/alensw/b/a/f;

    iget-object v2, p0, Lcom/alensw/a/ao;->j:Lcom/alensw/b/a/f;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/alensw/b/a/f;->a(J)V

    sget v2, Lcom/alensw/PicFolder/QuickApp;->f:I

    sget v3, Lcom/alensw/PicFolder/QuickApp;->g:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/alensw/a/ao;->b:I

    sget v2, Lcom/alensw/PicFolder/QuickApp;->f:I

    if-gt v2, v0, :cond_0

    :goto_0
    iput v0, p0, Lcom/alensw/a/ao;->c:I

    iget v0, p0, Lcom/alensw/a/ao;->c:I

    iget v1, p0, Lcom/alensw/a/ao;->c:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/alensw/a/ao;->d:I

    iget v0, p0, Lcom/alensw/a/ao;->d:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/alensw/a/ao;->e:I

    sget v0, Lcom/alensw/PicFolder/QuickApp;->f:I

    sget v1, Lcom/alensw/PicFolder/QuickApp;->g:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alensw/a/ao;->f:I

    iget v0, p0, Lcom/alensw/a/ao;->b:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/alensw/a/ao;->g:I

    return-void

    :cond_0
    if-gt v2, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3c0

    if-gt v2, v0, :cond_2

    const/16 v0, 0x200

    goto :goto_0

    :cond_2
    div-int/lit8 v0, v2, 0x2

    const/16 v1, 0x400

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6

    const/high16 v5, 0x45800000    # 4096.0f

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v0, v1, v2

    if-le v0, p3, :cond_0

    int-to-float v3, p2

    int-to-float v0, v0

    div-float v0, v3, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    cmpl-float v3, v1, v4

    if-gtz v3, :cond_2

    cmpl-float v3, v2, v4

    if-lez v3, :cond_3

    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v0, v1

    :cond_3
    invoke-static {p1, v0}, Lcom/alensw/b/h/b;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;JLcom/alensw/b/h/a;I)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/alensw/a/ao;->j:Lcom/alensw/b/a/f;

    invoke-virtual {v1, v0, p3, p4}, Lcom/alensw/b/a/f;->a(Ljava/lang/String;J)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p5, Lcom/alensw/b/h/a;->mCancel:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p5, p6}, Lcom/alensw/a/ao;->a(Ljava/lang/String;Lcom/alensw/b/h/a;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/alensw/a/ao;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/a/ao;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alensw/a/ao;Landroid/net/Uri;Ljava/lang/String;JLcom/alensw/b/h/a;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/alensw/a/ao;->a(Landroid/net/Uri;Ljava/lang/String;JLcom/alensw/b/h/a;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lcom/alensw/b/h/a;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alensw/b/c/f;->a(Ljava/io/File;Z)Lcom/alensw/b/c/f;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alensw/b/h/a;->b()V

    invoke-virtual {v2}, Lcom/alensw/b/c/f;->b()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v2}, Lcom/alensw/b/c/f;->h()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz v1, :cond_0

    if-lez p2, :cond_0

    iget v2, p1, Lcom/alensw/b/h/a;->outWidth:I

    iget v3, p1, Lcom/alensw/b/h/a;->outHeight:I

    mul-int/2addr v2, v3

    if-ge v2, p2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_2
    const-string v3, "PictureLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load thumbnail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v1, v0

    goto :goto_0

    :catch_3
    move-exception v2

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/alensw/a/ao;)Lcom/alensw/b/a/f;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/ao;->j:Lcom/alensw/b/a/f;

    return-object v0
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;J)V
    .locals 9

    new-instance v4, Lcom/alensw/a/au;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/alensw/a/au;-><init>(Lcom/alensw/a/ao;Lcom/alensw/a/ap;)V

    iget-object v0, p0, Lcom/alensw/a/ao;->s:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "PictureLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saving thumbnail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/alensw/a/ar;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/alensw/a/ar;-><init>(Lcom/alensw/a/ao;Landroid/net/Uri;Lcom/alensw/a/au;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/alensw/a/ao;->l:Lcom/alensw/b/k/a;

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/k;)Lcom/alensw/b/k/d;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alensw/a/ao;Landroid/net/Uri;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alensw/a/ao;->a(Landroid/net/Uri;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/alensw/a/ao;Landroid/net/Uri;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/alensw/a/ao;->d(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static a(Lcom/alensw/b/h/k;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/alensw/b/h/n;->a:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p0, :cond_0

    iget v2, p0, Lcom/alensw/b/h/k;->a:I

    iget v3, p0, Lcom/alensw/b/h/k;->b:I

    mul-int/2addr v2, v3

    const-string v3, "image/jpeg"

    iget-object v4, p0, Lcom/alensw/b/h/k;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/alensw/b/h/k;->i:Z

    if-eqz v3, :cond_2

    const v3, 0x12c000

    if-le v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    const-string v3, "image/png"

    iget-object v4, p0, Lcom/alensw/b/h/k;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x3e8000

    if-le v2, v3, :cond_4

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method static synthetic a(Ljava/lang/String;Lcom/alensw/b/h/j;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/alensw/a/ao;->b(Ljava/lang/String;Lcom/alensw/b/h/j;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/alensw/a/ao;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/ao;->s:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static b(Ljava/lang/String;Lcom/alensw/b/h/j;)Z
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1}, Lcom/alensw/b/h/j;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image/png"

    iget-object v4, p1, Lcom/alensw/b/h/j;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Lcom/alensw/b/h/j;->d()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_1
    const/16 v5, 0x50

    invoke-virtual {v4, v0, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    :goto_3
    const-string v2, "PictureLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save thumbnail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method static synthetic c(Lcom/alensw/a/ao;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/ao;->i:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic d(Lcom/alensw/a/ao;)I
    .locals 1

    iget v0, p0, Lcom/alensw/a/ao;->c:I

    return v0
.end method

.method private d(Landroid/net/Uri;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/ao;->s:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/au;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/alensw/a/au;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/alensw/a/ao;)Lcom/alensw/b/a/a;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/ao;->n:Lcom/alensw/b/a/a;

    return-object v0
.end method

.method private declared-synchronized e()Z
    .locals 5

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alensw/a/ao;->j:Lcom/alensw/b/a/f;

    invoke-virtual {v1}, Lcom/alensw/b/a/f;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alensw/a/ao;->j:Lcom/alensw/b/a/f;

    iget-object v1, p0, Lcom/alensw/a/ao;->h:Landroid/content/Context;

    iget-object v2, p0, Lcom/alensw/a/ao;->h:Landroid/content/Context;

    const-string v3, "preview"

    invoke-static {v2, v3}, Lcom/alensw/b/c/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, "preview"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alensw/b/a/f;->a(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/alensw/a/ao;)Lcom/alensw/b/a/a;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/ao;->o:Lcom/alensw/b/a/a;

    return-object v0
.end method

.method private f()V
    .locals 4

    iget-object v1, p0, Lcom/alensw/a/ao;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/a/ao;->r:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alensw/a/ao;->b:I

    div-int/lit8 v0, v0, 0x10

    const/16 v2, 0x20

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Lcom/alensw/b/h/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/a/ao;->r:Landroid/graphics/Bitmap;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private g()V
    .locals 2

    iget-object v1, p0, Lcom/alensw/a/ao;->q:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/a/ao;->r:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/ao;->r:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/a/ao;->r:Landroid/graphics/Bitmap;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic g(Lcom/alensw/a/ao;)Z
    .locals 1

    invoke-direct {p0}, Lcom/alensw/a/ao;->e()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/alensw/a/ao;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/a/ao;->g()V

    return-void
.end method

.method static synthetic i(Lcom/alensw/a/ao;)I
    .locals 1

    iget v0, p0, Lcom/alensw/a/ao;->d:I

    return v0
.end method

.method static synthetic j(Lcom/alensw/a/ao;)I
    .locals 1

    iget v0, p0, Lcom/alensw/a/ao;->e:I

    return v0
.end method

.method static synthetic k(Lcom/alensw/a/ao;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/a/ao;->f()V

    return-void
.end method

.method static synthetic l(Lcom/alensw/a/ao;)I
    .locals 1

    iget v0, p0, Lcom/alensw/a/ao;->f:I

    return v0
.end method

.method static synthetic m(Lcom/alensw/a/ao;)I
    .locals 1

    iget v0, p0, Lcom/alensw/a/ao;->g:I

    return v0
.end method

.method static synthetic n(Lcom/alensw/a/ao;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/ao;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;CILandroid/os/Handler;)Lcom/alensw/a/as;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/alensw/bean/UriFile;->a(CLandroid/net/Uri;Ljava/lang/String;)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/alensw/a/ao;->a(Lcom/alensw/bean/CommonFile;ILandroid/os/Handler;)Lcom/alensw/a/as;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/alensw/bean/CommonFile;ILandroid/os/Handler;)Lcom/alensw/a/as;
    .locals 2

    new-instance v0, Lcom/alensw/a/at;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alensw/a/at;-><init>(Lcom/alensw/a/ao;Lcom/alensw/bean/CommonFile;ILandroid/os/Handler;)V

    new-instance v1, Lcom/alensw/a/as;

    invoke-direct {v1, p0, v0}, Lcom/alensw/a/as;-><init>(Lcom/alensw/a/ao;Lcom/alensw/a/at;)V

    iget-object v0, p0, Lcom/alensw/a/ao;->k:Lcom/alensw/b/k/a;

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/d;)Lcom/alensw/b/k/d;

    return-object v1
.end method

.method public a(Landroid/net/Uri;)Lcom/alensw/b/h/j;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/ao;->o:Lcom/alensw/b/a/a;

    invoke-virtual {v0, p1}, Lcom/alensw/b/a/a;->b(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/h/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->c()Lcom/alensw/b/h/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/ao;->j:Lcom/alensw/b/a/f;

    invoke-virtual {v0}, Lcom/alensw/b/a/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/ao;->l:Lcom/alensw/b/k/a;

    new-instance v1, Lcom/alensw/a/aq;

    invoke-direct {v1, p0}, Lcom/alensw/a/aq;-><init>(Lcom/alensw/a/ao;)V

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/a;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public a(Landroid/net/Uri;Z)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/ao;->o:Lcom/alensw/b/a/a;

    invoke-virtual {v0, p1}, Lcom/alensw/b/a/a;->c(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    iget-object v0, p0, Lcom/alensw/a/ao;->n:Lcom/alensw/b/a/a;

    invoke-virtual {v0, p1}, Lcom/alensw/b/a/a;->c(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/alensw/a/ao;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/ao;->j:Lcom/alensw/b/a/f;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/b/a/f;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/alensw/b/h/j;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/a/ao;->o:Lcom/alensw/b/a/a;

    iget-object v1, p1, Lcom/alensw/b/h/j;->i:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/alensw/b/h/j;->c()Lcom/alensw/b/h/j;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alensw/b/a/a;->a(Ljava/lang/Object;Lcom/alensw/b/a/c;)Lcom/alensw/b/a/c;

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/ao;->k:Lcom/alensw/b/k/a;

    invoke-virtual {v0, p1}, Lcom/alensw/b/k/a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Landroid/net/Uri;)Lcom/alensw/b/h/k;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/ao;->n:Lcom/alensw/b/a/a;

    invoke-virtual {v0, p1}, Lcom/alensw/b/a/a;->b(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/h/k;

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/ao;->o:Lcom/alensw/b/a/a;

    invoke-virtual {v0}, Lcom/alensw/b/a/a;->c()V

    iget-object v0, p0, Lcom/alensw/a/ao;->n:Lcom/alensw/b/a/a;

    invoke-virtual {v0}, Lcom/alensw/b/a/a;->c()V

    return-void
.end method

.method public b(Lcom/alensw/b/h/j;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alensw/b/h/j;->c()Lcom/alensw/b/h/j;

    :cond_0
    iget-object v0, p0, Lcom/alensw/a/ao;->p:Lcom/alensw/b/h/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/a/ao;->p:Lcom/alensw/b/h/j;

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    :cond_1
    iput-object p1, p0, Lcom/alensw/a/ao;->p:Lcom/alensw/b/h/j;

    return-void
.end method

.method public c()V
    .locals 1

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->s:Lcom/alensw/a/ba;

    invoke-virtual {v0}, Lcom/alensw/a/ba;->b()V

    invoke-direct {p0}, Lcom/alensw/a/ao;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/a/ao;->j:Lcom/alensw/b/a/f;

    invoke-virtual {v0}, Lcom/alensw/b/a/f;->e()V

    :cond_0
    return-void
.end method

.method public c(Landroid/net/Uri;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/ao;->o:Lcom/alensw/b/a/a;

    invoke-virtual {v0, p1}, Lcom/alensw/b/a/a;->b(Ljava/lang/Object;)Lcom/alensw/b/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lcom/alensw/b/h/j;
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/ao;->p:Lcom/alensw/b/h/j;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alensw/a/ao;->p:Lcom/alensw/b/h/j;

    return-object v0
.end method
