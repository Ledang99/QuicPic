.class Lcom/alensw/ui/c/bv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/ui/c/n;


# instance fields
.field final synthetic a:Lcom/alensw/ui/c/bf;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bf;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/bv;->a:Lcom/alensw/ui/c/bf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/ui/c/bv;->a:Lcom/alensw/ui/c/bf;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alensw/ui/c/bf;->a(Z)V

    return-void
.end method

.method public a(ZLjava/util/HashSet;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alensw/ui/c/bv;->a:Lcom/alensw/ui/c/bf;

    invoke-virtual {v0, p2}, Lcom/alensw/ui/c/bf;->a(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/alensw/ui/c/bv;->a:Lcom/alensw/ui/c/bf;

    invoke-virtual {v0}, Lcom/alensw/ui/c/bf;->l()Z

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/bv;->a:Lcom/alensw/ui/c/bf;

    invoke-virtual {v0}, Lcom/alensw/ui/c/bf;->o()V

    return-void
.end method
