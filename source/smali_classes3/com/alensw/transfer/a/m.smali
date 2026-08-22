.class Lcom/alensw/transfer/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/a/k;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/a/m;->a:Lcom/alensw/transfer/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/alensw/transfer/a/m;->a:Lcom/alensw/transfer/a/k;

    iget-object v0, v0, Lcom/alensw/transfer/a/k;->a:Lcom/alensw/transfer/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v6, v1}, Lcom/alensw/transfer/a/a;->a(Lcom/alensw/transfer/a/a;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v0, p0, Lcom/alensw/transfer/a/m;->a:Lcom/alensw/transfer/a/k;

    iget-object v0, v0, Lcom/alensw/transfer/a/k;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->k(Lcom/alensw/transfer/a/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    iget-object v3, p0, Lcom/alensw/transfer/a/m;->a:Lcom/alensw/transfer/a/k;

    iget-object v3, v3, Lcom/alensw/transfer/a/k;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v3}, Lcom/alensw/transfer/a/a;->b(Lcom/alensw/transfer/a/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eq v3, v6, :cond_2

    iget-object v3, p0, Lcom/alensw/transfer/a/m;->a:Lcom/alensw/transfer/a/k;

    iget-object v3, v3, Lcom/alensw/transfer/a/k;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v3}, Lcom/alensw/transfer/a/a;->b(Lcom/alensw/transfer/a/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/alensw/transfer/a/m;->a:Lcom/alensw/transfer/a/k;

    iget-object v3, v3, Lcom/alensw/transfer/a/k;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v3}, Lcom/alensw/transfer/a/a;->k(Lcom/alensw/transfer/a/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lcom/alensw/transfer/a/a;->b()Lcom/alensw/transfer/a/t;

    move-result-object v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/alensw/transfer/a/m;->a:Lcom/alensw/transfer/a/k;

    iget-object v3, v3, Lcom/alensw/transfer/a/k;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v3, v1, v0}, Lcom/alensw/transfer/a/a;->a(Lcom/alensw/transfer/a/a;Ljava/nio/ByteBuffer;Ljava/net/InetAddress;)Z

    const-string v3, "DiscoveryManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send to peer hub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
