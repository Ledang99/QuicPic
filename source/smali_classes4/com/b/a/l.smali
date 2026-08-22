.class public Lcom/b/a/l;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field public static final c:Z


# instance fields
.field private final a:I

.field private final b:I

.field private final d:Landroid/graphics/Picture;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Matrix;

.field private g:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/b/a/l;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Picture;II)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-object p1, p0, Lcom/b/a/l;->d:Landroid/graphics/Picture;

    iput p2, p0, Lcom/b/a/l;->a:I

    iput p3, p0, Lcom/b/a/l;->b:I

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Picture;
    .locals 1

    iget-object v0, p0, Lcom/b/a/l;->d:Landroid/graphics/Picture;

    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/b/a/l;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/l;->e:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/b/a/l;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/b/a/l;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget-object v2, p0, Lcom/b/a/l;->e:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/b/a/l;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/b/a/l;->f:Landroid/graphics/Matrix;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/b/a/l;->f:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_1
    iget-object v0, p0, Lcom/b/a/l;->d:Landroid/graphics/Picture;

    invoke-virtual {v0, p1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/b/a/l;->b:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/b/a/l;->a:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/b/a/l;->d:Landroid/graphics/Picture;

    invoke-virtual {v2}, Landroid/graphics/Picture;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/b/a/l;->d:Landroid/graphics/Picture;

    invoke-virtual {v3}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    int-to-float v4, v0

    int-to-float v5, v2

    div-float/2addr v4, v5

    int-to-float v5, v1

    int-to-float v6, v3

    div-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    sget-boolean v5, Lcom/b/a/l;->c:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/b/a/l;->g:Landroid/graphics/Paint;

    if-eqz v5, :cond_4

    :cond_0
    int-to-float v0, v2

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v1, v3

    mul-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v5, p0, Lcom/b/a/l;->e:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/b/a/l;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v0, :cond_2

    iget-object v5, p0, Lcom/b/a/l;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v5, v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/b/a/l;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/b/a/l;->e:Landroid/graphics/Bitmap;

    :cond_3
    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/b/a/l;->e:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/b/a/l;->e:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1

    new-instance v5, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/b/a/l;->e:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    int-to-float v0, v0

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    int-to-float v1, v1

    int-to-float v2, v3

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v7

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/b/a/l;->d:Landroid/graphics/Picture;

    invoke-virtual {v0, v5}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/b/a/l;->f:Landroid/graphics/Matrix;

    if-nez v5, :cond_5

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/b/a/l;->f:Landroid/graphics/Matrix;

    :goto_1
    iget-object v5, p0, Lcom/b/a/l;->f:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v5, p0, Lcom/b/a/l;->f:Landroid/graphics/Matrix;

    int-to-float v0, v0

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v0, v2

    div-float/2addr v0, v7

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    int-to-float v1, v1

    int-to-float v2, v3

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    div-float/2addr v1, v7

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/b/a/l;->f:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/b/a/l;->g:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/l;->g:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Lcom/b/a/l;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_0
    sget-boolean v0, Lcom/b/a/l;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/b/a/l;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/b/a/l;->onBoundsChange(Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {p0}, Lcom/b/a/l;->invalidateSelf()V

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/l;->g:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public setDither(Z)V
    .locals 0

    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 0

    return-void
.end method
