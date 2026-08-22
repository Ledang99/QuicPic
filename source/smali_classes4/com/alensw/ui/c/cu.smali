.class public Lcom/alensw/ui/c/cu;
.super Ljava/lang/Object;


# instance fields
.field protected C:Lcom/alensw/ui/c/cx;

.field protected D:Landroid/view/View;

.field protected E:Landroid/content/Intent;

.field protected F:Ljava/lang/CharSequence;

.field protected G:Ljava/lang/CharSequence;

.field protected H:I

.field protected I:Z

.field protected J:Z

.field protected final K:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alensw/ui/c/cv;

    invoke-direct {v0, p0}, Lcom/alensw/ui/c/cv;-><init>(Lcom/alensw/ui/c/cu;)V

    iput-object v0, p0, Lcom/alensw/ui/c/cu;->K:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/ui/c/cu;->I:Z

    return v0
.end method

.method public B()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/cu;->F:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public C()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/cu;->G:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public D()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    return-object v0
.end method

.method public E()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/cu;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->d()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/cu;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, p0}, Lcom/alensw/ui/c/cx;->c(Lcom/alensw/ui/c/cu;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/cu;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->finish()V

    goto :goto_0
.end method

.method public F()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/cu;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public G()Landroid/graphics/RectF;
    .locals 7

    iget-object v0, p0, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v0, p0, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v0, p0, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v1, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :cond_1
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, v3

    int-to-float v6, v2

    add-int/2addr v1, v3

    int-to-float v1, v1

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-direct {v4, v5, v6, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method public a(ZLandroid/graphics/RectF;)J
    .locals 6

    invoke-virtual {p0}, Lcom/alensw/ui/c/cu;->G()Landroid/graphics/RectF;

    move-result-object v0

    sget-boolean v1, Lcom/alensw/ui/c/cx;->G:Z

    iget-object v2, p0, Lcom/alensw/ui/c/cu;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v2, p1, v1, p2, v0}, Lcom/alensw/ui/c/cx;->a(ZZLandroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    new-instance v4, Lcom/alensw/ui/c/cw;

    invoke-direct {v4, p0, v0}, Lcom/alensw/ui/c/cw;-><init>(Lcom/alensw/ui/c/cu;Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(IIII)V
    .locals 0

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/view/KeyEvent;Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    iget-object v0, p0, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/cu;->K:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Lcom/alensw/ui/c/cu;->F:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/alensw/ui/c/cu;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/cu;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/c/cx;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Lcom/alensw/ui/c/cu;->G:Ljava/lang/CharSequence;

    iget v0, p0, Lcom/alensw/ui/c/cu;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/cu;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/c/cx;->a(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/alensw/ui/c/cu;->J:Z

    iget v0, p0, Lcom/alensw/ui/c/cu;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/cu;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/c/cx;->i(Z)V

    :cond_0
    return-void
.end method

.method protected c(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected d(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(I)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/alensw/ui/c/cu;->H:I

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/alensw/ui/c/cu;->H:I

    invoke-virtual {p0}, Lcom/alensw/ui/c/cu;->a()V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/alensw/ui/c/cu;->H:I

    if-nez v0, :cond_1

    iput v1, p0, Lcom/alensw/ui/c/cu;->H:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/alensw/ui/c/cu;->H:I

    if-ne v0, v2, :cond_0

    iput v1, p0, Lcom/alensw/ui/c/cu;->H:I

    invoke-virtual {p0}, Lcom/alensw/ui/c/cu;->b()V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/alensw/ui/c/cu;->H:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/alensw/ui/c/cu;->e(I)V

    :cond_2
    iget v0, p0, Lcom/alensw/ui/c/cu;->H:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alensw/ui/c/cu;->g()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/ui/c/cu;->H:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public f(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/ui/c/cu;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0, p1}, Lcom/alensw/ui/c/cx;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/cu;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/cu;->K:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public h()Landroid/graphics/RectF;
    .locals 4

    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/alensw/ui/c/cu;->G()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    return-object v0
.end method

.method public h(I)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/cu;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/ui/c/cu;->b(Landroid/view/View;)V

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method protected j()[Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected k()V
    .locals 0

    return-void
.end method
