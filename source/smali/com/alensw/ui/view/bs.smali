.class Lcom/alensw/ui/view/bs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/bp;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    iget-object v0, v0, Lcom/alensw/ui/view/bp;->p:Landroid/support/v4/widget/k;

    invoke-virtual {v0}, Landroid/support/v4/widget/k;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    iget-object v0, v0, Lcom/alensw/ui/view/bp;->p:Landroid/support/v4/widget/k;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/k;->a(Z)V

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/bp;->a(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getScrollX()I

    move-result v1

    iget-object v0, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getScrollY()I

    move-result v2

    float-to-int v0, p3

    neg-int v3, v0

    float-to-int v0, p4

    neg-int v4, v0

    iget-object v0, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getScrollRangeX()I

    move-result v6

    iget-object v0, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getScrollRangeY()I

    move-result v8

    if-lez v6, :cond_5

    if-lez v3, :cond_4

    if-ge v1, v6, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getClientWidth()I

    move-result v0

    div-int/lit8 v9, v0, 0x2

    :goto_0
    if-lez v8, :cond_7

    if-lez v4, :cond_6

    if-ge v2, v8, :cond_7

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->getClientHeight()I

    move-result v0

    div-int/lit8 v10, v0, 0x2

    :goto_1
    if-nez v9, :cond_2

    if-eqz v10, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    iget-object v0, v0, Lcom/alensw/ui/view/bp;->p:Landroid/support/v4/widget/k;

    move v7, v5

    invoke-virtual/range {v0 .. v10}, Landroid/support/v4/widget/k;->a(IIIIIIIIII)V

    iget-object v0, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bp;->g()V

    iget-object v0, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alensw/ui/view/bp;->b(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    if-gtz v1, :cond_0

    :cond_5
    move v9, v5

    goto :goto_0

    :cond_6
    if-gtz v2, :cond_1

    :cond_7
    move v10, v5

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/bp;->d(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    float-to-int v1, p3

    float-to-int v2, p4

    iget-object v3, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v3}, Lcom/alensw/ui/view/bp;->getScrollX()I

    move-result v3

    iget-object v4, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v4}, Lcom/alensw/ui/view/bp;->getScrollY()I

    move-result v4

    iget-object v5, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    iget v5, v5, Lcom/alensw/ui/view/bp;->i:I

    iget-object v6, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    iget v6, v6, Lcom/alensw/ui/view/bp;->i:I

    invoke-virtual/range {v0 .. v7}, Lcom/alensw/ui/view/bp;->a(IIIIIIZ)Z

    iget-object v0, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alensw/ui/view/bp;->a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    return v7
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/view/bp;->a(Z)V

    iget-object v0, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/bp;->b(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/view/bs;->a:Lcom/alensw/ui/view/bp;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/view/bp;->c(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0
.end method
