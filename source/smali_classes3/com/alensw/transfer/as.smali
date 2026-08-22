.class Lcom/alensw/transfer/as;
.super Lcom/alensw/ui/a/ao;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/util/LinkedHashSet;

.field final synthetic c:Lcom/alensw/transfer/ac;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/ac;Landroid/app/Activity;Ljava/lang/String;ILjava/util/ArrayList;Ljava/util/LinkedHashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/as;->c:Lcom/alensw/transfer/ac;

    iput-object p5, p0, Lcom/alensw/transfer/as;->a:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/alensw/transfer/as;->b:Ljava/util/LinkedHashSet;

    invoke-direct {p0, p2, p3, p4}, Lcom/alensw/ui/a/ao;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/transfer/as;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alensw/transfer/as;->b:Ljava/util/LinkedHashSet;

    invoke-static {v0}, Lcom/alensw/bean/UriFile;->a(Landroid/net/Uri;)Lcom/alensw/bean/CommonFile;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/transfer/as;->c:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->a(Lcom/alensw/transfer/ac;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/alensw/transfer/as;->c:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->a(Lcom/alensw/transfer/ac;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/as;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/alensw/transfer/as;->c:Lcom/alensw/transfer/ac;

    invoke-static {v0}, Lcom/alensw/transfer/ac;->b(Lcom/alensw/transfer/ac;)V

    return-void
.end method
