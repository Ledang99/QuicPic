.class Lcom/alensw/PicFolder/aa;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected final b:Landroid/graphics/Paint;

.field final synthetic c:Lcom/alensw/PicFolder/q;

.field private final d:Landroid/graphics/Path;

.field private final e:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/q;)V
    .locals 2

    iput-object p1, p0, Lcom/alensw/PicFolder/aa;->c:Lcom/alensw/PicFolder/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/PicFolder/aa;->a:I

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/PicFolder/aa;->b:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/alensw/PicFolder/aa;->d:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alensw/PicFolder/aa;->e:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public a(FF)I
    .locals 13

    const/4 v12, 0x2

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alensw/PicFolder/aa;->c:Lcom/alensw/PicFolder/q;

    invoke-static {v0}, Lcom/alensw/PicFolder/q;->s(Lcom/alensw/PicFolder/q;)F

    move-result v0

    const/high16 v3, 0x41b00000    # 22.0f

    mul-float v5, v0, v3

    iget-object v0, p0, Lcom/alensw/PicFolder/aa;->c:Lcom/alensw/PicFolder/q;

    iget-object v6, v0, Lcom/alensw/PicFolder/q;->v:Landroid/graphics/RectF;

    iget v0, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v5

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_5

    iget v0, v6, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v5

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    move v0, v1

    :goto_0
    iget v3, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v5

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_6

    iget v3, v6, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v5

    cmpg-float v3, p2, v3

    if-gez v3, :cond_6

    move v4, v1

    :goto_1
    if-eqz v4, :cond_a

    iget v3, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_a

    move v3, v1

    :goto_2
    if-eqz v4, :cond_0

    iget v4, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    or-int/lit8 v3, v3, 0x2

    :cond_0
    if-eqz v0, :cond_2

    iget v4, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_1

    iget v4, v6, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_2

    iget-object v4, p0, Lcom/alensw/PicFolder/aa;->c:Lcom/alensw/PicFolder/q;

    iget-object v4, v4, Lcom/alensw/PicFolder/q;->w:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v4, v5

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    :cond_1
    or-int/lit8 v3, v3, 0x10

    :cond_2
    if-eqz v0, :cond_9

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v5

    if-ltz v0, :cond_3

    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, p2

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/alensw/PicFolder/aa;->c:Lcom/alensw/PicFolder/q;

    invoke-static {v0}, Lcom/alensw/PicFolder/q;->t(Lcom/alensw/PicFolder/q;)I

    move-result v0

    iget-object v4, p0, Lcom/alensw/PicFolder/aa;->c:Lcom/alensw/PicFolder/q;

    iget-object v4, v4, Lcom/alensw/PicFolder/q;->w:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    sub-float/2addr v0, v5

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_9

    :cond_3
    or-int/lit8 v0, v3, 0x20

    :goto_3
    if-nez v0, :cond_8

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float v4, v3, v7

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v7, v3, v7

    iget-object v8, p0, Lcom/alensw/PicFolder/aa;->e:Landroid/graphics/RectF;

    move v3, v2

    :goto_4
    if-gt v3, v12, :cond_8

    move v2, v1

    :goto_5
    if-gt v2, v12, :cond_4

    iget v9, v6, Landroid/graphics/RectF;->left:F

    int-to-float v10, v2

    mul-float/2addr v10, v4

    add-float/2addr v9, v10

    sub-float/2addr v9, v5

    iput v9, v8, Landroid/graphics/RectF;->left:F

    iget v9, v8, Landroid/graphics/RectF;->left:F

    mul-float v10, v5, v11

    add-float/2addr v9, v10

    iput v9, v8, Landroid/graphics/RectF;->right:F

    iget v9, v6, Landroid/graphics/RectF;->top:F

    int-to-float v10, v3

    mul-float/2addr v10, v7

    add-float/2addr v9, v10

    sub-float/2addr v9, v5

    iput v9, v8, Landroid/graphics/RectF;->top:F

    iget v9, v8, Landroid/graphics/RectF;->top:F

    mul-float v10, v5, v11

    add-float/2addr v9, v10

    iput v9, v8, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v8, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v0, 0x100

    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    move v4, v2

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    iput v0, p0, Lcom/alensw/PicFolder/aa;->a:I

    return v0

    :cond_9
    move v0, v3

    goto :goto_3

    :cond_a
    move v3, v2

    goto/16 :goto_2
.end method

.method public a(IFF)V
    .locals 8

    iget-object v0, p0, Lcom/alensw/PicFolder/aa;->c:Lcom/alensw/PicFolder/q;

    iget-object v2, v0, Lcom/alensw/PicFolder/q;->v:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/alensw/PicFolder/aa;->c:Lcom/alensw/PicFolder/q;

    iget v0, v0, Lcom/alensw/PicFolder/q;->b:F

    iget-object v1, p0, Lcom/alensw/PicFolder/aa;->c:Lcom/alensw/PicFolder/q;

    invoke-static {v1}, Lcom/alensw/PicFolder/q;->o(Lcom/alensw/PicFolder/q;)I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/alensw/PicFolder/aa;->c:Lcom/alensw/PicFolder/q;

    invoke-static {v3}, Lcom/alensw/PicFolder/q;->p(Lcom/alensw/PicFolder/q;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-eqz v6, :cond_a

    and-int/lit8 v6, p1, 0xf

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    iget v6, v2, Landroid/graphics/RectF;->left:F

    iget v7, v2, Landroid/graphics/RectF;->left:F

    neg-float v7, v7

    invoke-static {p2, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-float/2addr v6, v7

    iput v6, v2, Landroid/graphics/RectF;->left:F

    and-int/lit16 v6, p1, 0xf0

    const/16 v7, 0x10

    if-ne v6, v7, :cond_4

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v4, v0

    sub-float v4, v6, v4

    iput v4, v2, Landroid/graphics/RectF;->top:F

    :goto_0
    const/4 p1, 0x0

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/alensw/PicFolder/aa;->c:Lcom/alensw/PicFolder/q;

    invoke-static {v4}, Lcom/alensw/PicFolder/q;->q(Lcom/alensw/PicFolder/q;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v0

    and-int/lit16 v6, p1, 0xf0

    const/16 v7, 0x10

    if-ne v6, v7, :cond_8

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v6, v2, Landroid/graphics/RectF;->top:F

    neg-float v6, v6

    invoke-static {p3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/RectF;->top:F

    and-int/lit8 v3, p1, 0xf

    const/4 v6, 0x1

    if-ne v3, v6, :cond_7

    iget v3, v2, Landroid/graphics/RectF;->right:F

    mul-float/2addr v5, v0

    sub-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/RectF;->left:F

    :goto_2
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v4

    iput v1, v2, Landroid/graphics/RectF;->top:F

    :cond_1
    :goto_3
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v1, 0x42600000    # 56.0f

    iget-object v5, p0, Lcom/alensw/PicFolder/aa;->c:Lcom/alensw/PicFolder/q;

    invoke-static {v5}, Lcom/alensw/PicFolder/q;->r(Lcom/alensw/PicFolder/q;)F

    move-result v5

    mul-float/2addr v1, v5

    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-eqz v5, :cond_e

    div-float v0, v1, v0

    :goto_4
    cmpg-float v5, v3, v1

    if-gez v5, :cond_2

    sub-float v1, v3, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/graphics/RectF;->inset(FF)V

    :cond_2
    cmpg-float v1, v4, v0

    if-gez v1, :cond_3

    const/4 v1, 0x0

    sub-float v0, v4, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    invoke-virtual {v2, v1, v0}, Landroid/graphics/RectF;->inset(FF)V

    :cond_3
    return-void

    :cond_4
    iget v6, v2, Landroid/graphics/RectF;->top:F

    div-float/2addr v4, v0

    add-float/2addr v4, v6

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_5
    and-int/lit8 v6, p1, 0xf

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget v7, v2, Landroid/graphics/RectF;->right:F

    sub-float v7, v1, v7

    invoke-static {p2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    add-float/2addr v6, v7

    iput v6, v2, Landroid/graphics/RectF;->right:F

    and-int/lit16 v6, p1, 0xf0

    const/16 v7, 0x10

    if-ne v6, v7, :cond_6

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v4, v0

    sub-float v4, v6, v4

    iput v4, v2, Landroid/graphics/RectF;->top:F

    :goto_5
    const/4 p1, 0x0

    goto/16 :goto_1

    :cond_6
    iget v6, v2, Landroid/graphics/RectF;->top:F

    div-float/2addr v4, v0

    add-float/2addr v4, v6

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_5

    :cond_7
    iget v3, v2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto :goto_2

    :cond_8
    and-int/lit16 v6, p1, 0xf0

    const/16 v7, 0x20

    if-ne v6, v7, :cond_1

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v7

    invoke-static {p3, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-float/2addr v3, v6

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    and-int/lit8 v3, p1, 0xf

    const/4 v6, 0x1

    if-ne v3, v6, :cond_9

    iget v3, v2, Landroid/graphics/RectF;->right:F

    mul-float/2addr v5, v0

    sub-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/RectF;->left:F

    :goto_6
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v1, v3, v1

    if-ltz v1, :cond_1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    iget v1, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    :cond_9
    iget v3, v2, Landroid/graphics/RectF;->left:F

    mul-float/2addr v5, v0

    add-float/2addr v3, v5

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto :goto_6

    :cond_a
    and-int/lit8 v4, p1, 0xf

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    iget v1, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    invoke-static {p2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-float/2addr v1, v4

    iput v1, v2, Landroid/graphics/RectF;->left:F

    :cond_b
    :goto_7
    and-int/lit16 v1, p1, 0xf0

    const/16 v4, 0x10

    if-ne v1, v4, :cond_d

    iget v1, v2, Landroid/graphics/RectF;->top:F

    iget v3, v2, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    invoke-static {p3, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    add-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    :cond_c
    and-int/lit8 v4, p1, 0xf

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v5

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    add-float/2addr v1, v4

    iput v1, v2, Landroid/graphics/RectF;->right:F

    goto :goto_7

    :cond_d
    and-int/lit16 v1, p1, 0xf0

    const/16 v4, 0x20

    if-ne v1, v4, :cond_1

    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {p3, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    add-float/2addr v1, v3

    iput v1, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    :cond_e
    move v0, v1

    goto/16 :goto_4
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/PicFolder/aa;->c:Lcom/alensw/PicFolder/q;

    iget-object v14, v2, Lcom/alensw/PicFolder/q;->v:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v15

    invoke-virtual {v14}, Landroid/graphics/RectF;->height()F

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/PicFolder/aa;->c:Lcom/alensw/PicFolder/q;

    invoke-static {v2}, Lcom/alensw/PicFolder/q;->i(Lcom/alensw/PicFolder/q;)I

    move-result v2

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/PicFolder/aa;->c:Lcom/alensw/PicFolder/q;

    invoke-static {v2}, Lcom/alensw/PicFolder/q;->j(Lcom/alensw/PicFolder/q;)I

    move-result v2

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alensw/PicFolder/aa;->b:Landroid/graphics/Paint;

    const/16 v2, 0x80

    const/16 v3, 0x40

    const/16 v4, 0x40

    const/16 v6, 0x40

    invoke-virtual {v7, v2, v3, v4, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v6, v14, Landroid/graphics/RectF;->top:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    iget v4, v14, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v2, p1

    move v6, v8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v9, 0x0

    iget v10, v14, Landroid/graphics/RectF;->top:F

    iget v11, v14, Landroid/graphics/RectF;->left:F

    iget v12, v14, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v8, p1

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v3, v14, Landroid/graphics/RectF;->right:F

    iget v4, v14, Landroid/graphics/RectF;->top:F

    iget v6, v14, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, -0x1

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/PicFolder/aa;->c:Lcom/alensw/PicFolder/q;

    invoke-static {v2}, Lcom/alensw/PicFolder/q;->k(Lcom/alensw/PicFolder/q;)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    neg-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    neg-float v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v14, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    move-object/from16 v0, p1

    invoke-static {v0, v14, v2, v7}, Lcom/alensw/b/l/b;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    neg-float v3, v3

    neg-float v4, v4

    invoke-virtual {v14, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14, v7}, Lcom/alensw/PicFolder/aa;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 v2, 0x40400000    # 3.0f

    div-float v8, v15, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float v9, v16, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alensw/PicFolder/aa;->c:Lcom/alensw/PicFolder/q;

    invoke-static {v2}, Lcom/alensw/PicFolder/q;->l(Lcom/alensw/PicFolder/q;)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v2, v14, Landroid/graphics/RectF;->left:F

    add-float v3, v2, v8

    iget v4, v14, Landroid/graphics/RectF;->top:F

    iget v2, v14, Landroid/graphics/RectF;->left:F

    add-float v5, v2, v8

    iget v6, v14, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, v14, Landroid/graphics/RectF;->right:F

    sub-float v3, v2, v8

    iget v4, v14, Landroid/graphics/RectF;->top:F

    iget v2, v14, Landroid/graphics/RectF;->right:F

    sub-float v5, v2, v8

    iget v6, v14, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v3, v14, Landroid/graphics/RectF;->left:F

    iget v2, v14, Landroid/graphics/RectF;->top:F

    add-float v4, v2, v9

    iget v5, v14, Landroid/graphics/RectF;->right:F

    iget v2, v14, Landroid/graphics/RectF;->top:F

    add-float v6, v2, v9

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v3, v14, Landroid/graphics/RectF;->left:F

    iget v2, v14, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v2, v9

    iget v5, v14, Landroid/graphics/RectF;->right:F

    iget v2, v14, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v2, v9

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v2, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v8

    iget v3, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/alensw/PicFolder/aa;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    iget v2, v14, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v8

    iget v3, v14, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/alensw/PicFolder/aa;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    iget v2, v14, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v8

    iget v3, v14, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/alensw/PicFolder/aa;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    iget v2, v14, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v8

    iget v3, v14, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3, v7}, Lcom/alensw/PicFolder/aa;->a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 3

    iget-object v0, p0, Lcom/alensw/PicFolder/aa;->c:Lcom/alensw/PicFolder/q;

    invoke-static {v0}, Lcom/alensw/PicFolder/q;->n(Lcom/alensw/PicFolder/q;)F

    move-result v0

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/alensw/PicFolder/aa;->d:Landroid/graphics/Path;

    sub-float v2, p2, v0

    invoke-virtual {v1, v2, p3}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v2, p3, v0

    invoke-virtual {v1, p2, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-float v2, p2, v0

    invoke-virtual {v1, v2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v0, p3

    invoke-virtual {v1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1, v1, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 6

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/alensw/PicFolder/aa;->c:Lcom/alensw/PicFolder/q;

    invoke-static {v2}, Lcom/alensw/PicFolder/q;->m(Lcom/alensw/PicFolder/q;)F

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/alensw/PicFolder/aa;->d:Landroid/graphics/Path;

    iget v4, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->moveTo(FF)V

    iget v4, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v2

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget v4, p2, Landroid/graphics/RectF;->left:F

    add-float v5, v0, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    iget v4, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v2

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->moveTo(FF)V

    iget v4, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget v4, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v2

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    iget v0, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float v4, v1, v2

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget v0, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    invoke-virtual {p1, v3, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    return-void
.end method

.method public a()Z
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/aa;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lcom/alensw/PicFolder/aa;->a:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alensw/PicFolder/aa;->a:I

    and-int/lit16 v0, v0, 0xf0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lcom/alensw/PicFolder/aa;->a:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
