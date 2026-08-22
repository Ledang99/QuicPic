.class public Lcom/alensw/ui/b/a;
.super Landroid/graphics/drawable/InsetDrawable;


# instance fields
.field private a:I

.field private b:J

.field private c:Landroid/graphics/Bitmap;

.field private final d:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Z)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/alensw/ui/b/a;->d:Landroid/graphics/Paint;

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :cond_0
    iput v0, p0, Lcom/alensw/ui/b/a;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/alensw/ui/b/a;->a:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alensw/ui/b/a;->b:J

    invoke-virtual {p0}, Lcom/alensw/ui/b/a;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, 0x43960000    # 300.0f

    const/4 v6, 0x3

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x12c

    iget-wide v4, p0, Lcom/alensw/ui/b/a;->b:J

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-float v0, v0

    cmpl-float v1, v0, v7

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/alensw/ui/b/a;->a:I

    if-ne v1, v8, :cond_3

    iput v9, p0, Lcom/alensw/ui/b/a;->a:I

    :cond_0
    :goto_0
    iget v1, p0, Lcom/alensw/ui/b/a;->a:I

    if-nez v1, :cond_4

    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    iget v0, p0, Lcom/alensw/ui/b/a;->a:I

    if-eq v0, v8, :cond_1

    iget v0, p0, Lcom/alensw/ui/b/a;->a:I

    if-ne v0, v6, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/ui/b/a;->invalidateSelf()V

    :cond_2
    return-void

    :cond_3
    iget v1, p0, Lcom/alensw/ui/b/a;->a:I

    if-ne v1, v6, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/alensw/ui/b/a;->a:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alensw/ui/b/a;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_4
    div-float/2addr v0, v7

    iget v1, p0, Lcom/alensw/ui/b/a;->a:I

    if-ne v1, v6, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    :cond_5
    invoke-virtual {p0}, Lcom/alensw/ui/b/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    const/high16 v5, 0x3e900000    # 0.28125f

    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/high16 v5, 0x3ea00000    # 0.3125f

    mul-float/2addr v3, v5

    add-float/2addr v3, v4

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->save(I)I

    const/high16 v4, -0x3e100000    # -30.0f

    mul-float/2addr v0, v4

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/alensw/ui/b/a;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alensw/ui/b/a;->c:Landroid/graphics/Bitmap;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/alensw/ui/b/a;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->save(I)I

    iget v0, v1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v3, v2, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_6
    iget v0, v1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, v1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {p1, v0, v2, v4, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alensw/ui/b/a;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/b/a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3ea00000    # 0.3125f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/alensw/b/h/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/b/a;->c:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/alensw/ui/b/a;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/alensw/ui/b/a;->c:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-super {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method
