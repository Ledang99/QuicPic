.class public Lcom/alensw/ui/d/a;
.super Lcom/alensw/ui/d/c;


# instance fields
.field protected a:F

.field protected b:F

.field protected c:Z

.field protected d:Landroid/graphics/Bitmap;

.field protected final e:Landroid/graphics/Paint;

.field protected final f:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alensw/ui/d/c;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/d/a;->e:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/alensw/ui/d/a;->f:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method


# virtual methods
.method protected a(FF)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/d/a;->k:Landroid/graphics/Path;

    return-object v0
.end method

.method protected a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 8

    const/high16 v7, -0x60000000

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/alensw/ui/d/a;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/ui/d/a;->getHeight()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x42c00000    # 96.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/alensw/ui/d/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/alensw/ui/d/a;->e:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/alensw/ui/d/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/alensw/ui/d/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    invoke-virtual {p0, v0, v1}, Lcom/alensw/ui/d/a;->a(FF)Ljava/lang/Object;

    move-result-object v3

    iget v4, p0, Lcom/alensw/ui/d/a;->a:F

    mul-float/2addr v4, v2

    iget v5, p0, Lcom/alensw/ui/d/a;->b:F

    mul-float/2addr v2, v5

    cmpl-float v5, v2, v6

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/alensw/ui/d/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v5, v2, v6, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    cmpl-float v2, v4, v6

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/d/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/alensw/ui/d/a;->e:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/alensw/ui/d/a;->e:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v2, p0, Lcom/alensw/ui/d/a;->e:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v2, p0, Lcom/alensw/ui/d/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/alensw/ui/d/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v3, v2}, Lcom/alensw/ui/d/a;->a(Landroid/graphics/Canvas;Ljava/lang/Object;Landroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/alensw/ui/d/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v2

    iget-object v4, p0, Lcom/alensw/ui/d/a;->e:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/alensw/ui/d/a;->e:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/alensw/ui/d/a;->f:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v4, p0, Lcom/alensw/ui/d/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v3, v4}, Lcom/alensw/ui/d/a;->a(Landroid/graphics/Canvas;Ljava/lang/Object;Landroid/graphics/Paint;)V

    iget-object v4, p0, Lcom/alensw/ui/d/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_1
    iget-object v2, p0, Lcom/alensw/ui/d/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/alensw/ui/d/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/alensw/ui/d/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v3, v2}, Lcom/alensw/ui/d/a;->a(Landroid/graphics/Canvas;Ljava/lang/Object;Landroid/graphics/Paint;)V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alensw/ui/d/a;->b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    iget-object v0, p0, Lcom/alensw/ui/d/a;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Ljava/lang/Object;Landroid/graphics/Paint;)V
    .locals 2

    const/4 v1, 0x0

    instance-of v0, p2, Landroid/graphics/Path;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/graphics/Path;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2, v1, v1, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected b(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 0

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alensw/ui/d/a;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alensw/ui/d/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/d/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/alensw/ui/d/a;->d:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/alensw/ui/d/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    iput-boolean v3, p0, Lcom/alensw/ui/d/a;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/d/a;->d:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/alensw/ui/d/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onResize(FF)V
    .locals 3

    float-to-int v0, p1

    float-to-int v1, p2

    iget-object v2, p0, Lcom/alensw/ui/d/a;->d:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/d/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/d/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/alensw/ui/d/a;->d:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/d/a;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/d/a;->d:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/ui/d/a;->c:Z

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/ui/d/a;->d:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
