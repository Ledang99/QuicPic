.class Lcom/alensw/ui/view/m;
.super Lcom/alensw/ui/view/bt;


# instance fields
.field final synthetic a:Landroid/graphics/RectF;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:F

.field final synthetic g:F

.field final synthetic h:Lcom/alensw/ui/view/j;

.field private final i:I

.field private final j:I

.field private k:F

.field private l:F


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/j;Landroid/view/View;Landroid/view/animation/Interpolator;Landroid/graphics/RectF;IIIIFF)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    iput-object p4, p0, Lcom/alensw/ui/view/m;->a:Landroid/graphics/RectF;

    iput p5, p0, Lcom/alensw/ui/view/m;->b:I

    iput p6, p0, Lcom/alensw/ui/view/m;->c:I

    iput p7, p0, Lcom/alensw/ui/view/m;->d:I

    iput p8, p0, Lcom/alensw/ui/view/m;->e:I

    iput p9, p0, Lcom/alensw/ui/view/m;->f:F

    iput p10, p0, Lcom/alensw/ui/view/m;->g:F

    invoke-direct {p0, p2, p3}, Lcom/alensw/ui/view/bt;-><init>(Landroid/view/View;Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    iget v0, v0, Lcom/alensw/ui/view/j;->ac:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alensw/ui/view/m;->i:I

    iget-object v0, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    iget v0, v0, Lcom/alensw/ui/view/j;->ac:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alensw/ui/view/m;->j:I

    iget-object v0, p0, Lcom/alensw/ui/view/m;->a:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iput v0, p0, Lcom/alensw/ui/view/m;->k:F

    iget-object v0, p0, Lcom/alensw/ui/view/m;->a:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    iput v0, p0, Lcom/alensw/ui/view/m;->l:F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    iget-object v0, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alensw/ui/view/j;->F:Z

    iget-object v0, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    invoke-static {v0}, Lcom/alensw/ui/view/j;->b(Lcom/alensw/ui/view/j;)Landroid/support/v4/widget/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    invoke-static {v0}, Lcom/alensw/ui/view/j;->b(Lcom/alensw/ui/view/j;)Landroid/support/v4/widget/k;

    move-result-object v0

    iget v1, p0, Lcom/alensw/ui/view/m;->k:F

    float-to-int v1, v1

    iget v2, p0, Lcom/alensw/ui/view/m;->l:F

    float-to-int v2, v2

    iget v3, p0, Lcom/alensw/ui/view/m;->b:I

    iget v4, p0, Lcom/alensw/ui/view/m;->c:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/alensw/ui/view/m;->d:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/alensw/ui/view/m;->e:I

    iget v9, p0, Lcom/alensw/ui/view/m;->i:I

    iget v10, p0, Lcom/alensw/ui/view/m;->j:I

    invoke-virtual/range {v0 .. v10}, Landroid/support/v4/widget/k;->a(IIIIIIIIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    invoke-static {v0}, Lcom/alensw/ui/view/j;->b(Lcom/alensw/ui/view/j;)Landroid/support/v4/widget/k;

    move-result-object v0

    iget v1, p0, Lcom/alensw/ui/view/m;->k:F

    float-to-int v1, v1

    iget v2, p0, Lcom/alensw/ui/view/m;->l:F

    float-to-int v2, v2

    iget v3, p0, Lcom/alensw/ui/view/m;->b:I

    iget v4, p0, Lcom/alensw/ui/view/m;->c:I

    iget v5, p0, Lcom/alensw/ui/view/m;->i:I

    mul-int/lit8 v5, v5, 0x2

    rsub-int/lit8 v5, v5, 0x0

    iget v6, p0, Lcom/alensw/ui/view/m;->d:I

    iget v7, p0, Lcom/alensw/ui/view/m;->i:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/alensw/ui/view/m;->j:I

    mul-int/lit8 v7, v7, 0x2

    rsub-int/lit8 v7, v7, 0x0

    iget v8, p0, Lcom/alensw/ui/view/m;->e:I

    iget v9, p0, Lcom/alensw/ui/view/m;->j:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v10}, Landroid/support/v4/widget/k;->a(IIIIIIIIII)V

    goto :goto_0
.end method

.method public a(F)V
    .locals 7

    iget-object v0, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    invoke-static {v0}, Lcom/alensw/ui/view/j;->b(Lcom/alensw/ui/view/j;)Landroid/support/v4/widget/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    invoke-static {v0}, Lcom/alensw/ui/view/j;->b(Lcom/alensw/ui/view/j;)Landroid/support/v4/widget/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->c()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    invoke-static {v0}, Lcom/alensw/ui/view/j;->b(Lcom/alensw/ui/view/j;)Landroid/support/v4/widget/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->d()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    invoke-static {v0}, Lcom/alensw/ui/view/j;->b(Lcom/alensw/ui/view/j;)Landroid/support/v4/widget/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/alensw/ui/view/m;->d:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/alensw/ui/view/m;->i:I

    rsub-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    :goto_0
    iget v1, p0, Lcom/alensw/ui/view/m;->d:I

    if-lez v1, :cond_5

    iget v1, p0, Lcom/alensw/ui/view/m;->d:I

    iget v2, p0, Lcom/alensw/ui/view/m;->i:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    :goto_1
    iget v2, p0, Lcom/alensw/ui/view/m;->e:I

    if-lez v2, :cond_6

    iget v2, p0, Lcom/alensw/ui/view/m;->j:I

    rsub-int/lit8 v2, v2, 0x0

    int-to-float v2, v2

    :goto_2
    iget v3, p0, Lcom/alensw/ui/view/m;->e:I

    if-lez v3, :cond_7

    iget v3, p0, Lcom/alensw/ui/view/m;->e:I

    iget v6, p0, Lcom/alensw/ui/view/m;->j:I

    add-int/2addr v3, v6

    int-to-float v3, v3

    :goto_3
    cmpg-float v6, v5, v0

    if-gez v6, :cond_8

    :goto_4
    cmpg-float v1, v4, v2

    if-gez v1, :cond_9

    :goto_5
    iget-object v1, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    iget v3, p0, Lcom/alensw/ui/view/m;->k:F

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/alensw/ui/view/m;->l:F

    sub-float/2addr v4, v2

    invoke-virtual {v1, v3, v4}, Lcom/alensw/ui/view/j;->b(FF)V

    iput v0, p0, Lcom/alensw/ui/view/m;->k:F

    iput v2, p0, Lcom/alensw/ui/view/m;->l:F

    iget-object v0, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    invoke-static {v0}, Lcom/alensw/ui/view/j;->b(Lcom/alensw/ui/view/j;)Landroid/support/v4/widget/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/alensw/ui/view/m;->i:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/alensw/ui/view/m;->a:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    const/4 v2, 0x0

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/alensw/ui/view/m;->i:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alensw/ui/view/m;->f:F

    iget-object v2, p0, Lcom/alensw/ui/view/m;->a:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    invoke-static {v0}, Lcom/alensw/ui/view/j;->b(Lcom/alensw/ui/view/j;)Landroid/support/v4/widget/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->g()V

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/view/m;->a:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/alensw/ui/view/m;->j:I

    add-int/lit8 v1, v1, 0x0

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/alensw/ui/view/m;->j:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alensw/ui/view/m;->g:F

    iget-object v2, p0, Lcom/alensw/ui/view/m;->a:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    invoke-static {v0}, Lcom/alensw/ui/view/j;->b(Lcom/alensw/ui/view/j;)Landroid/support/v4/widget/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->g()V

    :cond_3
    :goto_6
    return-void

    :cond_4
    iget v0, p0, Lcom/alensw/ui/view/m;->k:F

    goto/16 :goto_0

    :cond_5
    iget v1, p0, Lcom/alensw/ui/view/m;->k:F

    goto/16 :goto_1

    :cond_6
    iget v2, p0, Lcom/alensw/ui/view/m;->l:F

    goto :goto_2

    :cond_7
    iget v3, p0, Lcom/alensw/ui/view/m;->l:F

    goto :goto_3

    :cond_8
    cmpl-float v0, v5, v1

    if-lez v0, :cond_c

    move v0, v1

    goto :goto_4

    :cond_9
    cmpl-float v1, v4, v3

    if-lez v1, :cond_b

    move v2, v3

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/alensw/ui/view/m;->c()V

    invoke-virtual {p0}, Lcom/alensw/ui/view/m;->b()V

    goto :goto_6

    :cond_b
    move v2, v4

    goto/16 :goto_5

    :cond_c
    move v0, v5

    goto/16 :goto_4

    :cond_d
    move v2, v4

    move v0, v5

    goto/16 :goto_5
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    iget-object v0, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alensw/ui/view/j;->F:Z

    iget-object v0, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    invoke-virtual {v0}, Lcom/alensw/ui/view/j;->l()Z

    return-void
.end method

.method public c()V
    .locals 2

    invoke-super {p0}, Lcom/alensw/ui/view/bt;->c()V

    iget-object v0, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alensw/ui/view/j;->J:Lcom/alensw/ui/view/bt;

    iget-object v0, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alensw/ui/view/j;->F:Z

    iget-object v0, p0, Lcom/alensw/ui/view/m;->h:Lcom/alensw/ui/view/j;

    invoke-static {v0}, Lcom/alensw/ui/view/j;->b(Lcom/alensw/ui/view/j;)Landroid/support/v4/widget/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->g()V

    return-void
.end method
