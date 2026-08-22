.class final Lcom/alensw/ui/d/e;
.super Landroid/graphics/drawable/InsetDrawable;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Canvas;

.field private d:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/d/e;->a:Landroid/graphics/Path;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/ui/d/e;->d:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v1, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/alensw/ui/d/e;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/alensw/ui/d/e;->a(Landroid/graphics/Canvas;)Z

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v6, p0, Lcom/alensw/ui/d/e;->d:I

    if-eq v6, v5, :cond_1

    const/high16 v6, 0x421c0000    # 39.0f

    int-to-float v7, v5

    mul-float/2addr v6, v7

    const/high16 v7, 0x42c00000    # 96.0f

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/alensw/ui/d/e;->a:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    iget-object v7, p0, Lcom/alensw/ui/d/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v8

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v8, v0, v6, v9}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iput v5, p0, Lcom/alensw/ui/d/e;->d:I

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/d/e;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/d/e;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v0}, Lcom/alensw/b/h/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alensw/ui/d/e;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/alensw/ui/d/e;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/alensw/ui/d/e;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    :goto_0
    iput-object v0, p0, Lcom/alensw/ui/d/e;->c:Landroid/graphics/Canvas;

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/d/e;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/d/e;->b:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_2
    if-nez v2, :cond_7

    iget-object v0, p0, Lcom/alensw/ui/d/e;->c:Landroid/graphics/Canvas;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alensw/ui/d/e;->c:Landroid/graphics/Canvas;

    :goto_1
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->save(I)I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alensw/ui/d/e;->c:Landroid/graphics/Canvas;

    if-ne v0, v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/alensw/ui/d/e;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    :cond_4
    invoke-super {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v2, p0, Lcom/alensw/ui/d/e;->c:Landroid/graphics/Canvas;

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/d/e;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/d/e;->b:Landroid/graphics/Bitmap;

    int-to-float v2, v3

    int-to-float v3, v5

    sub-float/2addr v2, v3

    div-float/2addr v2, v10

    int-to-float v3, v4

    int-to-float v4, v5

    sub-float/2addr v3, v4

    div-float/2addr v3, v10

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_5
    return-void

    :cond_6
    move-object v0, v1

    goto :goto_0

    :cond_7
    move-object v0, p1

    goto :goto_1
.end method
