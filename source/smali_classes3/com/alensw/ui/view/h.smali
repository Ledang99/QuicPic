.class final Lcom/alensw/ui/view/h;
.super Landroid/view/animation/Animation;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Landroid/graphics/Camera;

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:Z


# direct methods
.method constructor <init>(FFLandroid/graphics/Camera;FFZ)V
    .locals 0

    iput p1, p0, Lcom/alensw/ui/view/h;->a:F

    iput p2, p0, Lcom/alensw/ui/view/h;->b:F

    iput-object p3, p0, Lcom/alensw/ui/view/h;->c:Landroid/graphics/Camera;

    iput p4, p0, Lcom/alensw/ui/view/h;->d:F

    iput p5, p0, Lcom/alensw/ui/view/h;->e:F

    iput-boolean p6, p0, Lcom/alensw/ui/view/h;->f:Z

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 11

    const/high16 v10, 0x40a00000    # 5.0f

    const/high16 v9, 0x3f000000    # 0.5f

    const v8, 0x3e4ccccd    # 0.2f

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, p0, Lcom/alensw/ui/view/h;->a:F

    iget v3, p0, Lcom/alensw/ui/view/h;->b:F

    iget v4, p0, Lcom/alensw/ui/view/h;->a:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    float-to-double v6, v2

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double/2addr v4, v6

    double-to-float v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->cos(F)F

    iget-object v3, p0, Lcom/alensw/ui/view/h;->c:Landroid/graphics/Camera;

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    iget-object v3, p0, Lcom/alensw/ui/view/h;->c:Landroid/graphics/Camera;

    invoke-virtual {v3, v2}, Landroid/graphics/Camera;->rotateY(F)V

    iget-object v2, p0, Lcom/alensw/ui/view/h;->c:Landroid/graphics/Camera;

    invoke-virtual {v2, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/alensw/ui/view/h;->c:Landroid/graphics/Camera;

    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    invoke-virtual {v1, v8, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {v1, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v2, p0, Lcom/alensw/ui/view/h;->d:F

    neg-float v2, v2

    iget v3, p0, Lcom/alensw/ui/view/h;->e:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget v2, p0, Lcom/alensw/ui/view/h;->d:F

    iget v3, p0, Lcom/alensw/ui/view/h;->e:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-boolean v1, p0, Lcom/alensw/ui/view/h;->f:Z

    if-eqz v1, :cond_1

    cmpl-float v1, p1, v9

    if-ltz v1, :cond_0

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    return-void

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    cmpg-float v1, p1, v9

    if-gtz v1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float p1, v0, p1

    goto :goto_0

    :cond_2
    move p1, v0

    goto :goto_0
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
