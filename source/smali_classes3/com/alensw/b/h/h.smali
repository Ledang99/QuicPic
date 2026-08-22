.class public Lcom/alensw/b/h/h;
.super Lcom/alensw/b/h/l;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field public final b:Lcom/alensw/b/h/i;


# direct methods
.method public constructor <init>(IIII)V
    .locals 2

    invoke-direct {p0}, Lcom/alensw/b/h/l;-><init>()V

    new-instance v0, Lcom/alensw/b/h/i;

    invoke-direct {v0}, Lcom/alensw/b/h/i;-><init>()V

    iput-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iput p1, v0, Lcom/alensw/b/h/i;->a:I

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iput p2, v0, Lcom/alensw/b/h/i;->b:I

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iput p3, v0, Lcom/alensw/b/h/i;->c:I

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    add-int/lit16 v1, p4, 0x168

    rem-int/lit16 v1, v1, 0x168

    iput v1, v0, Lcom/alensw/b/h/i;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/alensw/b/h/h;-><init>(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/alensw/b/h/h;-><init>(IIII)V

    iput-object p1, p0, Lcom/alensw/b/h/h;->a:Landroid/graphics/Bitmap;

    return-void
.end method

.method public static a(IILandroid/graphics/Bitmap$Config;)Lcom/alensw/b/h/h;
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/alensw/b/h/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/alensw/b/h/h;

    invoke-direct {v0, v1}, Lcom/alensw/b/h/h;-><init>(Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([BLandroid/graphics/BitmapFactory$Options;)Lcom/alensw/b/h/h;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/alensw/b/h/h;

    invoke-direct {v0, v1}, Lcom/alensw/b/h/h;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Matrix;FFFFI)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    div-float v1, p3, p1

    div-float v0, p4, p2

    const/4 v2, 0x1

    if-ne p5, v2, :cond_1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v0

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v1, p1

    sub-float v1, p3, v1

    div-float/2addr v1, v3

    mul-float/2addr v0, p2

    sub-float v0, p4, v0

    div-float/2addr v0, v3

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne p5, v2, :cond_0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a(IIZLandroid/graphics/Bitmap$Config;)Lcom/alensw/b/h/h;
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alensw/b/h/h;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    if-eqz p3, :cond_2

    int-to-float v0, p1

    int-to-float v3, p2

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/alensw/b/h/h;->a(Landroid/graphics/Matrix;FFI)V

    :goto_1
    iget-object v3, p0, Lcom/alensw/b/h/h;->a:Landroid/graphics/Bitmap;

    if-nez p4, :cond_4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :cond_1
    invoke-static {p1, p2, v0}, Lcom/alensw/b/h/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alensw/b/h/h;->g()I

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/b/h/h;->h()I

    move-result v3

    int-to-float v4, p1

    int-to-float v5, v0

    div-float/2addr v4, v5

    int-to-float v5, p2

    int-to-float v6, v3

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    int-to-float v0, v0

    mul-float/2addr v0, v4

    int-to-float v3, v3

    mul-float/2addr v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/alensw/b/h/h;->a(Landroid/graphics/Matrix;FFI)V

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v5, 0x6

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, v3, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance v0, Lcom/alensw/b/h/h;

    invoke-direct {v0, v4}, Lcom/alensw/b/h/h;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_4
    move-object v0, p4

    goto :goto_2
.end method

.method protected a()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/h/h;->a:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alensw/b/h/h;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/alensw/b/h/h;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public a(IIFLandroid/graphics/drawable/shapes/Shape;Landroid/graphics/Paint;)V
    .locals 9

    const/4 v1, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/alensw/b/h/h;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/alensw/b/h/h;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alensw/b/h/h;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v4, v5, v0}, Lcom/alensw/b/h/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    new-instance v6, Landroid/graphics/Canvas;

    if-eqz v0, :cond_3

    move-object v2, v0

    :goto_2
    invoke-direct {v6, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_2

    invoke-virtual {v6, v3, v7, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2
    int-to-float v1, p1

    mul-float/2addr v1, p3

    int-to-float v2, p2

    mul-float/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float v2, v4

    sub-float/2addr v2, v1

    div-float/2addr v2, v8

    int-to-float v7, v5

    sub-float/2addr v7, v1

    div-float/2addr v7, v8

    invoke-virtual {v6, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p4, v1, v1}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    invoke-virtual {p4, v6, p5}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    neg-float v1, v2

    neg-float v2, v7

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/alensw/b/h/h;->a:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iput v4, v0, Lcom/alensw/b/h/i;->a:I

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iput v5, v0, Lcom/alensw/b/h/i;->b:I

    goto :goto_0

    :cond_3
    move-object v2, v3

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/b/h/h;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/h/h;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Matrix;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->d:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget-boolean v0, v0, Lcom/alensw/b/h/i;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->a:I

    div-int/lit8 v0, v0, 0x2

    :goto_0
    iget-object v1, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v1, v1, Lcom/alensw/b/h/i;->b:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->d:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, Lcom/alensw/b/h/h;->g()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/alensw/b/h/h;->h()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->a:I

    goto :goto_0
.end method

.method public a(Landroid/graphics/Matrix;FFI)V
    .locals 6

    invoke-virtual {p0}, Lcom/alensw/b/h/h;->g()I

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/b/h/h;->h()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/alensw/b/h/h;->a(Landroid/graphics/Matrix;)V

    if-ltz v0, :cond_0

    if-ltz v2, :cond_0

    int-to-float v1, v0

    int-to-float v2, v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alensw/b/h/h;->a(Landroid/graphics/Matrix;FFFFI)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Matrix;Landroid/graphics/RectF;)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->a:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v1, v1, Lcom/alensw/b/h/i;->b:I

    int-to-float v1, v1

    invoke-virtual {p2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget-boolean v0, v0, Lcom/alensw/b/h/i;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->d:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget v0, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :sswitch_1
    iget v0, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :sswitch_2
    iget v0, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :sswitch_3
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Landroid/graphics/Bitmap$CompressFormat;I)[B
    .locals 2

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x2000

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iget-object v0, p0, Lcom/alensw/b/h/h;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)I
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v1, v0, Lcom/alensw/b/h/i;->d:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/alensw/b/h/i;->d:I

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->d:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v1, v0, Lcom/alensw/b/h/i;->d:I

    add-int/lit16 v1, v1, 0x168

    iput v1, v0, Lcom/alensw/b/h/i;->d:I

    :cond_0
    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v1, v0, Lcom/alensw/b/h/i;->d:I

    rem-int/lit16 v1, v1, 0x168

    iput v1, v0, Lcom/alensw/b/h/i;->d:I

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->d:I

    return v0
.end method

.method public final d()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/h/h;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->a:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->b:I

    return v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->d:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget-boolean v0, v0, Lcom/alensw/b/h/i;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->a:I

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->a:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->b:I

    goto :goto_0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->d:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->b:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget-boolean v0, v0, Lcom/alensw/b/h/i;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->a:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->a:I

    goto :goto_0
.end method

.method public final i()Z
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/h/h;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/h/h;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/h/h;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/h/h;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/h/h;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->a:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v0, v0, Lcom/alensw/b/h/i;->b:I

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alensw/b/h/h;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alensw/b/h/h;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget v1, v1, Lcom/alensw/b/h/i;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/alensw/b/h/h;->b:Lcom/alensw/b/h/i;

    iget-boolean v0, v0, Lcom/alensw/b/h/i;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "/2)"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ")"

    goto :goto_0
.end method
