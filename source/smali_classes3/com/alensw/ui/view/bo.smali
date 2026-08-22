.class Lcom/alensw/ui/view/bo;
.super Landroid/graphics/drawable/PaintDrawable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/bn;

.field private final b:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/bn;)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/ui/view/bo;->a:Lcom/alensw/ui/view/bn;

    invoke-direct {p0}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/bo;->b:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/graphics/drawable/PaintDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/bo;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/alensw/ui/view/bo;->b:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/alensw/ui/view/bo;->a:Lcom/alensw/ui/view/bn;

    invoke-static {v2}, Lcom/alensw/ui/view/bn;->a(Lcom/alensw/ui/view/bn;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    iget-object v3, p0, Lcom/alensw/ui/view/bo;->b:Landroid/graphics/Path;

    sub-float v4, v2, v1

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/alensw/ui/view/bo;->b:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/alensw/ui/view/bo;->b:Landroid/graphics/Path;

    add-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alensw/ui/view/bo;->b:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/alensw/ui/view/bo;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/alensw/ui/view/bo;->a:Lcom/alensw/ui/view/bn;

    invoke-static {v2}, Lcom/alensw/ui/view/bn;->a(Lcom/alensw/ui/view/bn;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    iget-object v3, p0, Lcom/alensw/ui/view/bo;->b:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float v5, v2, v1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Lcom/alensw/ui/view/bo;->b:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/alensw/ui/view/bo;->b:Landroid/graphics/Path;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    add-float/2addr v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method
