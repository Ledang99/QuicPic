.class Lcom/alensw/transfer/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/a/o;

.field final synthetic b:Lcom/alensw/transfer/a/a;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/a/a;Lcom/alensw/transfer/a/o;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/a/i;->b:Lcom/alensw/transfer/a/a;

    iput-object p2, p0, Lcom/alensw/transfer/a/i;->a:Lcom/alensw/transfer/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/alensw/transfer/a/i;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->b(Lcom/alensw/transfer/a/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alensw/transfer/a/i;->a:Lcom/alensw/transfer/a/o;

    invoke-virtual {v1}, Lcom/alensw/transfer/a/o;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/alensw/transfer/a/i;->b:Lcom/alensw/transfer/a/a;

    iget-object v2, p0, Lcom/alensw/transfer/a/i;->a:Lcom/alensw/transfer/a/o;

    invoke-virtual {v2}, Lcom/alensw/transfer/a/o;->g()Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/transfer/a/i;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v3}, Lcom/alensw/transfer/a/a;->l(Lcom/alensw/transfer/a/a;)Ljava/util/Random;

    move-result-object v3

    const/16 v4, 0x5a

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0xa

    int-to-long v4, v3

    invoke-static {v1, v2, v4, v5}, Lcom/alensw/transfer/a/a;->a(Lcom/alensw/transfer/a/a;Ljava/net/InetAddress;J)V

    :cond_2
    :goto_1
    if-ne v0, v7, :cond_0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/a/i;->a:Lcom/alensw/transfer/a/o;

    invoke-virtual {v0}, Lcom/alensw/transfer/a/o;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/a/i;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v1}, Lcom/alensw/transfer/a/a;->j(Lcom/alensw/transfer/a/a;)Lcom/alensw/transfer/a/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alensw/transfer/a/t;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/alensw/transfer/a/i;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v1}, Lcom/alensw/transfer/a/a;->m(Lcom/alensw/transfer/a/a;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alensw/transfer/a/i;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v3}, Lcom/alensw/transfer/a/a;->n(Lcom/alensw/transfer/a/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (%x)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/transfer/a/i;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v2}, Lcom/alensw/transfer/a/a;->j(Lcom/alensw/transfer/a/a;)Lcom/alensw/transfer/a/t;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alensw/transfer/a/t;->a(Ljava/lang/String;)V

    const-string v2, "DiscoveryManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/transfer/a/i;->b:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->g(Lcom/alensw/transfer/a/a;)V

    iget-object v0, p0, Lcom/alensw/transfer/a/i;->b:Lcom/alensw/transfer/a/a;

    const-wide/16 v2, 0xa

    invoke-static {v0, v2, v3, v6}, Lcom/alensw/transfer/a/a;->a(Lcom/alensw/transfer/a/a;JZ)J

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/alensw/transfer/a/i;->b:Lcom/alensw/transfer/a/a;

    iget-object v2, p0, Lcom/alensw/transfer/a/i;->a:Lcom/alensw/transfer/a/o;

    invoke-static {v1, v2}, Lcom/alensw/transfer/a/a;->a(Lcom/alensw/transfer/a/a;Lcom/alensw/transfer/a/o;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
