.class Lcom/alensw/PicFolder/bg;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/graphics/Point;

.field final synthetic c:F

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/alensw/PicFolder/WallpaperActivity;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/WallpaperActivity;ILandroid/graphics/Point;FII)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/PicFolder/bg;->f:Lcom/alensw/PicFolder/WallpaperActivity;

    iput p2, p0, Lcom/alensw/PicFolder/bg;->a:I

    iput-object p3, p0, Lcom/alensw/PicFolder/bg;->b:Landroid/graphics/Point;

    iput p4, p0, Lcom/alensw/PicFolder/bg;->c:F

    iput p5, p0, Lcom/alensw/PicFolder/bg;->d:I

    iput p6, p0, Lcom/alensw/PicFolder/bg;->e:I

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/PicFolder/bg;->f:Lcom/alensw/PicFolder/WallpaperActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/WallpaperActivity;->a(Lcom/alensw/PicFolder/WallpaperActivity;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/PicFolder/bg;->f:Lcom/alensw/PicFolder/WallpaperActivity;

    iget v1, v1, Lcom/alensw/PicFolder/WallpaperActivity;->Y:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    const/high16 v2, -0x60000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/alensw/PicFolder/bg;->f:Lcom/alensw/PicFolder/WallpaperActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/WallpaperActivity;->b(Lcom/alensw/PicFolder/WallpaperActivity;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alensw/PicFolder/bg;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/bg;->f:Lcom/alensw/PicFolder/WallpaperActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/WallpaperActivity;->b(Lcom/alensw/PicFolder/WallpaperActivity;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/alensw/PicFolder/bg;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alensw/PicFolder/bg;->a:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/alensw/PicFolder/bg;->f:Lcom/alensw/PicFolder/WallpaperActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/WallpaperActivity;->b(Lcom/alensw/PicFolder/WallpaperActivity;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/alensw/PicFolder/bg;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget-object v2, p0, Lcom/alensw/PicFolder/bg;->b:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/alensw/PicFolder/bg;->f:Lcom/alensw/PicFolder/WallpaperActivity;

    invoke-static {v2}, Lcom/alensw/PicFolder/WallpaperActivity;->b(Lcom/alensw/PicFolder/WallpaperActivity;)Landroid/graphics/RectF;

    move-result-object v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/alensw/PicFolder/bg;->f:Lcom/alensw/PicFolder/WallpaperActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/WallpaperActivity;->a(Lcom/alensw/PicFolder/WallpaperActivity;)Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/alensw/PicFolder/bg;->c:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/alensw/PicFolder/bg;->f:Lcom/alensw/PicFolder/WallpaperActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/WallpaperActivity;->a(Lcom/alensw/PicFolder/WallpaperActivity;)Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alensw/PicFolder/bg;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/PicFolder/bg;->b:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/PicFolder/bg;->f:Lcom/alensw/PicFolder/WallpaperActivity;

    invoke-static {v1}, Lcom/alensw/PicFolder/WallpaperActivity;->b(Lcom/alensw/PicFolder/WallpaperActivity;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/alensw/PicFolder/bg;->f:Lcom/alensw/PicFolder/WallpaperActivity;

    invoke-static {v2}, Lcom/alensw/PicFolder/WallpaperActivity;->b(Lcom/alensw/PicFolder/WallpaperActivity;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/alensw/PicFolder/bg;->d:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/alensw/PicFolder/bg;->f:Lcom/alensw/PicFolder/WallpaperActivity;

    invoke-static {v3}, Lcom/alensw/PicFolder/WallpaperActivity;->a(Lcom/alensw/PicFolder/WallpaperActivity;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/bg;->f:Lcom/alensw/PicFolder/WallpaperActivity;

    invoke-static {v0}, Lcom/alensw/PicFolder/WallpaperActivity;->b(Lcom/alensw/PicFolder/WallpaperActivity;)Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/alensw/PicFolder/bg;->d:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alensw/PicFolder/bg;->f:Lcom/alensw/PicFolder/WallpaperActivity;

    invoke-static {v2}, Lcom/alensw/PicFolder/WallpaperActivity;->a(Lcom/alensw/PicFolder/WallpaperActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/alensw/b/l/b;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/bg;->e:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/bg;->e:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
