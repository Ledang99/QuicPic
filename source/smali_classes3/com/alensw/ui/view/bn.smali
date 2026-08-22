.class public Lcom/alensw/ui/view/bn;
.super Lcom/alensw/ui/view/v;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Z

.field private E:Ljava/lang/String;

.field private final k:Landroid/graphics/Matrix;

.field private final l:Landroid/graphics/Paint;

.field private final m:Landroid/graphics/Paint;

.field private final n:Landroid/graphics/Rect;

.field private final o:Landroid/graphics/Rect;

.field private final p:Landroid/graphics/Bitmap;

.field private final q:Lcom/alensw/ui/view/bp;

.field private final r:Landroid/graphics/drawable/PaintDrawable;

.field private final s:I

.field private final t:I

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alensw/ui/view/bp;)V
    .locals 13

    const/4 v12, -0x1

    const/high16 v9, 0x40c00000    # 6.0f

    const/high16 v10, 0x40800000    # 4.0f

    const/4 v5, 0x5

    const/high16 v11, 0x40400000    # 3.0f

    invoke-direct {p0, p1, p2}, Lcom/alensw/ui/view/v;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/bn;->k:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/view/bn;->l:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/ui/view/bn;->m:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/bn;->n:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/bn;->o:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/ui/view/bn;->A:I

    const-string v0, ""

    iput-object v0, p0, Lcom/alensw/ui/view/bn;->E:Ljava/lang/String;

    iput-object p2, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v1, v11

    float-to-int v2, v2

    iput v2, p0, Lcom/alensw/ui/view/bn;->s:I

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/alensw/ui/view/bn;->t:I

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->l:Landroid/graphics/Paint;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x41e00000    # 28.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/alensw/ui/view/bn;->u:I

    const/high16 v2, 0x42600000    # 56.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/alensw/ui/view/bn;->v:I

    iget v2, p0, Lcom/alensw/ui/view/bn;->u:I

    iget v3, p0, Lcom/alensw/ui/view/bn;->v:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Lcom/alensw/b/h/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/alensw/ui/view/bn;->p:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->p:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v1

    const/high16 v4, -0x60000000

    invoke-virtual {v2, v3, v1, v1, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/alensw/ui/view/bn;->p:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iget v5, p0, Lcom/alensw/ui/view/bn;->u:I

    int-to-float v5, v5

    const/high16 v6, 0x41900000    # 18.0f

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    mul-float v6, v1, v9

    iget v7, p0, Lcom/alensw/ui/view/bn;->u:I

    int-to-float v7, v7

    mul-float v8, v1, v10

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/alensw/ui/view/bn;->v:I

    int-to-float v8, v8

    mul-float/2addr v9, v1

    sub-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    mul-float v5, v1, v11

    mul-float v6, v1, v11

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2}, Landroid/graphics/Paint;->clearShadowLayer()V

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v10

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    div-float v7, v4, v11

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    sub-float v9, v6, v5

    sub-float v10, v4, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v9, v6, v5

    sub-float v10, v4, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v9, v4, v7

    sub-float/2addr v9, v5

    invoke-virtual {v8, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v9, v6, v5

    add-float v10, v4, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v9, v6, v5

    add-float v10, v4, v7

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr v4, v7

    add-float/2addr v4, v5

    invoke-virtual {v8, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const v4, -0xbbbbbc

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, v8, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v2, p0, Lcom/alensw/ui/view/bn;->m:Landroid/graphics/Paint;

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->m:Landroid/graphics/Paint;

    const/4 v3, 0x2

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v3, v4, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Lcom/alensw/ui/view/bo;

    invoke-direct {v0, p0}, Lcom/alensw/ui/view/bo;-><init>(Lcom/alensw/ui/view/bn;)V

    iput-object v0, p0, Lcom/alensw/ui/view/bn;->r:Landroid/graphics/drawable/PaintDrawable;

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->r:Landroid/graphics/drawable/PaintDrawable;

    mul-float v2, v1, v11

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alensw/ui/view/bn;->x:I

    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alensw/ui/view/bn;->w:I

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/alensw/ui/view/bn;->x:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/bn;->C:I

    return-void
.end method

.method static synthetic a(Lcom/alensw/ui/view/bn;)I
    .locals 1

    iget v0, p0, Lcom/alensw/ui/view/bn;->A:I

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alensw/ui/view/bn;->D:Z

    :cond_0
    invoke-super {p0, p1}, Lcom/alensw/ui/view/v;->a(I)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getScrollX()I

    move-result v6

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getScrollY()I

    move-result v7

    int-to-float v0, v6

    int-to-float v2, v7

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/alensw/ui/view/bn;->f:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/alensw/ui/view/bn;->b:I

    if-ne v0, v9, :cond_4

    iget v0, p0, Lcom/alensw/ui/view/bn;->A:I

    if-ne v0, v9, :cond_2

    iget v0, p0, Lcom/alensw/ui/view/bn;->c:I

    iget v2, p0, Lcom/alensw/ui/view/bn;->d:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/alensw/ui/view/bn;->c:I

    div-int/2addr v0, v2

    add-int/2addr v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/alensw/ui/view/bn;->D:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->E:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->o:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->r:Landroid/graphics/drawable/PaintDrawable;

    iget-object v3, p0, Lcom/alensw/ui/view/bn;->o:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/PaintDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->r:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    iget v3, p0, Lcom/alensw/ui/view/bn;->d:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->r:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/PaintDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->m:Landroid/graphics/Paint;

    iget v3, p0, Lcom/alensw/ui/view/bn;->d:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->save(I)I

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/alensw/ui/view/bn;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/alensw/ui/view/bn;->o:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, p0, Lcom/alensw/ui/view/bn;->x:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/alensw/ui/view/bn;->o:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->E:Ljava/lang/String;

    iget-object v3, p0, Lcom/alensw/ui/view/bn;->o:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/alensw/ui/view/bn;->x:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/alensw/ui/view/bn;->o:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/alensw/ui/view/bn;->x:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/alensw/ui/view/bn;->m:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/alensw/ui/view/bn;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    iget-object v2, p0, Lcom/alensw/ui/view/bn;->p:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->k:Landroid/graphics/Matrix;

    int-to-float v3, v1

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->save(I)I

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->k:Landroid/graphics/Matrix;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->l:Landroid/graphics/Paint;

    iget v3, p0, Lcom/alensw/ui/view/bn;->d:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->p:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/alensw/ui/view/bn;->l:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v10, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->k:Landroid/graphics/Matrix;

    neg-int v1, v1

    int-to-float v1, v1

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    :goto_1
    neg-int v0, v6

    int-to-float v0, v0

    neg-int v1, v7

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    :cond_2
    iget v0, p0, Lcom/alensw/ui/view/bn;->A:I

    if-ne v0, v4, :cond_4

    iget v0, p0, Lcom/alensw/ui/view/bn;->c:I

    iget v2, p0, Lcom/alensw/ui/view/bn;->d:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/2addr v0, v2

    iget v2, p0, Lcom/alensw/ui/view/bn;->c:I

    div-int/2addr v0, v2

    add-int/2addr v0, v1

    move v11, v1

    move v1, v0

    move v0, v11

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/view/bn;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alensw/ui/view/bn;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alensw/ui/view/bn;->l:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method

.method protected a(II)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/alensw/ui/view/v;->a(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alensw/ui/view/bn;->D:Z

    iget-boolean v1, p0, Lcom/alensw/ui/view/bn;->D:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/bn;->d()V

    :cond_0
    return v0
.end method

.method protected b()V
    .locals 5

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->n:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->n:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->n:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->n:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->n:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/alensw/ui/view/bn;->n:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/alensw/ui/view/bn;->n:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->postInvalidateOnAnimation(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/bn;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->n:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 9

    const/4 v8, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getScrollMode()I

    move-result v0

    iget v2, p0, Lcom/alensw/ui/view/bn;->A:I

    if-eq v2, v0, :cond_0

    iput v0, p0, Lcom/alensw/ui/view/bn;->A:I

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget v0, p0, Lcom/alensw/ui/view/bn;->A:I

    if-ne v0, v6, :cond_5

    iget v0, p0, Lcom/alensw/ui/view/bn;->v:I

    iput v0, p0, Lcom/alensw/ui/view/bn;->y:I

    iget v0, p0, Lcom/alensw/ui/view/bn;->u:I

    iput v0, p0, Lcom/alensw/ui/view/bn;->z:I

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->k:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/alensw/ui/view/bn;->u:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/alensw/ui/view/bn;->v:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->k:Landroid/graphics/Matrix;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->k:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/alensw/ui/view/bn;->y:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    iget v3, p0, Lcom/alensw/ui/view/bn;->z:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->k:Landroid/graphics/Matrix;

    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Lcom/alensw/ui/view/bn;->y:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget v4, p0, Lcom/alensw/ui/view/bn;->z:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v0, v2, v7, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    :goto_0
    iget v0, p0, Lcom/alensw/ui/view/bn;->A:I

    if-ne v0, v6, :cond_6

    iput v6, p0, Lcom/alensw/ui/view/bn;->f:I

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getClientWidth()I

    move-result v2

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getScrollRangeX()I

    move-result v0

    :goto_1
    if-ltz v2, :cond_1

    mul-int/lit8 v2, v2, 0x3

    if-ge v0, v2, :cond_2

    :cond_1
    iput v1, p0, Lcom/alensw/ui/view/bn;->f:I

    move p1, v1

    :cond_2
    if-eqz p1, :cond_8

    const/16 v0, 0xff

    :goto_2
    iput v0, p0, Lcom/alensw/ui/view/bn;->c:I

    iget v0, p0, Lcom/alensw/ui/view/bn;->b:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/alensw/ui/view/bn;->A:I

    if-ne v0, v6, :cond_b

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getClientWidth()I

    move-result v2

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getScrollPosX()F

    move-result v0

    const/4 v3, 0x0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    if-eqz p1, :cond_9

    iget v0, p0, Lcom/alensw/ui/view/bn;->y:I

    :goto_3
    sub-int v1, v2, v0

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v3, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v3}, Lcom/alensw/ui/view/bp;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v1}, Lcom/alensw/ui/view/bp;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v2}, Lcom/alensw/ui/view/bp;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/alensw/ui/view/bn;->s:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz p1, :cond_a

    iget v0, p0, Lcom/alensw/ui/view/bn;->z:I

    :goto_4
    sub-int v0, v2, v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    :cond_3
    :goto_5
    invoke-virtual {p0, v6}, Lcom/alensw/ui/view/bn;->a(Z)V

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/bp;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/alensw/ui/view/bp;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_6
    return-void

    :cond_5
    iget v0, p0, Lcom/alensw/ui/view/bn;->u:I

    iput v0, p0, Lcom/alensw/ui/view/bn;->y:I

    iget v0, p0, Lcom/alensw/ui/view/bn;->v:I

    iput v0, p0, Lcom/alensw/ui/view/bn;->z:I

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/alensw/ui/view/bn;->A:I

    if-ne v0, v8, :cond_7

    iput v8, p0, Lcom/alensw/ui/view/bn;->f:I

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getClientHeight()I

    move-result v2

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getScrollRangeY()I

    move-result v0

    goto/16 :goto_1

    :cond_7
    iput v1, p0, Lcom/alensw/ui/view/bn;->f:I

    invoke-virtual {p0, v1}, Lcom/alensw/ui/view/bn;->a(Z)V

    goto :goto_6

    :cond_8
    const/16 v0, 0x80

    goto/16 :goto_2

    :cond_9
    if-lez v2, :cond_f

    int-to-float v0, v2

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v1}, Lcom/alensw/ui/view/bp;->getScrollRangeX()I

    move-result v1

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/alensw/ui/view/bn;->t:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    goto/16 :goto_3

    :cond_a
    iget v0, p0, Lcom/alensw/ui/view/bn;->s:I

    goto :goto_4

    :cond_b
    iget v0, p0, Lcom/alensw/ui/view/bn;->A:I

    if-ne v0, v8, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getClientHeight()I

    move-result v0

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v2}, Lcom/alensw/ui/view/bp;->getScrollPosY()F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    if-eqz p1, :cond_d

    iget v1, p0, Lcom/alensw/ui/view/bn;->z:I

    :cond_c
    :goto_7
    sub-int/2addr v0, v1

    iget-object v3, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v2}, Lcom/alensw/ui/view/bp;->getPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v3, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v1}, Lcom/alensw/ui/view/bp;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v2}, Lcom/alensw/ui/view/bp;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/alensw/ui/view/bn;->s:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-eqz p1, :cond_e

    iget v0, p0, Lcom/alensw/ui/view/bn;->y:I

    :goto_8
    sub-int v0, v2, v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_5

    :cond_d
    if-lez v0, :cond_c

    int-to-float v1, v0

    iget-object v3, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v3}, Lcom/alensw/ui/view/bp;->getScrollRangeY()I

    move-result v3

    add-int/2addr v3, v0

    int-to-float v3, v3

    div-float/2addr v1, v3

    int-to-float v3, v0

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/alensw/ui/view/bn;->t:I

    int-to-float v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    goto :goto_7

    :cond_e
    iget v0, p0, Lcom/alensw/ui/view/bn;->s:I

    goto :goto_8

    :cond_f
    move v0, v1

    goto/16 :goto_3
.end method

.method protected d()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v0, p0, Lcom/alensw/ui/view/bn;->A:I

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/alensw/ui/view/bn;->B:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/alensw/ui/view/bn;->B:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/alensw/ui/view/bn;->C:I

    sub-int v3, v2, v3

    iget-object v4, p0, Lcom/alensw/ui/view/bn;->o:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/alensw/ui/view/bn;->A:I

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v1}, Lcom/alensw/ui/view/bp;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v2}, Lcom/alensw/ui/view/bp;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ge v2, v0, :cond_3

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->o:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0, v5}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lcom/alensw/ui/view/bn;->A:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alensw/ui/view/bn;->B:I

    sub-int v1, v0, v1

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/alensw/ui/view/bn;->j:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/alensw/ui/view/bn;->C:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/alensw/ui/view/bn;->C:I

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/alensw/ui/view/bn;->o:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/view/bn;->o:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->o:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/alensw/ui/view/bn;->o:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1
.end method

.method protected e(II)V
    .locals 4

    const/4 v3, 0x1

    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iget v1, p0, Lcom/alensw/ui/view/bn;->A:I

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/view/bp;->setScrollPosX(F)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_1

    add-int/lit8 v0, v1, -0x20

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/view/bn;->E:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_5

    :goto_1
    iput-object v0, p0, Lcom/alensw/ui/view/bn;->E:Ljava/lang/String;

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->m:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/alensw/ui/view/bn;->x:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/alensw/ui/view/bn;->w:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/alensw/ui/view/bn;->B:I

    :cond_2
    iget-boolean v0, p0, Lcom/alensw/ui/view/bn;->D:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alensw/ui/view/bn;->d()V

    :cond_3
    return-void

    :cond_4
    iget v1, p0, Lcom/alensw/ui/view/bn;->A:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/view/bn;->q:Lcom/alensw/ui/view/bp;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/view/bp;->setScrollPosY(F)V

    goto :goto_0

    :cond_5
    const-string v0, ""

    goto :goto_1
.end method

.method public f(II)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/alensw/ui/view/bn;->r:Landroid/graphics/drawable/PaintDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
