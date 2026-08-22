.class Lcom/alensw/transfer/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/a/t;

.field final synthetic b:Lcom/alensw/transfer/a/a;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/a/a;Lcom/alensw/transfer/a/t;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/a/b;->b:Lcom/alensw/transfer/a/a;

    iput-object p2, p0, Lcom/alensw/transfer/a/b;->a:Lcom/alensw/transfer/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alensw/transfer/a/b;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->a(Lcom/alensw/transfer/a/a;)V

    iget-object v0, p0, Lcom/alensw/transfer/a/b;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->b(Lcom/alensw/transfer/a/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/alensw/transfer/a/b;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->c(Lcom/alensw/transfer/a/a;)V

    const-string v0, "DiscoveryManager"

    const-string v1, "create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alensw/transfer/a/b;->b:Lcom/alensw/transfer/a/a;

    const-wide/16 v2, 0xa

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/alensw/transfer/a/a;->a(Lcom/alensw/transfer/a/a;JZ)J

    iget-object v0, p0, Lcom/alensw/transfer/a/b;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->d(Lcom/alensw/transfer/a/a;)Lcom/alensw/b/k/a;

    move-result-object v0

    new-instance v1, Lcom/alensw/transfer/a/k;

    iget-object v2, p0, Lcom/alensw/transfer/a/b;->b:Lcom/alensw/transfer/a/a;

    invoke-direct {v1, v2, v4}, Lcom/alensw/transfer/a/k;-><init>(Lcom/alensw/transfer/a/a;I)V

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/k;)Lcom/alensw/b/k/d;

    iget-object v0, p0, Lcom/alensw/transfer/a/b;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->e(Lcom/alensw/transfer/a/a;)V

    iget-object v0, p0, Lcom/alensw/transfer/a/b;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->f(Lcom/alensw/transfer/a/a;)Lcom/alensw/transfer/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/transfer/a/b;->a:Lcom/alensw/transfer/a/t;

    invoke-interface {v0, v1}, Lcom/alensw/transfer/a/j;->a(Lcom/alensw/transfer/a/t;)V

    :cond_0
    return-void
.end method
