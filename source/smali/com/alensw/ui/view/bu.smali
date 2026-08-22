.class public Lcom/alensw/ui/view/bu;
.super Landroid/view/animation/Animation;


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Landroid/graphics/RectF;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:Z


# direct methods
.method public constructor <init>(ZZLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput-boolean p1, p0, Lcom/alensw/ui/view/bu;->a:Z

    iput-boolean p2, p0, Lcom/alensw/ui/view/bu;->b:Z

    iput-object p3, p0, Lcom/alensw/ui/view/bu;->c:Landroid/graphics/RectF;

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Lcom/alensw/ui/view/bu;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget-object v0, p0, Lcom/alensw/ui/view/bu;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v0, p0, Lcom/alensw/ui/view/bu;->c:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v9

    div-float v0, v8, v6

    div-float v1, v9, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-boolean v0, p0, Lcom/alensw/ui/view/bu;->a:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-boolean v2, p0, Lcom/alensw/ui/view/bu;->a:Z

    if-eqz v2, :cond_2

    move v2, v1

    :goto_1
    iput v2, p0, Lcom/alensw/ui/view/bu;->d:F

    iget v2, p0, Lcom/alensw/ui/view/bu;->d:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/alensw/ui/view/bu;->e:F

    iget-boolean v0, p0, Lcom/alensw/ui/view/bu;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/view/bu;->c:Landroid/graphics/RectF;

    :goto_2
    iget-boolean v2, p0, Lcom/alensw/ui/view/bu;->a:Z

    if-eqz v2, :cond_4

    move-object v2, p1

    :goto_3
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-boolean v0, p0, Lcom/alensw/ui/view/bu;->a:Z

    if-eqz v0, :cond_5

    move v0, v3

    :goto_4
    iput v0, p0, Lcom/alensw/ui/view/bu;->f:F

    iget-boolean v0, p0, Lcom/alensw/ui/view/bu;->a:Z

    if-eqz v0, :cond_6

    move v0, v2

    :goto_5
    iput v0, p0, Lcom/alensw/ui/view/bu;->g:F

    sub-float v0, v3, v4

    iput v0, p0, Lcom/alensw/ui/view/bu;->j:F

    sub-float v0, v2, v5

    iput v0, p0, Lcom/alensw/ui/view/bu;->k:F

    iget-boolean v0, p0, Lcom/alensw/ui/view/bu;->a:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/alensw/ui/view/bu;->j:F

    neg-float v0, v0

    :goto_6
    iput v0, p0, Lcom/alensw/ui/view/bu;->h:F

    iget-boolean v0, p0, Lcom/alensw/ui/view/bu;->a:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/alensw/ui/view/bu;->k:F

    neg-float v0, v0

    :goto_7
    iput v0, p0, Lcom/alensw/ui/view/bu;->i:F

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    div-float v2, v8, v1

    div-float v1, v9, v1

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    cmpl-float v3, v6, v2

    if-lez v3, :cond_9

    sub-float v0, v6, v2

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/alensw/ui/view/bu;->l:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    const/4 v0, 0x1

    :cond_0
    :goto_8
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alensw/ui/view/bu;->m:Z

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    move-object v0, p1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/alensw/ui/view/bu;->c:Landroid/graphics/RectF;

    goto :goto_3

    :cond_5
    move v0, v4

    goto :goto_4

    :cond_6
    move v0, v5

    goto :goto_5

    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    :cond_9
    cmpl-float v2, v7, v1

    if-lez v2, :cond_0

    sub-float v0, v7, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/alensw/ui/view/bu;->l:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    const/4 v0, 0x1

    goto :goto_8
.end method

.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/alensw/ui/view/bu;->a:Z

    if-eqz v0, :cond_0

    move v0, p1

    :goto_0
    iput v0, p0, Lcom/alensw/ui/view/bu;->l:F

    iget-boolean v0, p0, Lcom/alensw/ui/view/bu;->m:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alensw/ui/view/bu;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    :goto_2
    return-void

    :cond_0
    sub-float v0, v4, p1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x437f0000    # 255.0f

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget v1, p0, Lcom/alensw/ui/view/bu;->d:F

    iget v2, p0, Lcom/alensw/ui/view/bu;->e:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/alensw/ui/view/bu;->f:F

    iget v3, p0, Lcom/alensw/ui/view/bu;->g:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget v1, p0, Lcom/alensw/ui/view/bu;->h:F

    iget v2, p0, Lcom/alensw/ui/view/bu;->j:F

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget v2, p0, Lcom/alensw/ui/view/bu;->i:F

    iget v3, p0, Lcom/alensw/ui/view/bu;->k:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-boolean v0, p0, Lcom/alensw/ui/view/bu;->b:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alensw/ui/view/bu;->a:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p2, p1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    goto :goto_2

    :cond_3
    sub-float p1, v4, p1

    goto :goto_3

    :cond_4
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto :goto_2
.end method

.method public willChangeBounds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
