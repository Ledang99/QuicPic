.class final Lcom/alensw/ui/view/g;
.super Landroid/view/animation/Animation;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Landroid/graphics/Camera;

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:Z


# direct methods
.method constructor <init>(FFLandroid/graphics/Camera;FFFZ)V
    .locals 0

    iput p1, p0, Lcom/alensw/ui/view/g;->a:F

    iput p2, p0, Lcom/alensw/ui/view/g;->b:F

    iput-object p3, p0, Lcom/alensw/ui/view/g;->c:Landroid/graphics/Camera;

    iput p4, p0, Lcom/alensw/ui/view/g;->d:F

    iput p5, p0, Lcom/alensw/ui/view/g;->e:F

    iput p6, p0, Lcom/alensw/ui/view/g;->f:F

    iput-boolean p7, p0, Lcom/alensw/ui/view/g;->g:Z

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 10

    const/high16 v9, 0x3e800000    # 0.25f

    const/4 v0, 0x0

    const/high16 v8, 0x3f400000    # 0.75f

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, p0, Lcom/alensw/ui/view/g;->a:F

    iget v3, p0, Lcom/alensw/ui/view/g;->b:F

    iget v4, p0, Lcom/alensw/ui/view/g;->a:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    float-to-double v6, v2

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    double-to-float v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    invoke-static {v3}, Landroid/util/FloatMath;->cos(F)F

    move-result v3

    iget-object v5, p0, Lcom/alensw/ui/view/g;->c:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    iget-object v5, p0, Lcom/alensw/ui/view/g;->c:Landroid/graphics/Camera;

    iget v6, p0, Lcom/alensw/ui/view/g;->d:F

    mul-float/2addr v4, v6

    iget v6, p0, Lcom/alensw/ui/view/g;->d:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v3, v7, v3

    mul-float/2addr v3, v6

    invoke-virtual {v5, v4, v0, v3}, Landroid/graphics/Camera;->translate(FFF)V

    iget-object v3, p0, Lcom/alensw/ui/view/g;->c:Landroid/graphics/Camera;

    invoke-virtual {v3, v2}, Landroid/graphics/Camera;->rotateY(F)V

    iget-object v2, p0, Lcom/alensw/ui/view/g;->c:Landroid/graphics/Camera;

    invoke-virtual {v2, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/alensw/ui/view/g;->c:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    iget v2, p0, Lcom/alensw/ui/view/g;->e:F

    neg-float v2, v2

    iget v3, p0, Lcom/alensw/ui/view/g;->f:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v2, p0, Lcom/alensw/ui/view/g;->e:F

    iget v3, p0, Lcom/alensw/ui/view/g;->f:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-boolean v1, p0, Lcom/alensw/ui/view/g;->g:Z

    if-eqz v1, :cond_1

    cmpg-float v1, p1, v9

    if-gtz v1, :cond_0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    :goto_1
    return-void

    :cond_0
    sub-float v0, p1, v9

    div-float/2addr v0, v8

    goto :goto_0

    :cond_1
    cmpl-float v1, p1, v8

    if-ltz v1, :cond_2

    :goto_2
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    goto :goto_1

    :cond_2
    sub-float v0, v8, p1

    div-float/2addr v0, v8

    goto :goto_2
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
