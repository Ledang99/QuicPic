.class public Lcom/alensw/ui/d/h;
.super Lcom/alensw/ui/d/a;


# instance fields
.field private g:Z

.field private h:F

.field private i:F

.field private j:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Z)V
    .locals 4

    const-wide v2, 0x3fed0ad2c0000000L    # 0.9075711965560913

    invoke-direct {p0}, Lcom/alensw/ui/d/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/ui/d/h;->g:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/d/h;->j:Landroid/graphics/RectF;

    iput-boolean p1, p0, Lcom/alensw/ui/d/h;->g:Z

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/alensw/ui/d/h;->h:F

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/alensw/ui/d/h;->i:F

    return-void
.end method


# virtual methods
.method protected a(FF)Ljava/lang/Object;
    .locals 11

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x42c00000    # 96.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42300000    # 44.0f

    mul-float v4, v1, v0

    const/high16 v1, 0x42000000    # 32.0f

    mul-float v3, v1, v0

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v2, v1, v0

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v5, v1, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    iget-object v6, p0, Lcom/alensw/ui/d/h;->k:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/alensw/ui/d/h;->j:Landroid/graphics/RectF;

    sub-float v7, v3, v5

    sget-object v8, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v4, v4, v7, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    sub-float v7, v4, v3

    sub-float v8, v4, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    iget v7, v0, Landroid/graphics/RectF;->left:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iput v7, v0, Landroid/graphics/RectF;->right:F

    iget v7, v0, Landroid/graphics/RectF;->top:F

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iput v7, v0, Landroid/graphics/RectF;->bottom:F

    iget v7, p0, Lcom/alensw/ui/d/h;->h:F

    mul-float/2addr v7, v3

    add-float/2addr v7, v4

    iget v8, p0, Lcom/alensw/ui/d/h;->i:F

    mul-float/2addr v3, v8

    add-float/2addr v3, v4

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v5

    add-float/2addr v8, v7

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v5, v9

    add-float/2addr v5, v3

    invoke-virtual {v6, v7, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v3, 0x42500000    # 52.0f

    const/high16 v7, 0x43ad0000    # 346.0f

    invoke-virtual {v6, v0, v3, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    invoke-virtual {v6, v5, v8}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6, v8, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    iget-boolean v3, p0, Lcom/alensw/ui/d/h;->g:Z

    if-eqz v3, :cond_7

    sub-float v0, v4, v2

    sub-float v3, v4, v1

    invoke-virtual {v6, v0, v3}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v0, 0x1

    move v3, v0

    :goto_0
    const/16 v0, 0xc

    if-ge v3, v0, :cond_6

    rem-int/lit8 v0, v3, 0x6

    int-to-float v5, v0

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, v5, v0

    if-gez v0, :cond_2

    const/4 v0, -0x1

    :goto_1
    int-to-float v7, v0

    const/4 v0, 0x0

    cmpl-float v0, v5, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40a00000    # 5.0f

    cmpl-float v0, v5, v0

    if-nez v0, :cond_3

    :cond_0
    move v0, v2

    :goto_2
    mul-float/2addr v7, v0

    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, v5, v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, v5, v0

    if-nez v0, :cond_4

    :cond_1
    move v0, v2

    :goto_3
    neg-float v5, v0

    const/4 v0, 0x6

    if-ge v3, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    int-to-float v8, v0

    mul-float/2addr v7, v8

    add-float/2addr v7, v4

    int-to-float v0, v0

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    invoke-virtual {v6, v7, v0}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    const/4 v0, -0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Landroid/graphics/Path;->close()V

    :goto_5
    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/alensw/ui/d/h;->a:F

    iget-object v0, p0, Lcom/alensw/ui/d/h;->k:Landroid/graphics/Path;

    return-object v0

    :cond_7
    sub-float v3, v4, v2

    sub-float/2addr v4, v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget v3, v0, Landroid/graphics/RectF;->left:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    goto :goto_5
.end method
