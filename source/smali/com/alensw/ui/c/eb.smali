.class Lcom/alensw/ui/c/eb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/view/q;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/dp;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/dp;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(FF)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->e(Lcom/alensw/ui/c/dp;)Lcom/alensw/ui/view/PictureView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alensw/ui/view/PictureView;->a(FF)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/alensw/ui/c/eb;->a(FZ)V

    return-void
.end method


# virtual methods
.method public a(IZ)Lcom/alensw/b/h/j;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/alensw/ui/c/dp;->b(Lcom/alensw/ui/c/dp;Z)Z

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    iget-object v2, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v2}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v2

    iget v2, v2, Lcom/alensw/a/e;->c:I

    iget-object v3, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v3}, Lcom/alensw/ui/c/dp;->j(Lcom/alensw/ui/c/dp;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/alensw/ui/c/dp;->a(IZ)I

    move-result v0

    iget-object v2, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v2}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alensw/a/e;->d(I)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v3}, Lcom/alensw/ui/c/dp;->k(Lcom/alensw/ui/c/dp;)Lcom/alensw/b/h/j;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v3}, Lcom/alensw/ui/c/dp;->k(Lcom/alensw/ui/c/dp;)Lcom/alensw/b/h/j;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/alensw/b/h/j;->a(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->k(Lcom/alensw/ui/c/dp;)Lcom/alensw/b/h/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->c()Lcom/alensw/b/h/j;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v3}, Lcom/alensw/ui/c/dp;->k(Lcom/alensw/ui/c/dp;)Lcom/alensw/b/h/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alensw/b/h/j;->m()I

    iget-object v3, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v3, v1}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;Lcom/alensw/b/h/j;)Lcom/alensw/b/h/j;

    :cond_2
    iget-object v3, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    iget-object v4, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    iget-object v5, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v5}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alensw/a/e;->f(I)C

    move-result v0

    invoke-static {v4, v2, v0, p2}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;Landroid/net/Uri;CZ)Lcom/alensw/b/h/j;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;Lcom/alensw/b/h/j;)Lcom/alensw/b/h/j;

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->k(Lcom/alensw/ui/c/dp;)Lcom/alensw/b/h/j;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->k(Lcom/alensw/ui/c/dp;)Lcom/alensw/b/h/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->c()Lcom/alensw/b/h/j;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public a(FF)V
    .locals 6

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    iget-object v0, v0, Lcom/alensw/ui/c/dp;->C:Lcom/alensw/ui/c/cx;

    iget-boolean v0, v0, Lcom/alensw/ui/c/cx;->Q:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    iget-object v2, v2, Lcom/alensw/ui/c/dp;->C:Lcom/alensw/ui/c/cx;

    iget-wide v2, v2, Lcom/alensw/ui/c/cx;->S:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/alensw/ui/c/eb;->b(FF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->l(Lcom/alensw/ui/c/dp;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/alensw/ui/c/eb;->c(FF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    iget v0, v0, Lcom/alensw/ui/c/dp;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    iget-object v0, v0, Lcom/alensw/ui/c/dp;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->v()Z

    goto :goto_0
.end method

.method public a(FZ)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v2}, Lcom/alensw/ui/c/dp;->m(Lcom/alensw/ui/c/dp;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v2}, Lcom/alensw/ui/c/dp;->e(Lcom/alensw/ui/c/dp;)Lcom/alensw/ui/view/PictureView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alensw/ui/view/PictureView;->getPictureType()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v2, v1}, Lcom/alensw/ui/c/dp;->c(Lcom/alensw/ui/c/dp;Z)Z

    iget-object v2, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v2}, Lcom/alensw/ui/c/dp;->n(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/as;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    sget-object v3, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    iget-object v4, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v4}, Lcom/alensw/ui/c/dp;->b(Lcom/alensw/ui/c/dp;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v5}, Lcom/alensw/ui/c/dp;->o(Lcom/alensw/ui/c/dp;)C

    move-result v5

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    iget-object v7, v7, Lcom/alensw/ui/c/dp;->b:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/alensw/a/ao;->a(Landroid/net/Uri;CILandroid/os/Handler;)Lcom/alensw/a/as;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;Lcom/alensw/a/as;)Lcom/alensw/a/as;

    :cond_0
    iget-object v2, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v2}, Lcom/alensw/ui/c/dp;->p(Lcom/alensw/ui/c/dp;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v2}, Lcom/alensw/ui/c/dp;->e(Lcom/alensw/ui/c/dp;)Lcom/alensw/ui/view/PictureView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alensw/ui/view/PictureView;->getTransScale()F

    move-result v2

    iget-object v3, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    const v4, 0x3f733333    # 0.95f

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    const v4, 0x3f866666    # 1.05f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    :goto_0
    invoke-static {v3, v0}, Lcom/alensw/ui/c/dp;->d(Lcom/alensw/ui/c/dp;Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public a(I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v0

    if-eqz v0, :cond_4

    if-lez p1, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    iget-object v4, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v4}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v4

    iget v4, v4, Lcom/alensw/a/e;->c:I

    invoke-virtual {v3, v4, v0}, Lcom/alensw/ui/c/dp;->a(IZ)I

    move-result v3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v0

    iget v0, v0, Lcom/alensw/a/e;->c:I

    if-le v3, v0, :cond_2

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v0

    iget v0, v0, Lcom/alensw/a/e;->c:I

    if-lt v3, v0, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public b(FF)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->l(Lcom/alensw/ui/c/dp;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/alensw/ui/c/eb;->c(FF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    iget v0, v0, Lcom/alensw/ui/c/dp;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    iget-object v0, v0, Lcom/alensw/ui/c/dp;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->v()Z

    goto :goto_0
.end method

.method public b(I)V
    .locals 6

    const/16 v5, 0xbb8

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    if-lez p1, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lcom/alensw/ui/c/dp;->b(Lcom/alensw/ui/c/dp;Z)Z

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    iget-object v3, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v3}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v3

    iget v3, v3, Lcom/alensw/a/e;->c:I

    iget-object v4, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v4}, Lcom/alensw/ui/c/dp;->j(Lcom/alensw/ui/c/dp;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/alensw/ui/c/dp;->a(IZ)I

    move-result v2

    iput v2, v0, Lcom/alensw/a/e;->c:I

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    iget-object v2, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v2}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v3}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v3

    iget v3, v3, Lcom/alensw/a/e;->c:I

    invoke-virtual {v2, v3}, Lcom/alensw/a/e;->d(I)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    iget-object v2, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v2}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v3}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;)Lcom/alensw/a/e;

    move-result-object v3

    iget v3, v3, Lcom/alensw/a/e;->c:I

    invoke-virtual {v2, v3}, Lcom/alensw/a/e;->f(I)C

    move-result v2

    invoke-static {v0, v2}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;C)C

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->k(Lcom/alensw/ui/c/dp;)Lcom/alensw/b/h/j;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->k(Lcom/alensw/ui/c/dp;)Lcom/alensw/b/h/j;

    move-result-object v0

    iget-object v2, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v2}, Lcom/alensw/ui/c/dp;->b(Lcom/alensw/ui/c/dp;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alensw/b/h/j;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->k(Lcom/alensw/ui/c/dp;)Lcom/alensw/b/h/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->c()Lcom/alensw/b/h/j;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-virtual {v2, v0, v1}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/b/h/j;Z)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->k(Lcom/alensw/ui/c/dp;)Lcom/alensw/b/h/j;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v0}, Lcom/alensw/ui/c/dp;->k(Lcom/alensw/ui/c/dp;)Lcom/alensw/b/h/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/b/h/j;->m()I

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alensw/ui/c/dp;->a(Lcom/alensw/ui/c/dp;Lcom/alensw/b/h/j;)Lcom/alensw/b/h/j;

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    iget-object v0, v0, Lcom/alensw/ui/c/dp;->b:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    iget-object v0, v0, Lcom/alensw/ui/c/dp;->b:Landroid/os/Handler;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->u:Lcom/alensw/a/ao;

    iget-object v2, p0, Lcom/alensw/ui/c/eb;->a:Lcom/alensw/ui/c/dp;

    invoke-static {v2}, Lcom/alensw/ui/c/dp;->b(Lcom/alensw/ui/c/dp;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alensw/a/ao;->a(Landroid/net/Uri;)Lcom/alensw/b/h/j;

    move-result-object v0

    goto :goto_1
.end method
