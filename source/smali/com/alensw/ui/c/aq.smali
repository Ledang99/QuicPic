.class Lcom/alensw/ui/c/aq;
.super Lcom/alensw/ui/a/ao;


# instance fields
.field final synthetic a:Ljava/util/HashSet;

.field final synthetic b:Landroid/content/ContentResolver;

.field final synthetic c:Landroid/net/Uri;

.field final synthetic e:Landroid/net/Uri;

.field final synthetic f:Lcom/alensw/a/bc;

.field final synthetic g:Ljava/util/ArrayList;

.field final synthetic h:Lcom/alensw/ui/c/z;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/z;Landroid/app/Activity;Ljava/lang/String;ILjava/util/HashSet;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Lcom/alensw/a/bc;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/aq;->h:Lcom/alensw/ui/c/z;

    iput-object p5, p0, Lcom/alensw/ui/c/aq;->a:Ljava/util/HashSet;

    iput-object p6, p0, Lcom/alensw/ui/c/aq;->b:Landroid/content/ContentResolver;

    iput-object p7, p0, Lcom/alensw/ui/c/aq;->c:Landroid/net/Uri;

    iput-object p8, p0, Lcom/alensw/ui/c/aq;->e:Landroid/net/Uri;

    iput-object p9, p0, Lcom/alensw/ui/c/aq;->f:Lcom/alensw/a/bc;

    iput-object p10, p0, Lcom/alensw/ui/c/aq;->g:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3, p4}, Lcom/alensw/ui/a/ao;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    iget-object v0, p0, Lcom/alensw/ui/c/aq;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/ui/c/aq;->b:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/alensw/ui/c/aq;->c:Landroid/net/Uri;

    iget-object v5, p0, Lcom/alensw/ui/c/aq;->e:Landroid/net/Uri;

    invoke-static {v3, v2, v4, v5}, Lcom/alensw/b/j/a;->a(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alensw/ui/c/aq;->f:Lcom/alensw/a/bc;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/alensw/a/bc;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alensw/ui/c/aq;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/ui/c/aq;->d()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    return-void
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/aq;->h:Lcom/alensw/ui/c/z;

    iget-object v1, p0, Lcom/alensw/ui/c/aq;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/z;->a(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/alensw/ui/c/aq;->h:Lcom/alensw/ui/c/z;

    invoke-virtual {v0}, Lcom/alensw/ui/c/z;->l()Z

    iget-object v0, p0, Lcom/alensw/ui/c/aq;->h:Lcom/alensw/ui/c/z;

    invoke-virtual {v0}, Lcom/alensw/ui/c/z;->n()V

    return-void
.end method
