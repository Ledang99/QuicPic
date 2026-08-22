.class public Lcom/alensw/ui/view/TitleView;
.super Landroid/widget/TextView;


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alensw/ui/view/TitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/alensw/ui/view/TitleView;->a:Z

    iget-boolean v0, p0, Lcom/alensw/ui/view/TitleView;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alensw/ui/view/TitleView;->b:I

    :cond_0
    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleView;->requestLayout()V

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/alensw/ui/view/TitleView;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    iget-object v5, p0, Lcom/alensw/ui/view/TitleView;->c:Landroid/graphics/Path;

    if-nez v5, :cond_1

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    iput-object v5, p0, Lcom/alensw/ui/view/TitleView;->c:Landroid/graphics/Path;

    :goto_0
    iget-object v5, p0, Lcom/alensw/ui/view/TitleView;->c:Landroid/graphics/Path;

    sub-int v6, v0, v2

    int-to-float v6, v6

    sub-int v7, v1, v3

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/alensw/ui/view/TitleView;->c:Landroid/graphics/Path;

    sub-int v6, v0, v2

    iget v7, p0, Lcom/alensw/ui/view/TitleView;->b:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-int v7, v1, v3

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Lcom/alensw/ui/view/TitleView;->c:Landroid/graphics/Path;

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sub-int/2addr v1, v3

    iget v2, p0, Lcom/alensw/ui/view/TitleView;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/alensw/ui/view/TitleView;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-virtual {v4}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xc0

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/alensw/ui/view/TitleView;->c:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/alensw/ui/view/TitleView;->c:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->rewind()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alensw/ui/view/TitleView;->a:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alensw/ui/view/TitleView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/alensw/ui/view/TitleView;->b:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, v0}, Lcom/alensw/ui/view/TitleView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method
