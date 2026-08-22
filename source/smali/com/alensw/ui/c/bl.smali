.class Lcom/alensw/ui/c/bl;
.super Lcom/alensw/ui/a/ao;


# instance fields
.field final synthetic a:Ljava/util/HashSet;

.field final synthetic b:Lcom/alensw/a/ba;

.field final synthetic c:Lcom/alensw/a/bc;

.field final synthetic e:Ljava/util/ArrayList;

.field final synthetic f:Lcom/alensw/ui/c/bf;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bf;Landroid/app/Activity;Ljava/lang/String;ILjava/util/HashSet;Lcom/alensw/a/ba;Lcom/alensw/a/bc;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/bl;->f:Lcom/alensw/ui/c/bf;

    iput-object p5, p0, Lcom/alensw/ui/c/bl;->a:Ljava/util/HashSet;

    iput-object p6, p0, Lcom/alensw/ui/c/bl;->b:Lcom/alensw/a/ba;

    iput-object p7, p0, Lcom/alensw/ui/c/bl;->c:Lcom/alensw/a/bc;

    iput-object p8, p0, Lcom/alensw/ui/c/bl;->e:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3, p4}, Lcom/alensw/ui/a/ao;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    iget-object v0, p0, Lcom/alensw/ui/c/bl;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/a/d;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alensw/ui/c/bl;->f:Lcom/alensw/ui/c/bf;

    iget-object v3, v3, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    iget-object v4, v0, Lcom/alensw/a/d;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/alensw/b/l/b;->c(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alensw/ui/c/bl;->b:Lcom/alensw/a/ba;

    iget-char v4, v0, Lcom/alensw/a/d;->c:C

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/alensw/a/ba;->a(Ljava/lang/String;CZ)Z

    iget-object v2, p0, Lcom/alensw/ui/c/bl;->c:Lcom/alensw/a/bc;

    invoke-virtual {v2, v3}, Lcom/alensw/a/bc;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alensw/ui/c/bl;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/ui/c/bl;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return-void
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/bl;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bl;->f:Lcom/alensw/ui/c/bf;

    iget-object v1, p0, Lcom/alensw/ui/c/bl;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/bf;->a(Ljava/util/Collection;)V

    sget-object v0, Lcom/alensw/PicFolder/QuickApp;->o:Lcom/alensw/a/x;

    iget-object v1, p0, Lcom/alensw/ui/c/bl;->f:Lcom/alensw/ui/c/bf;

    iget-object v1, v1, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;Z)V

    :goto_0
    iget-object v0, p0, Lcom/alensw/ui/c/bl;->f:Lcom/alensw/ui/c/bf;

    invoke-virtual {v0}, Lcom/alensw/ui/c/bf;->o()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/bl;->f:Lcom/alensw/ui/c/bf;

    iget-object v1, p0, Lcom/alensw/ui/c/bl;->f:Lcom/alensw/ui/c/bf;

    iget-object v1, v1, Lcom/alensw/ui/c/bf;->g:Lcom/alensw/a/e;

    invoke-virtual {v1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alensw/b/l/b;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/bf;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method
