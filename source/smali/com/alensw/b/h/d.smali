.class public Lcom/alensw/b/h/d;
.super Lcom/alensw/b/h/j;


# static fields
.field public static final a:Z


# instance fields
.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:[I

.field private q:[I

.field private r:Landroid/os/Handler;

.field private s:Lcom/alensw/b/h/g;

.field private t:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alensw/b/h/d;->a:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILandroid/net/Uri;Landroid/os/Handler;II[I)V
    .locals 6

    const/4 v3, 0x4

    const-string v5, "image/gif"

    move-object v0, p0

    move v1, p4

    move v2, p5

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/alensw/b/h/j;-><init>(IIILandroid/net/Uri;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alensw/b/h/d;->n:I

    invoke-static {p1}, Lcom/alensw/jni/JniUtils;->gifGetImageWidth(I)I

    move-result v0

    div-int/2addr v0, p4

    iput v0, p0, Lcom/alensw/b/h/d;->o:I

    iput-object p6, p0, Lcom/alensw/b/h/d;->p:[I

    invoke-direct {p0, p1, p3}, Lcom/alensw/b/h/d;->a(ILandroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(ILandroid/net/Uri;Landroid/os/Handler;Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p4, v0}, Lcom/alensw/b/h/j;-><init>(Landroid/graphics/Bitmap;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alensw/b/h/d;->n:I

    const-string v0, "image/gif"

    iput-object v0, p0, Lcom/alensw/b/h/j;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/alensw/b/h/j;->i:Landroid/net/Uri;

    invoke-direct {p0, p1, p3}, Lcom/alensw/b/h/d;->a(ILandroid/os/Handler;)V

    return-void
.end method

.method private a(III)I
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/alensw/b/h/d;->j:I

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget v1, p0, Lcom/alensw/b/h/d;->j:I

    if-ne p3, v1, :cond_0

    iget v0, p0, Lcom/alensw/b/h/d;->j:I

    invoke-static {v0, p1, p2}, Lcom/alensw/jni/JniUtils;->gifDecodeFrame(III)I

    move-result v0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/alensw/b/h/d;I)I
    .locals 0

    iput p1, p0, Lcom/alensw/b/h/d;->n:I

    return p1
.end method

.method static synthetic a(Lcom/alensw/b/h/d;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/h/d;->t:Landroid/view/View;

    return-object v0
.end method

.method public static a(Lcom/alensw/b/c/f;Landroid/net/Uri;Landroid/os/Handler;)Lcom/alensw/b/h/d;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alensw/b/c/f;->c()I

    move-result v0

    sget-boolean v2, Lcom/alensw/b/h/d;->a:Z

    invoke-static {v0, v2}, Lcom/alensw/jni/JniUtils;->gifOpenFD(IZ)I

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "load error"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "GifMovie"

    const-string v3, "load GIF: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/alensw/jni/JniUtils;->gifClose(I)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/alensw/jni/JniUtils;->gifGetFrameCount(I)I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "not animated"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lcom/alensw/jni/JniUtils;->gifGetImageWidth(I)I

    move-result v4

    invoke-static {v1}, Lcom/alensw/jni/JniUtils;->gifGetImageHeight(I)I

    move-result v5

    mul-int v0, v4, v5

    :goto_1
    if-lez v4, :cond_5

    if-lez v5, :cond_5

    sget v2, Lcom/alensw/b/h/b;->d:I

    if-gt v0, v2, :cond_4

    sget-boolean v2, Lcom/alensw/b/h/d;->a:Z

    if-eqz v2, :cond_3

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v2}, Lcom/alensw/b/h/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/alensw/b/h/d;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/alensw/b/h/d;-><init>(ILandroid/net/Uri;Landroid/os/Handler;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/alensw/b/h/d;->a(I)[I

    move-result-object v6

    if-eqz v6, :cond_4

    new-instance v0, Lcom/alensw/b/h/d;

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/alensw/b/h/d;-><init>(ILandroid/net/Uri;Landroid/os/Handler;II[I)V

    goto :goto_0

    :cond_4
    shr-int/lit8 v4, v4, 0x1

    shr-int/lit8 v5, v5, 0x1

    shr-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "out of memory"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private a(ILandroid/os/Handler;)V
    .locals 5

    const/4 v4, 0x2

    invoke-static {p1}, Lcom/alensw/jni/JniUtils;->gifGetDuration(I)I

    move-result v0

    iput v0, p0, Lcom/alensw/b/h/d;->l:I

    invoke-static {p1}, Lcom/alensw/jni/JniUtils;->gifGetFrameCount(I)I

    move-result v0

    iput v0, p0, Lcom/alensw/b/h/d;->m:I

    invoke-static {p1}, Lcom/alensw/jni/JniUtils;->gifGetImageWidth(I)I

    move-result v0

    invoke-static {p1}, Lcom/alensw/jni/JniUtils;->gifGetImageHeight(I)I

    move-result v1

    mul-int/2addr v1, v0

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/alensw/b/h/d;->q:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    invoke-static {v1}, Lcom/alensw/jni/JniUtils;->gifAllocBuffer(I)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/alensw/b/h/d;->q:[I

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "alloc buffer failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/alensw/b/h/d;->j:I

    iput-object p2, p0, Lcom/alensw/b/h/d;->r:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alensw/b/h/d;III)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/b/h/d;->b(III)Z

    move-result v0

    return v0
.end method

.method private static a(I)[I
    .locals 1

    :try_start_0
    new-array v0, p0, [I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alensw/b/h/d;I)I
    .locals 0

    iput p1, p0, Lcom/alensw/b/h/d;->k:I

    return p1
.end method

.method static synthetic b(Lcom/alensw/b/h/d;III)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/alensw/b/h/d;->a(III)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/alensw/b/h/d;)Lcom/alensw/b/h/g;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/h/d;->s:Lcom/alensw/b/h/g;

    return-object v0
.end method

.method private b(III)Z
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/alensw/b/h/d;->a:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/alensw/b/h/d;->j:I

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget v1, p0, Lcom/alensw/b/h/d;->j:I

    if-ne p3, v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/b/h/d;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alensw/b/h/d;->j:I

    invoke-virtual {p0}, Lcom/alensw/b/h/d;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, p1, p2, v2}, Lcom/alensw/jni/JniUtils;->gifDrawFrame(IIILandroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :cond_1
    :try_start_2
    iget v1, p0, Lcom/alensw/b/h/d;->j:I

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget v1, p0, Lcom/alensw/b/h/d;->j:I

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Lcom/alensw/b/h/d;->p:[I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/alensw/b/h/d;->j:I

    iget-object v2, p0, Lcom/alensw/b/h/d;->p:[I

    iget v3, p0, Lcom/alensw/b/h/d;->o:I

    invoke-static {v1, p1, p2, v2, v3}, Lcom/alensw/jni/JniUtils;->gifDrawFrame2(III[II)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "GifMovie"

    const-string v3, "draw frame: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/alensw/b/h/d;)I
    .locals 1

    iget v0, p0, Lcom/alensw/b/h/d;->k:I

    return v0
.end method

.method static synthetic d(Lcom/alensw/b/h/d;)I
    .locals 1

    iget v0, p0, Lcom/alensw/b/h/d;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alensw/b/h/d;->k:I

    return v0
.end method

.method static synthetic e(Lcom/alensw/b/h/d;)I
    .locals 1

    iget v0, p0, Lcom/alensw/b/h/d;->m:I

    return v0
.end method

.method static synthetic f(Lcom/alensw/b/h/d;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/h/d;->r:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/alensw/b/h/j;->a()V

    invoke-virtual {p0, v1}, Lcom/alensw/b/h/d;->a(Z)V

    monitor-enter p0

    move v0, v1

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/alensw/b/h/d;->q:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alensw/b/h/d;->q:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/alensw/jni/JniUtils;->gifFreeBuffer(I)V

    iget-object v2, p0, Lcom/alensw/b/h/d;->q:[I

    const/4 v3, 0x0

    aput v3, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/alensw/b/h/d;->j:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alensw/b/h/d;->j:I

    invoke-static {v0}, Lcom/alensw/jni/JniUtils;->gifClose(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/b/h/d;->j:I

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v1, p0, Lcom/alensw/b/h/d;->m:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/alensw/b/h/d;->n:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/b/h/d;->p:[I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/alensw/b/h/j;Landroid/graphics/Matrix;Landroid/graphics/Paint;Z)V
    .locals 10

    iget v0, p0, Lcom/alensw/b/h/d;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    sget-boolean v0, Lcom/alensw/b/h/d;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alensw/b/h/d;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alensw/b/h/d;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/b/h/d;->p:[I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/alensw/b/h/d;->p:[I

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alensw/b/h/d;->b:Lcom/alensw/b/h/i;

    iget v3, v0, Lcom/alensw/b/h/i;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alensw/b/h/d;->b:Lcom/alensw/b/h/i;

    iget v6, v0, Lcom/alensw/b/h/i;->a:I

    iget-object v0, p0, Lcom/alensw/b/h/d;->b:Lcom/alensw/b/h/i;

    iget v7, v0, Lcom/alensw/b/h/i;->b:I

    const/4 v8, 0x0

    move-object v0, p1

    move-object v9, p5

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GifMovie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "draw: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/alensw/b/h/j;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/alensw/b/h/j;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alensw/b/h/d;->t:Landroid/view/View;

    iget-object v0, p0, Lcom/alensw/b/h/d;->s:Lcom/alensw/b/h/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/h/d;->s:Lcom/alensw/b/h/g;

    invoke-virtual {v0}, Lcom/alensw/b/h/g;->a()V

    iput-object v1, p0, Lcom/alensw/b/h/d;->s:Lcom/alensw/b/h/g;

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Paint;)Z
    .locals 7

    const/4 v0, 0x0

    iget v1, p0, Lcom/alensw/b/h/d;->j:I

    if-eqz v1, :cond_2

    iput-object p1, p0, Lcom/alensw/b/h/d;->t:Landroid/view/View;

    iget v1, p0, Lcom/alensw/b/h/d;->j:I

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    invoke-static {v1, v2}, Lcom/alensw/jni/JniUtils;->gifSetBkColor(II)V

    iget-object v1, p0, Lcom/alensw/b/h/d;->s:Lcom/alensw/b/h/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/b/h/d;->s:Lcom/alensw/b/h/g;

    invoke-virtual {v1}, Lcom/alensw/b/h/g;->a()V

    :cond_0
    new-instance v1, Lcom/alensw/b/h/g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alensw/b/h/g;-><init>(Lcom/alensw/b/h/d;Lcom/alensw/b/h/e;)V

    iput-object v1, p0, Lcom/alensw/b/h/d;->s:Lcom/alensw/b/h/g;

    sget-object v1, Lcom/alensw/b/h/d;->c:Lcom/alensw/b/k/a;

    iget-object v2, p0, Lcom/alensw/b/h/d;->s:Lcom/alensw/b/h/g;

    invoke-virtual {v1, v2}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/k;)Lcom/alensw/b/k/d;

    iget-object v1, p0, Lcom/alensw/b/h/d;->q:[I

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, v1, v0

    iget-object v4, p0, Lcom/alensw/b/h/d;->s:Lcom/alensw/b/h/g;

    new-instance v5, Lcom/alensw/b/h/f;

    iget v6, p0, Lcom/alensw/b/h/d;->j:I

    invoke-direct {v5, p0, v3, v6}, Lcom/alensw/b/h/f;-><init>(Lcom/alensw/b/h/d;II)V

    invoke-virtual {v4, v5}, Lcom/alensw/b/h/g;->a(Lcom/alensw/b/h/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public b()J
    .locals 2

    iget v0, p0, Lcom/alensw/b/h/d;->l:I

    int-to-long v0, v0

    return-wide v0
.end method
