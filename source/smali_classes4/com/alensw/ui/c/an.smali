.class Lcom/alensw/ui/c/an;
.super Lcom/alensw/ui/a/ao;


# instance fields
.field final synthetic a:Ljava/util/HashSet;

.field final synthetic b:Landroid/content/ContentResolver;

.field final synthetic c:Lcom/alensw/a/bc;

.field final synthetic e:Ljava/util/ArrayList;

.field final synthetic f:Lcom/alensw/ui/c/z;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/z;Landroid/app/Activity;Ljava/lang/String;ILjava/util/HashSet;Landroid/content/ContentResolver;Lcom/alensw/a/bc;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/an;->f:Lcom/alensw/ui/c/z;

    iput-object p5, p0, Lcom/alensw/ui/c/an;->a:Ljava/util/HashSet;

    iput-object p6, p0, Lcom/alensw/ui/c/an;->b:Landroid/content/ContentResolver;

    iput-object p7, p0, Lcom/alensw/ui/c/an;->c:Lcom/alensw/a/bc;

    iput-object p8, p0, Lcom/alensw/ui/c/an;->e:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3, p4}, Lcom/alensw/ui/a/ao;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alensw/ui/c/an;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v3

    iget-object v1, p0, Lcom/alensw/ui/c/an;->f:Lcom/alensw/ui/c/z;

    iget-boolean v1, v1, Lcom/alensw/ui/c/z;->m:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alensw/ui/c/an;->b:Landroid/content/ContentResolver;

    invoke-virtual {v1, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alensw/ui/c/an;->c:Lcom/alensw/a/bc;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alensw/a/bc;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alensw/ui/c/an;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/ui/c/an;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/alensw/ui/c/an;->b:Landroid/content/ContentResolver;

    invoke-static {v1, v3}, Lcom/alensw/b/j/a;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v1

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/an;->f:Lcom/alensw/ui/c/z;

    iget-object v1, p0, Lcom/alensw/ui/c/an;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/z;->a(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/alensw/ui/c/an;->f:Lcom/alensw/ui/c/z;

    invoke-virtual {v0}, Lcom/alensw/ui/c/z;->l()Z

    iget-object v0, p0, Lcom/alensw/ui/c/an;->f:Lcom/alensw/ui/c/z;

    invoke-virtual {v0}, Lcom/alensw/ui/c/z;->n()V

    return-void
.end method
