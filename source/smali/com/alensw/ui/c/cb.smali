.class Lcom/alensw/ui/c/cb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/a/e;

.field final synthetic b:Lcom/alensw/ui/c/bz;


# direct methods
.method constructor <init>(Lcom/alensw/ui/c/bz;Lcom/alensw/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/ui/c/cb;->b:Lcom/alensw/ui/c/bz;

    iput-object p2, p0, Lcom/alensw/ui/c/cb;->a:Lcom/alensw/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alensw/ui/c/cb;->b:Lcom/alensw/ui/c/bz;

    iget-object v0, v0, Lcom/alensw/ui/c/bz;->l:Lcom/alensw/a/x;

    iget-object v1, p0, Lcom/alensw/ui/c/cb;->a:Lcom/alensw/a/e;

    invoke-virtual {v0, v1}, Lcom/alensw/a/x;->a(Lcom/alensw/a/e;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/ui/c/cb;->b:Lcom/alensw/ui/c/bz;

    iget-object v1, v1, Lcom/alensw/ui/c/bz;->j:Lcom/alensw/ui/view/ImageGridView;

    invoke-virtual {v1, v0}, Lcom/alensw/ui/view/ImageGridView;->b(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/ui/c/cb;->b:Lcom/alensw/ui/c/bz;

    iget-object v1, p0, Lcom/alensw/ui/c/cb;->a:Lcom/alensw/a/e;

    new-instance v2, Lcom/alensw/ui/c/cc;

    invoke-direct {v2, p0}, Lcom/alensw/ui/c/cc;-><init>(Lcom/alensw/ui/c/cb;)V

    invoke-virtual {v0, v1, v2}, Lcom/alensw/ui/c/bz;->a(Lcom/alensw/a/e;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
