.class public Lcom/alensw/ui/view/v;
.super Lcom/alensw/ui/view/a;


# instance fields
.field protected f:I

.field protected g:I

.field protected h:Z

.field protected i:Z

.field protected j:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alensw/ui/view/a;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/ui/view/v;->f:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alensw/ui/view/a;->a(I)V

    return-void
.end method

.method public bridge synthetic a(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alensw/ui/view/a;->a(Z)V

    return-void
.end method

.method public bridge synthetic a()Z
    .locals 1

    invoke-super {p0}, Lcom/alensw/ui/view/a;->a()Z

    move-result v0

    return v0
.end method

.method protected a(II)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/alensw/ui/view/v;->f:I

    if-ne v2, v1, :cond_3

    iget-object v1, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v1, p1, v1

    iput v1, p0, Lcom/alensw/ui/view/v;->g:I

    :cond_0
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/alensw/ui/view/v;->a(I)V

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/alensw/ui/view/v;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    return v0

    :cond_3
    iget v1, p0, Lcom/alensw/ui/view/v;->f:I

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, p2, v1

    iput v1, p0, Lcom/alensw/ui/view/v;->g:I

    goto :goto_0

    :cond_4
    iget-boolean v2, p0, Lcom/alensw/ui/view/v;->h:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/alensw/ui/view/v;->f:I

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-lt p2, v2, :cond_5

    iget-object v2, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v2, :cond_5

    iget-object v2, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    if-lt p1, v2, :cond_5

    iget-object v2, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge p1, v2, :cond_5

    iput-boolean v1, p0, Lcom/alensw/ui/view/v;->i:Z

    move v0, v1

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/alensw/ui/view/v;->f:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-lt p1, v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    if-lt p2, v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge p2, v2, :cond_1

    iput-boolean v1, p0, Lcom/alensw/ui/view/v;->i:Z

    move v0, v1

    goto :goto_1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/alensw/ui/view/v;->b:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alensw/ui/view/v;->f:I

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v3, v4}, Lcom/alensw/ui/view/v;->a(II)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/alensw/ui/view/v;->b:I

    if-ne v2, v5, :cond_3

    invoke-virtual {p0, v3, v4}, Lcom/alensw/ui/view/v;->c(II)V

    move v2, v0

    :goto_2
    if-eqz v2, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/alensw/ui/view/v;->a(I)V

    iget-object v1, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/alensw/ui/view/v;->e:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/alensw/ui/view/v;->e:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Lcom/alensw/ui/view/v;->i:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, v3, v4}, Lcom/alensw/ui/view/v;->d(II)V

    iput-boolean v1, p0, Lcom/alensw/ui/view/v;->i:Z

    move v2, v0

    goto :goto_2

    :pswitch_2
    iget v2, p0, Lcom/alensw/ui/view/v;->b:I

    if-ne v2, v5, :cond_4

    invoke-virtual {p0, v3, v4}, Lcom/alensw/ui/view/v;->b(II)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/alensw/ui/view/v;->i:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v2, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/alensw/ui/view/v;->a(II)Z

    iput-boolean v1, p0, Lcom/alensw/ui/view/v;->i:Z

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic b(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alensw/ui/view/a;->b(I)V

    return-void
.end method

.method protected b(II)V
    .locals 10

    const/4 v8, 0x1

    const/4 v7, 0x2

    iget-object v0, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v0, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget v0, p0, Lcom/alensw/ui/view/v;->f:I

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget v0, p0, Lcom/alensw/ui/view/v;->g:I

    sub-int v1, p1, v0

    iget-object v0, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    iget-object v6, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v0, v6

    sub-int/2addr v0, v4

    move v9, v0

    move v0, v1

    move v1, v2

    move v2, v9

    :goto_0
    if-ge v0, v1, :cond_3

    move v0, v1

    :cond_0
    :goto_1
    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lt v3, v7, :cond_1

    if-ge v2, v7, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    iget v0, p0, Lcom/alensw/ui/view/v;->f:I

    if-ne v0, v7, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget v0, p0, Lcom/alensw/ui/view/v;->g:I

    sub-int v1, p2, v0

    iget-object v0, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, v2

    iget-object v6, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v0, v6

    sub-int/2addr v0, v5

    move v9, v0

    move v0, v1

    move v1, v2

    move v2, v9

    goto :goto_0

    :cond_3
    add-int v6, v2, v1

    if-le v0, v6, :cond_0

    add-int v0, v2, v1

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/alensw/ui/view/v;->f:I

    if-ne v3, v8, :cond_6

    iget-object v3, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    iget-object v6, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v0, v5, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_5
    :goto_3
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/alensw/ui/view/v;->e(II)V

    goto :goto_2

    :cond_6
    iget v3, p0, Lcom/alensw/ui/view/v;->f:I

    if-ne v3, v7, :cond_5

    iget-object v3, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v0, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3
.end method

.method public bridge synthetic b(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alensw/ui/view/a;->b(Z)V

    return-void
.end method

.method protected c(II)V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lcom/alensw/ui/view/v;->f:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d(II)V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/alensw/ui/view/v;->j:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v1, p0, Lcom/alensw/ui/view/v;->f:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v0, v2, v0

    move v2, v0

    move v0, p1

    :goto_0
    if-ge v0, v1, :cond_3

    move v0, v1

    :cond_0
    :goto_1
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v2}, Lcom/alensw/ui/view/v;->e(II)V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/alensw/ui/view/v;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v0, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    iget-object v3, p0, Lcom/alensw/ui/view/v;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    move v2, v0

    move v0, p2

    goto :goto_0

    :cond_3
    add-int v3, v2, v1

    if-le v0, v3, :cond_0

    add-int v0, v2, v1

    goto :goto_1
.end method

.method protected e(II)V
    .locals 0

    return-void
.end method
