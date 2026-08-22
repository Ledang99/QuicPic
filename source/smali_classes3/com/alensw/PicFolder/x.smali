.class Lcom/alensw/PicFolder/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/RectF;

.field final synthetic b:Landroid/graphics/Matrix;

.field final synthetic c:Landroid/graphics/Matrix;

.field final synthetic d:Z

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Landroid/content/ContentResolver;

.field final synthetic g:I

.field final synthetic h:Lcom/alensw/PicFolder/q;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/q;Landroid/graphics/RectF;Landroid/graphics/Matrix;Landroid/graphics/Matrix;ZLandroid/content/Context;Landroid/content/ContentResolver;I)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iput-object p2, p0, Lcom/alensw/PicFolder/x;->a:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/alensw/PicFolder/x;->b:Landroid/graphics/Matrix;

    iput-object p4, p0, Lcom/alensw/PicFolder/x;->c:Landroid/graphics/Matrix;

    iput-boolean p5, p0, Lcom/alensw/PicFolder/x;->d:Z

    iput-object p6, p0, Lcom/alensw/PicFolder/x;->e:Landroid/content/Context;

    iput-object p7, p0, Lcom/alensw/PicFolder/x;->f:Landroid/content/ContentResolver;

    iput p8, p0, Lcom/alensw/PicFolder/x;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Z
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/PicFolder/x;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/PicFolder/x;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/16 v2, 0x9

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/x;->b:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-static {v2}, Lcom/alensw/b/h/j;->a([F)F

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget v2, v2, Lcom/alensw/PicFolder/q;->n:I

    if-lez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget v2, v2, Lcom/alensw/PicFolder/q;->n:I

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget v5, v5, Lcom/alensw/PicFolder/q;->o:I

    if-lez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget v3, v3, Lcom/alensw/PicFolder/q;->o:I

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v5, v5, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v5, v5, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v5, v5, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v5, v3, :cond_5

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v5, v5, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v5, v5, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    invoke-virtual {v5, v2, v3}, Lcom/alensw/PicFolder/q;->a(II)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v2, v2, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    :goto_3
    return v2

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget v2, v2, Lcom/alensw/PicFolder/q;->c:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget v5, v5, Lcom/alensw/PicFolder/q;->c:F

    mul-float/2addr v3, v5

    div-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v5, v5, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    invoke-virtual {v2}, Lcom/alensw/PicFolder/q;->getFullPicture()Lcom/alensw/b/h/j;

    move-result-object v9

    if-nez v9, :cond_7

    const/4 v2, 0x0

    goto :goto_3

    :cond_7
    new-instance v7, Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-direct {v7, v2}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v2, v2, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v2, v2, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v11, v2, v4

    invoke-virtual {v3, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/PicFolder/x;->a:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/PicFolder/x;->a:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    neg-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    instance-of v2, v9, Lcom/alensw/b/h/n;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    invoke-virtual {v2}, Lcom/alensw/PicFolder/q;->getPicture()Lcom/alensw/b/h/j;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/PicFolder/x;->c:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/alensw/b/h/j;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/alensw/b/h/j;Landroid/graphics/Matrix;Landroid/graphics/Paint;Z)V

    invoke-virtual {v2}, Lcom/alensw/b/h/j;->m()I

    :cond_8
    move-object v2, v9

    check-cast v2, Lcom/alensw/b/h/n;

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v10

    div-float/2addr v4, v11

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Lcom/alensw/b/h/n;->a(FF)I

    move-result v4

    const/4 v5, 0x1

    shl-int v8, v5, v4

    sget v5, Lcom/alensw/b/h/m;->b:I

    shl-int v10, v5, v4

    new-instance v6, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alensw/PicFolder/x;->a:Landroid/graphics/RectF;

    invoke-direct {v6, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alensw/PicFolder/x;->b:Landroid/graphics/Matrix;

    invoke-virtual {v11, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    sget v5, Lcom/alensw/b/h/m;->a:I

    add-int/2addr v4, v5

    iget v5, v6, Landroid/graphics/RectF;->left:F

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v5, v12

    const/4 v11, 0x0

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    shr-int/2addr v5, v4

    shl-int/2addr v5, v4

    iget v11, v6, Landroid/graphics/RectF;->top:F

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v11, v12

    const/4 v12, 0x0

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    shr-int/2addr v11, v4

    shl-int v4, v11, v4

    iget v11, v6, Landroid/graphics/RectF;->right:F

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v11, v12

    invoke-virtual {v2}, Lcom/alensw/b/h/n;->e()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-double v12, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v6, v12

    invoke-virtual {v2}, Lcom/alensw/b/h/n;->f()I

    move-result v12

    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    new-instance v13, Lcom/alensw/b/h/a;

    invoke-direct {v13}, Lcom/alensw/b/h/a;-><init>()V

    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    move v6, v4

    :goto_4
    if-ge v6, v12, :cond_c

    move v4, v5

    :goto_5
    if-ge v4, v11, :cond_a

    iput v4, v15, Landroid/graphics/Rect;->left:I

    add-int v16, v4, v10

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->right:I

    iput v6, v15, Landroid/graphics/Rect;->top:I

    add-int v16, v6, v10

    move/from16 v0, v16

    iput v0, v15, Landroid/graphics/Rect;->bottom:I

    iput v8, v13, Lcom/alensw/b/h/a;->inSampleSize:I

    invoke-virtual {v2, v15, v13}, Lcom/alensw/b/h/n;->a(Landroid/graphics/Rect;Lcom/alensw/b/h/a;)Landroid/graphics/Bitmap;

    move-result-object v16

    if-eqz v16, :cond_9

    int-to-float v0, v8

    move/from16 v17, v0

    int-to-float v0, v8

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v0, v15, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alensw/PicFolder/x;->b:Landroid/graphics/Matrix;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v14, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-static/range {v16 .. v16}, Lcom/alensw/b/h/n;->b(Landroid/graphics/Bitmap;)V

    :cond_9
    add-int/2addr v4, v10

    goto :goto_5

    :cond_a
    add-int v4, v6, v10

    move v6, v4

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alensw/PicFolder/x;->b:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    invoke-virtual/range {v2 .. v8}, Lcom/alensw/b/h/j;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Lcom/alensw/b/h/j;Landroid/graphics/Matrix;Landroid/graphics/Paint;Z)V

    :cond_c
    invoke-virtual {v9}, Lcom/alensw/b/h/j;->m()I

    const/4 v2, 0x1

    goto/16 :goto_3
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Z
    .locals 8

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/q;->getPictureUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v0, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v4, v0, Lcom/alensw/PicFolder/q;->m:Landroid/net/Uri;

    if-nez v4, :cond_e

    iget-object v0, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->l:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->l:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v1, v1, Lcom/alensw/PicFolder/q;->r:Landroid/graphics/Bitmap$CompressFormat;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v1, v1, Lcom/alensw/PicFolder/q;->r:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-boolean v5, p0, Lcom/alensw/PicFolder/x;->d:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/alensw/PicFolder/x;->e:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/alensw/b/c/b;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_b

    invoke-static {v5}, Lcom/alensw/b/l/b;->c(Ljava/io/File;)Z

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "image/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-object v1, v5

    :goto_3
    if-eqz v0, :cond_c

    :try_start_0
    iget-object v4, p0, Lcom/alensw/PicFolder/x;->f:Landroid/content/ContentResolver;

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_1

    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v4, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v4, v4, Lcom/alensw/PicFolder/q;->r:Landroid/graphics/Bitmap$CompressFormat;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v5, v4, Lcom/alensw/PicFolder/q;->r:Landroid/graphics/Bitmap$CompressFormat;

    :cond_0
    iget-object v4, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v4, v4, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v5, v5, Lcom/alensw/PicFolder/q;->r:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x5a

    invoke-virtual {v4, v5, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_1
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/alensw/PicFolder/x;->f:Landroid/content/ContentResolver;

    invoke-static {v0, v6}, Lcom/alensw/b/c/f;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/alensw/b/c/f;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/alensw/b/h/c;->a(Lcom/alensw/b/c/f;Z)Lcom/alensw/b/h/c;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Lcom/alensw/b/l/b;->d(Ljava/io/File;)Lcom/alensw/b/c/f;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Lcom/alensw/b/h/c;->a(Lcom/alensw/b/c/f;)Z

    invoke-virtual {v4}, Lcom/alensw/b/c/f;->h()V

    :cond_2
    invoke-virtual {v3}, Lcom/alensw/b/h/c;->a()V

    :cond_3
    invoke-virtual {v0}, Lcom/alensw/b/c/f;->h()V

    :cond_4
    iget-object v0, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-wide v4, v0, Lcom/alensw/PicFolder/q;->p:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    :try_start_2
    iget-object v0, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-wide v4, v0, Lcom/alensw/PicFolder/q;->p:J

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setLastModified(J)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_5
    move v0, v2

    :goto_6
    return v0

    :cond_6
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    invoke-static {v0, v2}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v5, "png"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "bmp"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v5, v1, Lcom/alensw/PicFolder/q;->r:Landroid/graphics/Bitmap$CompressFormat;

    const-string v1, "png"

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v5, v1, Lcom/alensw/PicFolder/q;->r:Landroid/graphics/Bitmap$CompressFormat;

    const-string v1, "jpg"

    goto/16 :goto_1

    :cond_a
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alensw/b/l/b;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    goto/16 :goto_2

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "image/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-object v0, v4

    move-object v1, v5

    goto/16 :goto_3

    :catch_0
    move-exception v0

    if-eqz v1, :cond_d

    :try_start_3
    invoke-static {v1}, Lcom/alensw/b/l/b;->e(Ljava/io/File;)Ljava/io/FileOutputStream;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_d
    move-object v0, v3

    goto/16 :goto_4

    :cond_e
    move-object v0, v4

    move-object v1, v3

    goto/16 :goto_3
.end method

.method public run()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v3, v3, Lcom/alensw/PicFolder/q;->s:Landroid/os/Handler;

    const/16 v4, 0x3e9

    iget v5, p0, Lcom/alensw/PicFolder/x;->g:I

    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-direct {p0}, Lcom/alensw/PicFolder/x;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-boolean v4, v4, Lcom/alensw/PicFolder/q;->g:Z

    if-eqz v4, :cond_2

    const-string v4, "data"

    iget-object v5, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v5, v5, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v2, v2, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    :goto_0
    iput v0, v3, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iput-boolean v1, v0, Lcom/alensw/PicFolder/q;->k:Z

    iget-object v0, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v0, v0, Lcom/alensw/PicFolder/q;->s:Landroid/os/Handler;

    new-instance v1, Lcom/alensw/PicFolder/y;

    invoke-direct {v1, p0, v3}, Lcom/alensw/PicFolder/y;-><init>(Lcom/alensw/PicFolder/x;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-boolean v4, v4, Lcom/alensw/PicFolder/q;->i:Z

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/alensw/PicFolder/x;->e:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/alensw/PicFolder/x;->h:Lcom/alensw/PicFolder/q;

    iget-object v2, v2, Lcom/alensw/PicFolder/q;->q:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    iput v0, v3, Landroid/os/Message;->arg2:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/alensw/PicFolder/x;->a(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    iput v0, v3, Landroid/os/Message;->arg2:I

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method
