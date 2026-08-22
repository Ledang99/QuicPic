.class Lcom/alensw/ui/c/cm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/a/s;


# instance fields
.field final synthetic a:Lcom/alensw/a/e;

.field final synthetic b:Lcom/alensw/ui/c/bz;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bz;Lcom/alensw/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/cm;->b:Lcom/alensw/ui/c/bz;

    iput-object p2, p0, Lcom/alensw/ui/c/cm;->a:Lcom/alensw/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-static {v0, v1}, Lcom/alensw/b/l/b;->a(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alensw/b/l/b;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/cm;->a:Lcom/alensw/a/e;

    invoke-virtual {v1}, Lcom/alensw/a/e;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alensw/ui/c/cm;->b:Lcom/alensw/ui/c/bz;

    iget-object v1, v1, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    iget-object v2, p0, Lcom/alensw/ui/c/cm;->a:Lcom/alensw/a/e;

    invoke-virtual {v1, v2}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;)I

    move-result v1

    iget-object v2, p0, Lcom/alensw/ui/c/cm;->b:Lcom/alensw/ui/c/bz;

    iget-object v2, v2, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v2, v1, v0}, Lcom/alensw/a/x;->a(ILjava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/alensw/ui/c/cm;->b:Lcom/alensw/ui/c/bz;

    iget-object v1, v1, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    invoke-virtual {v1, v0}, Lcom/alensw/a/x;->b(I)Lcom/alensw/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/ui/c/cm;->b:Lcom/alensw/ui/c/bz;

    iget-object v1, v1, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    invoke-virtual {v1}, Lcom/alensw/ui/c/cx;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alensw/ui/c/cm;->b:Lcom/alensw/ui/c/bz;

    iget-object v1, v1, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->clear()V

    iget-object v1, p0, Lcom/alensw/ui/c/cm;->b:Lcom/alensw/ui/c/bz;

    iget-object v1, v1, Lcom/alensw/ui/c/bz;->A:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/alensw/ui/c/cm;->b:Lcom/alensw/ui/c/bz;

    iget-object v1, v1, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v1}, Lcom/alensw/ui/view/ImageGridView;->requestLayout()V

    iget-object v1, p0, Lcom/alensw/ui/c/cm;->b:Lcom/alensw/ui/c/bz;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/c/bz;->d(Lcom/alensw/a/e;)V

    new-instance v0, Lcom/alensw/ui/c/cn;

    iget-object v1, p0, Lcom/alensw/ui/c/cm;->b:Lcom/alensw/ui/c/bz;

    iget-object v1, v1, Lcom/alensw/ui/c/bz;->C:Lcom/alensw/ui/c/cx;

    iget-object v2, p0, Lcom/alensw/ui/c/cm;->b:Lcom/alensw/ui/c/bz;

    const v3, 0x7f0a0068

    invoke-virtual {v2, v3}, Lcom/alensw/ui/c/bz;->g(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alensw/ui/c/cn;-><init>(Lcom/alensw/ui/c/cm;Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/alensw/ui/c/cn;->c()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alensw/ui/c/cm;->b:Lcom/alensw/ui/c/bz;

    iget-object v1, p0, Lcom/alensw/ui/c/cm;->a:Lcom/alensw/a/e;

    invoke-virtual {v1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/bz;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method
