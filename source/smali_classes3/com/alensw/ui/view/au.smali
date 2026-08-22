.class public Lcom/alensw/ui/view/au;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/alensw/ui/view/bp;

.field private final b:Landroid/support/v4/widget/j;

.field private final c:Landroid/support/v4/widget/j;

.field private final d:Landroid/support/v4/widget/j;

.field private final e:Landroid/support/v4/widget/j;

.field private f:F

.field private g:F

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(Lcom/alensw/ui/view/bp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/alensw/ui/view/bp;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object p1, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    new-instance v1, Landroid/support/v4/widget/j;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/j;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alensw/ui/view/au;->b:Landroid/support/v4/widget/j;

    new-instance v1, Landroid/support/v4/widget/j;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/j;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alensw/ui/view/au;->c:Landroid/support/v4/widget/j;

    new-instance v1, Landroid/support/v4/widget/j;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/j;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alensw/ui/view/au;->d:Landroid/support/v4/widget/j;

    new-instance v1, Landroid/support/v4/widget/j;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/j;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alensw/ui/view/au;->e:Landroid/support/v4/widget/j;

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 0

    iput p1, p0, Lcom/alensw/ui/view/au;->f:F

    iput p2, p0, Lcom/alensw/ui/view/au;->g:F

    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/alensw/ui/view/au;->h:I

    iput p2, p0, Lcom/alensw/ui/view/au;->i:I

    return-void
.end method

.method public a(IIIIII)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne p1, p3, :cond_3

    if-ne p2, p4, :cond_3

    if-lez p5, :cond_1

    iget v0, p0, Lcom/alensw/ui/view/au;->h:I

    add-int/2addr v0, p3

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/view/au;->d:Landroid/support/v4/widget/j;

    iget v1, p0, Lcom/alensw/ui/view/au;->h:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v2}, Lcom/alensw/ui/view/bp;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/alensw/ui/view/au;->g:F

    iget-object v3, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v3}, Lcom/alensw/ui/view/bp;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/j;->a(FF)Z

    iget-object v0, p0, Lcom/alensw/ui/view/au;->e:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/au;->e:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->b()Z

    :cond_0
    :goto_0
    iput v5, p0, Lcom/alensw/ui/view/au;->h:I

    :cond_1
    if-lez p6, :cond_3

    iget v0, p0, Lcom/alensw/ui/view/au;->i:I

    add-int/2addr v0, p4

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/view/au;->b:Landroid/support/v4/widget/j;

    iget v1, p0, Lcom/alensw/ui/view/au;->i:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v2}, Lcom/alensw/ui/view/bp;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/alensw/ui/view/au;->f:F

    iget-object v3, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v3}, Lcom/alensw/ui/view/bp;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/j;->a(FF)Z

    iget-object v0, p0, Lcom/alensw/ui/view/au;->c:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/au;->c:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->b()Z

    :cond_2
    :goto_1
    iput v5, p0, Lcom/alensw/ui/view/au;->i:I

    :cond_3
    return-void

    :cond_4
    if-le v0, p5, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/au;->e:Landroid/support/v4/widget/j;

    iget v1, p0, Lcom/alensw/ui/view/au;->h:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v2}, Lcom/alensw/ui/view/bp;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/alensw/ui/view/au;->g:F

    iget-object v3, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v3}, Lcom/alensw/ui/view/bp;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/j;->a(FF)Z

    iget-object v0, p0, Lcom/alensw/ui/view/au;->d:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/au;->d:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->b()Z

    goto :goto_0

    :cond_5
    if-le v0, p6, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/au;->c:Landroid/support/v4/widget/j;

    iget v1, p0, Lcom/alensw/ui/view/au;->i:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v2}, Lcom/alensw/ui/view/bp;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/alensw/ui/view/au;->f:F

    iget-object v3, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v3}, Lcom/alensw/ui/view/bp;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float v2, v4, v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/j;->a(FF)Z

    iget-object v0, p0, Lcom/alensw/ui/view/au;->b:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->a()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/au;->b:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->b()Z

    goto :goto_1
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/au;->b:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/au;->c:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/au;->d:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/au;->e:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->a()Z

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

.method public a(Landroid/graphics/Canvas;)Z
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getScrollX()I

    move-result v2

    iget-object v0, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getScrollY()I

    move-result v3

    iget-object v0, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getHeight()I

    move-result v5

    iget-object v0, p0, Lcom/alensw/ui/view/au;->b:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    int-to-float v0, v2

    iget-object v7, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v7}, Lcom/alensw/ui/view/bp;->getPaddingTop()I

    move-result v7

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {p1, v0, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/alensw/ui/view/au;->b:Landroid/support/v4/widget/j;

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/widget/j;->a(II)V

    iget-object v0, p0, Lcom/alensw/ui/view/au;->b:Landroid/support/v4/widget/j;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/j;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/2addr v0, v1

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_0
    iget-object v6, p0, Lcom/alensw/ui/view/au;->c:Landroid/support/v4/widget/j;

    invoke-virtual {v6}, Landroid/support/v4/widget/j;->a()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    neg-int v7, v4

    add-int/2addr v7, v2

    int-to-float v7, v7

    iget-object v8, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v8}, Lcom/alensw/ui/view/bp;->getScrollRangeY()I

    move-result v8

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v8, v5

    iget-object v9, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v9}, Lcom/alensw/ui/view/bp;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v7, 0x43340000    # 180.0f

    int-to-float v8, v4

    const/4 v9, 0x0

    invoke-virtual {p1, v7, v8, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v7, p0, Lcom/alensw/ui/view/au;->c:Landroid/support/v4/widget/j;

    invoke-virtual {v7, v4, v5}, Landroid/support/v4/widget/j;->a(II)V

    iget-object v7, p0, Lcom/alensw/ui/view/au;->c:Landroid/support/v4/widget/j;

    invoke-virtual {v7, p1}, Landroid/support/v4/widget/j;->a(Landroid/graphics/Canvas;)Z

    move-result v7

    or-int/2addr v0, v7

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    iget-object v6, p0, Lcom/alensw/ui/view/au;->d:Landroid/support/v4/widget/j;

    invoke-virtual {v6}, Landroid/support/v4/widget/j;->a()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v6

    const/high16 v7, 0x43870000    # 270.0f

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v7, v5

    sub-int/2addr v7, v3

    int-to-float v7, v7

    iget-object v8, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v8}, Lcom/alensw/ui/view/bp;->getPaddingLeft()I

    move-result v8

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v1, v8

    int-to-float v1, v1

    invoke-virtual {p1, v7, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/alensw/ui/view/au;->d:Landroid/support/v4/widget/j;

    invoke-virtual {v1, v5, v4}, Landroid/support/v4/widget/j;->a(II)V

    iget-object v1, p0, Lcom/alensw/ui/view/au;->d:Landroid/support/v4/widget/j;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/j;->a(Landroid/graphics/Canvas;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/view/au;->e:Landroid/support/v4/widget/j;

    invoke-virtual {v1}, Landroid/support/v4/widget/j;->a()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    int-to-float v3, v3

    iget-object v6, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v6}, Lcom/alensw/ui/view/bp;->getScrollRangeX()I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v4

    iget-object v6, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v6}, Lcom/alensw/ui/view/bp;->getPaddingRight()I

    move-result v6

    sub-int/2addr v2, v6

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/alensw/ui/view/au;->e:Landroid/support/v4/widget/j;

    invoke-virtual {v2, v5, v4}, Landroid/support/v4/widget/j;->a(II)V

    iget-object v2, p0, Lcom/alensw/ui/view/au;->e:Landroid/support/v4/widget/j;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/j;->a(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/au;->b:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->b()Z

    iget-object v0, p0, Lcom/alensw/ui/view/au;->c:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->b()Z

    iget-object v0, p0, Lcom/alensw/ui/view/au;->d:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->b()Z

    iget-object v0, p0, Lcom/alensw/ui/view/au;->e:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->b()Z

    return-void
.end method

.method public b(IIIIII)V
    .locals 2

    if-lez p6, :cond_0

    if-gez p2, :cond_2

    if-ltz p4, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/au;->b:Landroid/support/v4/widget/j;

    iget-object v1, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    iget-object v1, v1, Lcom/alensw/ui/view/bp;->p:Landroid/support/v4/widget/k;

    invoke-virtual {v1}, Landroid/support/v4/widget/k;->e()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/j;->a(I)V

    iget-object v0, p0, Lcom/alensw/ui/view/au;->c:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/au;->c:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->b()Z

    :cond_0
    :goto_0
    if-lez p5, :cond_1

    if-gez p1, :cond_3

    if-ltz p3, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/view/au;->d:Landroid/support/v4/widget/j;

    iget-object v1, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    iget-object v1, v1, Lcom/alensw/ui/view/bp;->p:Landroid/support/v4/widget/k;

    invoke-virtual {v1}, Landroid/support/v4/widget/k;->e()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/j;->a(I)V

    iget-object v0, p0, Lcom/alensw/ui/view/au;->e:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/au;->e:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->b()Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-le p2, p6, :cond_0

    if-gt p4, p6, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/au;->c:Landroid/support/v4/widget/j;

    iget-object v1, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    iget-object v1, v1, Lcom/alensw/ui/view/bp;->p:Landroid/support/v4/widget/k;

    invoke-virtual {v1}, Landroid/support/v4/widget/k;->e()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/j;->a(I)V

    iget-object v0, p0, Lcom/alensw/ui/view/au;->b:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/au;->b:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->b()Z

    goto :goto_0

    :cond_3
    if-le p1, p5, :cond_1

    if-gt p3, p5, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/au;->e:Landroid/support/v4/widget/j;

    iget-object v1, p0, Lcom/alensw/ui/view/au;->a:Lcom/alensw/ui/view/bp;

    iget-object v1, v1, Lcom/alensw/ui/view/bp;->p:Landroid/support/v4/widget/k;

    invoke-virtual {v1}, Landroid/support/v4/widget/k;->e()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/j;->a(I)V

    iget-object v0, p0, Lcom/alensw/ui/view/au;->d:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/au;->d:Landroid/support/v4/widget/j;

    invoke-virtual {v0}, Landroid/support/v4/widget/j;->b()Z

    goto :goto_1
.end method
