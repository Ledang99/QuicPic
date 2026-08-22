.class Lcom/alensw/PicFolder/u;
.super Lcom/alensw/ui/view/bt;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:Lcom/alensw/PicFolder/q;

.field private g:F


# direct methods
.method constructor <init>(Lcom/alensw/PicFolder/q;Landroid/view/View;Landroid/view/animation/Interpolator;FFFFF)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/PicFolder/u;->f:Lcom/alensw/PicFolder/q;

    iput p4, p0, Lcom/alensw/PicFolder/u;->a:F

    iput p5, p0, Lcom/alensw/PicFolder/u;->b:F

    iput p6, p0, Lcom/alensw/PicFolder/u;->c:F

    iput p7, p0, Lcom/alensw/PicFolder/u;->d:F

    iput p8, p0, Lcom/alensw/PicFolder/u;->e:F

    invoke-direct {p0, p2, p3}, Lcom/alensw/ui/view/bt;-><init>(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/PicFolder/u;->g:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/PicFolder/u;->f:Lcom/alensw/PicFolder/q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alensw/PicFolder/q;->a(Lcom/alensw/PicFolder/q;Z)Z

    iget v0, p0, Lcom/alensw/PicFolder/u;->a:F

    iput v0, p0, Lcom/alensw/PicFolder/u;->g:F

    return-void
.end method

.method public a(F)V
    .locals 5

    iget v0, p0, Lcom/alensw/PicFolder/u;->a:F

    iget v1, p0, Lcom/alensw/PicFolder/u;->b:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/alensw/PicFolder/u;->f:Lcom/alensw/PicFolder/q;

    iget v2, p0, Lcom/alensw/PicFolder/u;->c:F

    iget v3, p0, Lcom/alensw/PicFolder/u;->d:F

    invoke-virtual {v1, v0, v2, v3}, Lcom/alensw/PicFolder/q;->b(FFF)V

    iget-object v1, p0, Lcom/alensw/PicFolder/u;->f:Lcom/alensw/PicFolder/q;

    iget v2, p0, Lcom/alensw/PicFolder/u;->g:F

    div-float v2, v0, v2

    iget v3, p0, Lcom/alensw/PicFolder/u;->c:F

    iget v4, p0, Lcom/alensw/PicFolder/u;->d:F

    invoke-static {v1, v2, v3, v4}, Lcom/alensw/PicFolder/q;->a(Lcom/alensw/PicFolder/q;FFF)V

    iput v0, p0, Lcom/alensw/PicFolder/u;->g:F

    return-void
.end method

.method public b()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/PicFolder/u;->f:Lcom/alensw/PicFolder/q;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alensw/PicFolder/q;->a(Lcom/alensw/PicFolder/q;Lcom/alensw/ui/view/bt;)Lcom/alensw/ui/view/bt;

    iget-object v0, p0, Lcom/alensw/PicFolder/u;->f:Lcom/alensw/PicFolder/q;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alensw/PicFolder/q;->b(Lcom/alensw/PicFolder/q;Z)Z

    iget-object v0, p0, Lcom/alensw/PicFolder/u;->f:Lcom/alensw/PicFolder/q;

    iget v2, p0, Lcom/alensw/PicFolder/u;->e:F

    iget v3, p0, Lcom/alensw/PicFolder/u;->c:F

    iget v4, p0, Lcom/alensw/PicFolder/u;->d:F

    invoke-virtual {v0, v2, v3, v4}, Lcom/alensw/PicFolder/q;->b(FFF)V

    iget-object v0, p0, Lcom/alensw/PicFolder/u;->f:Lcom/alensw/PicFolder/q;

    iget v2, p0, Lcom/alensw/PicFolder/u;->e:F

    iget v3, p0, Lcom/alensw/PicFolder/u;->g:F

    div-float/2addr v2, v3

    iget v3, p0, Lcom/alensw/PicFolder/u;->c:F

    iget v4, p0, Lcom/alensw/PicFolder/u;->d:F

    invoke-static {v0, v2, v3, v4}, Lcom/alensw/PicFolder/q;->a(Lcom/alensw/PicFolder/q;FFF)V

    iget-object v0, p0, Lcom/alensw/PicFolder/u;->f:Lcom/alensw/PicFolder/q;

    iget-object v3, v0, Lcom/alensw/PicFolder/q;->v:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/alensw/PicFolder/u;->f:Lcom/alensw/PicFolder/q;

    invoke-static {v0}, Lcom/alensw/PicFolder/q;->d(Lcom/alensw/PicFolder/q;)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/alensw/PicFolder/u;->f:Lcom/alensw/PicFolder/q;

    invoke-static {v2}, Lcom/alensw/PicFolder/q;->e(Lcom/alensw/PicFolder/q;)I

    move-result v2

    int-to-float v2, v2

    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_2

    iget v0, v3, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    :goto_0
    iget v4, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_3

    iget v2, v3, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    :goto_1
    cmpl-float v4, v0, v1

    if-nez v4, :cond_0

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/alensw/PicFolder/u;->f:Lcom/alensw/PicFolder/q;

    invoke-virtual {v1, v0, v2}, Lcom/alensw/PicFolder/q;->b(FF)V

    invoke-virtual {v3, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_1
    iget-object v0, p0, Lcom/alensw/PicFolder/u;->f:Lcom/alensw/PicFolder/q;

    invoke-virtual {v0}, Lcom/alensw/PicFolder/q;->c()V

    return-void

    :cond_2
    iget v4, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_5

    iget v4, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v4

    goto :goto_0

    :cond_3
    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v2

    if-lez v4, :cond_4

    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v4

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method
