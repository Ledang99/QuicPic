.class Lcom/alensw/transfer/bh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/TransferService;

.field private b:Lcom/alensw/transfer/d;


# direct methods
.method public constructor <init>(Lcom/alensw/transfer/TransferService;Lcom/alensw/transfer/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/bh;->a:Lcom/alensw/transfer/TransferService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alensw/transfer/bh;->b:Lcom/alensw/transfer/d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "TransferService"

    const-string v1, "dispatch Session task"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/alensw/transfer/bh;->b:Lcom/alensw/transfer/d;

    invoke-virtual {v0}, Lcom/alensw/transfer/d;->j()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/transfer/f;

    new-instance v3, Lcom/alensw/transfer/bf;

    iget-object v4, p0, Lcom/alensw/transfer/bh;->a:Lcom/alensw/transfer/TransferService;

    iget-object v5, p0, Lcom/alensw/transfer/bh;->b:Lcom/alensw/transfer/d;

    invoke-direct {v3, v4, v0, v5}, Lcom/alensw/transfer/bf;-><init>(Lcom/alensw/transfer/TransferService;Lcom/alensw/transfer/f;Lcom/alensw/transfer/d;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/bh;->a:Lcom/alensw/transfer/TransferService;

    invoke-static {v0}, Lcom/alensw/transfer/TransferService;->d(Lcom/alensw/transfer/TransferService;)Lcom/alensw/b/k/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/a;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/alensw/transfer/bh;->b:Lcom/alensw/transfer/d;

    invoke-virtual {v0}, Lcom/alensw/transfer/d;->h()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alensw/transfer/bh;->b:Lcom/alensw/transfer/d;

    invoke-virtual {v2}, Lcom/alensw/transfer/d;->i()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iget-object v2, p0, Lcom/alensw/transfer/bh;->b:Lcom/alensw/transfer/d;

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    :goto_3
    invoke-virtual {v2, v1}, Lcom/alensw/transfer/d;->a(I)V

    iget-object v1, p0, Lcom/alensw/transfer/bh;->b:Lcom/alensw/transfer/d;

    invoke-virtual {v1}, Lcom/alensw/transfer/d;->m()V

    iget-object v1, p0, Lcom/alensw/transfer/bh;->a:Lcom/alensw/transfer/TransferService;

    invoke-static {v1}, Lcom/alensw/transfer/TransferService;->e(Lcom/alensw/transfer/TransferService;)V

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alensw/transfer/bh;->b:Lcom/alensw/transfer/d;

    invoke-virtual {v1}, Lcom/alensw/transfer/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/finish?session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/transfer/bh;->b:Lcom/alensw/transfer/d;

    invoke-virtual {v2}, Lcom/alensw/transfer/d;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    const/4 v2, 0x0

    new-instance v3, Lcom/alensw/b/e/g;

    new-instance v4, Lcom/alensw/transfer/bi;

    invoke-direct {v4, p0}, Lcom/alensw/transfer/bi;-><init>(Lcom/alensw/transfer/bh;)V

    invoke-direct {v3, v4}, Lcom/alensw/b/e/g;-><init>(Lcom/alensw/b/e/f;)V

    invoke-static {v0, v1, v2, v3}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/alensw/transfer/bh;->a:Lcom/alensw/transfer/TransferService;

    invoke-virtual {v0}, Lcom/alensw/transfer/TransferService;->d()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "TransferService"

    const-string v2, "Tell server session finished: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method
