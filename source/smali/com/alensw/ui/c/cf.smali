.class Lcom/alensw/ui/c/cf;
.super Lcom/alensw/ui/a/ao;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/alensw/a/ba;

.field final synthetic c:Lcom/alensw/a/bc;

.field final synthetic e:Lcom/alensw/ui/c/bz;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bz;Landroid/app/Activity;Ljava/lang/String;ILjava/util/ArrayList;Lcom/alensw/a/ba;Lcom/alensw/a/bc;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/cf;->e:Lcom/alensw/ui/c/bz;

    iput-object p5, p0, Lcom/alensw/ui/c/cf;->a:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/alensw/ui/c/cf;->b:Lcom/alensw/a/ba;

    iput-object p7, p0, Lcom/alensw/ui/c/cf;->c:Lcom/alensw/a/bc;

    invoke-direct {p0, p2, p3, p4}, Lcom/alensw/ui/a/ao;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 8

    iget-object v0, p0, Lcom/alensw/ui/c/cf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    iget-object v1, p0, Lcom/alensw/ui/c/cf;->b:Lcom/alensw/a/ba;

    invoke-virtual {v0}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alensw/a/ba;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alensw/a/e;->j()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/alensw/a/e;->e(I)Lcom/alensw/a/d;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/io/File;

    iget-object v5, v3, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alensw/ui/c/cf;->b:Lcom/alensw/a/ba;

    iget-char v3, v3, Lcom/alensw/a/d;->c:C

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v3, v7}, Lcom/alensw/a/ba;->a(Ljava/lang/String;CZ)Z

    invoke-static {v4}, Lcom/alensw/b/l/b;->c(Ljava/io/File;)Z

    invoke-virtual {v0, v1}, Lcom/alensw/a/e;->h(I)Z

    iget-object v3, p0, Lcom/alensw/ui/c/cf;->c:Lcom/alensw/a/bc;

    invoke-virtual {v3, v5}, Lcom/alensw/a/bc;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alensw/ui/c/cf;->d()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    invoke-virtual {v0}, Lcom/alensw/a/e;->o()Z

    invoke-static {v0}, Lcom/alensw/a/e;->a(Ljava/io/File;)Z

    invoke-virtual {v0}, Lcom/alensw/a/e;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alensw/a/e;->delete()Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected b()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/ui/c/cf;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/e;

    invoke-virtual {v0}, Lcom/alensw/a/e;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alensw/ui/c/cf;->e:Lcom/alensw/ui/c/bz;

    iget-object v2, v2, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v2, v0}, Lcom/alensw/a/x;->f(Lcom/alensw/a/e;)Lcom/alensw/a/e;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alensw/ui/c/cf;->e:Lcom/alensw/ui/c/bz;

    iget-object v2, v2, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alensw/ui/c/cf;->e:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v0}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/ui/c/cf;->e:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/cx;->d(Z)V

    :cond_2
    iget-object v0, p0, Lcom/alensw/ui/c/cf;->e:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v0}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    return-void
.end method
