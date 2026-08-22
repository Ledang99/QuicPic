.class Lcom/alensw/ui/view/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/ImageGridView;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/ImageGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v1}, Lcom/alensw/ui/view/ImageGridView;->getScrollRangeY()I

    move-result v1

    iget-object v2, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v2}, Lcom/alensw/ui/view/ImageGridView;->getHeight()I

    move-result v2

    iget-object v5, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v5}, Lcom/alensw/ui/view/ImageGridView;->k(Lcom/alensw/ui/view/ImageGridView;)F

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v6}, Lcom/alensw/ui/view/ImageGridView;->k(Lcom/alensw/ui/view/ImageGridView;)F

    move-result v6

    const/high16 v7, 0x42800000    # 64.0f

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v7}, Lcom/alensw/ui/view/ImageGridView;->getPaddingTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    iget-object v8, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v8}, Lcom/alensw/ui/view/ImageGridView;->getPaddingBottom()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v6

    iget-object v9, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v9}, Lcom/alensw/ui/view/ImageGridView;->l(Lcom/alensw/ui/view/ImageGridView;)F

    move-result v9

    iget-object v10, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v10}, Lcom/alensw/ui/view/ImageGridView;->m(Lcom/alensw/ui/view/ImageGridView;)F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_7

    iget-object v9, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v9}, Lcom/alensw/ui/view/ImageGridView;->l(Lcom/alensw/ui/view/ImageGridView;)F

    move-result v9

    cmpg-float v9, v9, v7

    if-gez v9, :cond_7

    iget-object v1, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v1}, Lcom/alensw/ui/view/ImageGridView;->l(Lcom/alensw/ui/view/ImageGridView;)F

    move-result v1

    sub-float v1, v7, v1

    div-float/2addr v1, v6

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    neg-int v0, v0

    invoke-virtual {v1, v4, v0}, Lcom/alensw/ui/view/ImageGridView;->scrollBy(II)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    iget-object v1, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v1}, Lcom/alensw/ui/view/ImageGridView;->n(Lcom/alensw/ui/view/ImageGridView;)F

    move-result v1

    iget-object v2, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v2}, Lcom/alensw/ui/view/ImageGridView;->l(Lcom/alensw/ui/view/ImageGridView;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/view/ImageGridView;->b(FF)I

    move-result v2

    const/4 v0, -0x1

    if-eq v2, v0, :cond_6

    iget-object v0, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v0}, Lcom/alensw/ui/view/ImageGridView;->a(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v0

    if-lt v2, v0, :cond_8

    iget-object v0, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v0}, Lcom/alensw/ui/view/ImageGridView;->a(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v1

    add-int/lit8 v0, v2, 0x1

    :goto_2
    iget-object v2, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v2}, Lcom/alensw/ui/view/ImageGridView;->c(Lcom/alensw/ui/view/ImageGridView;)Lcom/alensw/ui/view/aj;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v2}, Lcom/alensw/ui/view/ImageGridView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v2}, Lcom/alensw/ui/view/ImageGridView;->o(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v2

    iget-object v5, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v5}, Lcom/alensw/ui/view/ImageGridView;->p(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v5

    sub-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v3, :cond_9

    move v2, v3

    :goto_3
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v5}, Lcom/alensw/ui/view/ImageGridView;->c(Lcom/alensw/ui/view/ImageGridView;)Lcom/alensw/ui/view/aj;

    move-result-object v5

    iget-object v6, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v6}, Lcom/alensw/ui/view/ImageGridView;->o(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v6

    iget-object v7, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v7}, Lcom/alensw/ui/view/ImageGridView;->p(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v7

    invoke-interface {v5, v6, v7, v4}, Lcom/alensw/ui/view/aj;->a(IIZ)V

    :cond_3
    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v2}, Lcom/alensw/ui/view/ImageGridView;->o(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v2, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v2}, Lcom/alensw/ui/view/ImageGridView;->p(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v2

    if-eq v2, v0, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v2}, Lcom/alensw/ui/view/ImageGridView;->c(Lcom/alensw/ui/view/ImageGridView;)Lcom/alensw/ui/view/aj;

    move-result-object v2

    invoke-interface {v2, v1, v0, v3}, Lcom/alensw/ui/view/aj;->a(IIZ)V

    :cond_5
    iget-object v2, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v2, v1}, Lcom/alensw/ui/view/ImageGridView;->c(Lcom/alensw/ui/view/ImageGridView;I)I

    iget-object v1, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v1, v0}, Lcom/alensw/ui/view/ImageGridView;->d(Lcom/alensw/ui/view/ImageGridView;I)I

    :cond_6
    iget-object v0, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0, p0}, Lcom/alensw/ui/view/ImageGridView;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_7
    iget-object v7, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v7}, Lcom/alensw/ui/view/ImageGridView;->l(Lcom/alensw/ui/view/ImageGridView;)F

    move-result v7

    iget-object v9, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v9}, Lcom/alensw/ui/view/ImageGridView;->m(Lcom/alensw/ui/view/ImageGridView;)F

    move-result v9

    cmpl-float v7, v7, v9

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v7}, Lcom/alensw/ui/view/ImageGridView;->l(Lcom/alensw/ui/view/ImageGridView;)F

    move-result v7

    int-to-float v9, v2

    sub-float/2addr v9, v8

    cmpl-float v7, v7, v9

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v7}, Lcom/alensw/ui/view/ImageGridView;->l(Lcom/alensw/ui/view/ImageGridView;)F

    move-result v7

    int-to-float v2, v2

    sub-float/2addr v2, v8

    sub-float v2, v7, v2

    div-float/2addr v2, v6

    mul-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int v0, v1, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v1, v4, v0}, Lcom/alensw/ui/view/ImageGridView;->scrollBy(II)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/alensw/ui/view/ai;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v0}, Lcom/alensw/ui/view/ImageGridView;->a(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v0

    move v1, v2

    goto/16 :goto_2

    :cond_9
    move v2, v4

    goto/16 :goto_3
.end method
