.class Lcom/alensw/transfer/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/nio/ByteBuffer;

.field final synthetic b:Lcom/alensw/transfer/a/a;

.field private c:I


# direct methods
.method constructor <init>(Lcom/alensw/transfer/a/a;Ljava/nio/ByteBuffer;)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/transfer/a/f;->b:Lcom/alensw/transfer/a/a;

    iput-object p2, p0, Lcom/alensw/transfer/a/f;->a:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/transfer/a/f;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget v0, p0, Lcom/alensw/transfer/a/f;->c:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/transfer/a/f;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->b(Lcom/alensw/transfer/a/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const-string v0, "DiscoveryManager"

    const-string v1, "updating..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alensw/transfer/a/f;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->f(Lcom/alensw/transfer/a/a;)Lcom/alensw/transfer/a/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alensw/transfer/a/f;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v1}, Lcom/alensw/transfer/a/a;->j(Lcom/alensw/transfer/a/a;)Lcom/alensw/transfer/a/t;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alensw/transfer/a/j;->a(Lcom/alensw/transfer/a/t;)V

    :cond_0
    iget v0, p0, Lcom/alensw/transfer/a/f;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alensw/transfer/a/f;->c:I

    iget-object v0, p0, Lcom/alensw/transfer/a/f;->b:Lcom/alensw/transfer/a/a;

    iget-object v1, p0, Lcom/alensw/transfer/a/f;->a:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alensw/transfer/a/a;->a(Lcom/alensw/transfer/a/a;Ljava/nio/ByteBuffer;Z)V

    return-void

    :cond_1
    iget v0, p0, Lcom/alensw/transfer/a/f;->c:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/a/f;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->k(Lcom/alensw/transfer/a/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/a/t;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alensw/transfer/a/a;->b()Lcom/alensw/transfer/a/t;

    move-result-object v2

    if-eq v0, v2, :cond_2

    iget-wide v2, v0, Lcom/alensw/transfer/a/t;->a:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/alensw/transfer/a/f;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v2}, Lcom/alensw/transfer/a/a;->k(Lcom/alensw/transfer/a/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alensw/transfer/a/t;->b()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/alensw/transfer/a/f;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v2}, Lcom/alensw/transfer/a/a;->f(Lcom/alensw/transfer/a/a;)Lcom/alensw/transfer/a/j;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2, v0}, Lcom/alensw/transfer/a/j;->c(Lcom/alensw/transfer/a/t;)V

    :cond_3
    const-string v2, "DiscoveryManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drop timeout peer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
