.class Lcom/alensw/ui/view/ae;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/ui/view/ImageGridView;


# direct methods
.method constructor <init>(Lcom/alensw/ui/view/ImageGridView;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/view/ae;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/ui/view/ae;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v0}, Lcom/alensw/ui/view/ImageGridView;->f(Lcom/alensw/ui/view/ImageGridView;)Landroid/graphics/RectF;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/view/ae;->a:Lcom/alensw/ui/view/ImageGridView;

    iget-object v0, v0, Lcom/alensw/ui/view/ImageGridView;->o:Lcom/alensw/ui/view/bn;

    invoke-virtual {v0}, Lcom/alensw/ui/view/bn;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/view/ae;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v0}, Lcom/alensw/ui/view/ImageGridView;->g(Lcom/alensw/ui/view/ImageGridView;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/alensw/ui/view/ae;->a:Lcom/alensw/ui/view/ImageGridView;

    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    :goto_0
    invoke-virtual {v2, p0, v0, v1}, Lcom/alensw/ui/view/ImageGridView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_1
    const-wide/16 v0, 0x12c

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/view/ae;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v0}, Lcom/alensw/ui/view/ImageGridView;->h(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v0

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    iget-object v2, p0, Lcom/alensw/ui/view/ae;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v2}, Lcom/alensw/ui/view/ImageGridView;->i(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v2

    iget-object v3, p0, Lcom/alensw/ui/view/ae;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v3}, Lcom/alensw/ui/view/ImageGridView;->j(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v3

    sub-int v3, v2, v3

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/alensw/ui/view/ae;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v2}, Lcom/alensw/ui/view/ImageGridView;->i(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v2

    :goto_3
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alensw/ui/view/ae;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v0}, Lcom/alensw/ui/view/ImageGridView;->i(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v0

    add-int/2addr v0, v3

    :goto_4
    iget-object v3, p0, Lcom/alensw/ui/view/ae;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v3}, Lcom/alensw/ui/view/ImageGridView;->getCount()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v3, p0, Lcom/alensw/ui/view/ae;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v3, v2, v0, v1}, Lcom/alensw/ui/view/ImageGridView;->a(IIZ)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/alensw/ui/view/ae;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v2}, Lcom/alensw/ui/view/ImageGridView;->j(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v2

    sub-int/2addr v2, v3

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/alensw/ui/view/ae;->a:Lcom/alensw/ui/view/ImageGridView;

    invoke-static {v0}, Lcom/alensw/ui/view/ImageGridView;->j(Lcom/alensw/ui/view/ImageGridView;)I

    move-result v0

    goto :goto_4
.end method
