.class Lcom/alensw/transfer/bd;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/a/t;

.field final synthetic b:Lcom/alensw/transfer/a/t;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Landroid/content/ContentResolver;

.field final synthetic e:Lcom/alensw/transfer/TransferService;


# direct methods
.method constructor <init>(Lcom/alensw/transfer/TransferService;Lcom/alensw/transfer/a/t;Lcom/alensw/transfer/a/t;Ljava/util/List;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/transfer/bd;->e:Lcom/alensw/transfer/TransferService;

    iput-object p2, p0, Lcom/alensw/transfer/bd;->a:Lcom/alensw/transfer/a/t;

    iput-object p3, p0, Lcom/alensw/transfer/bd;->b:Lcom/alensw/transfer/a/t;

    iput-object p4, p0, Lcom/alensw/transfer/bd;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/alensw/transfer/bd;->d:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x1

    new-instance v4, Lcom/alensw/transfer/d;

    invoke-direct {v4}, Lcom/alensw/transfer/d;-><init>()V

    iget-object v0, p0, Lcom/alensw/transfer/bd;->a:Lcom/alensw/transfer/a/t;

    invoke-virtual {v0}, Lcom/alensw/transfer/a/t;->b()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alensw/transfer/d;->a(Ljava/net/InetAddress;)V

    invoke-virtual {v4, v2}, Lcom/alensw/transfer/d;->a(Z)V

    iget-object v0, p0, Lcom/alensw/transfer/bd;->e:Lcom/alensw/transfer/TransferService;

    iget-object v1, p0, Lcom/alensw/transfer/bd;->b:Lcom/alensw/transfer/a/t;

    invoke-static {v0, v1}, Lcom/alensw/transfer/TransferService;->a(Lcom/alensw/transfer/TransferService;Lcom/alensw/transfer/a/t;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alensw/transfer/d;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/transfer/bd;->b:Lcom/alensw/transfer/a/t;

    invoke-virtual {v0}, Lcom/alensw/transfer/a/t;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alensw/transfer/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/transfer/bd;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/bean/CommonFile;

    new-instance v6, Lcom/alensw/transfer/f;

    invoke-direct {v6}, Lcom/alensw/transfer/f;-><init>()V

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/alensw/transfer/f;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/alensw/transfer/f;->c:Ljava/lang/String;

    iget-object v3, v6, Lcom/alensw/transfer/f;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/alensw/transfer/f;->b:Ljava/lang/String;

    :cond_0
    iget-object v3, v6, Lcom/alensw/transfer/f;->b:Ljava/lang/String;

    const/16 v7, 0x2e

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_1

    iget-object v3, v6, Lcom/alensw/transfer/f;->c:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, v6, Lcom/alensw/transfer/f;->b:Ljava/lang/String;

    iget-object v7, v6, Lcom/alensw/transfer/f;->c:Ljava/lang/String;

    invoke-static {v3, v7}, Lcom/alensw/b/f/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/alensw/transfer/f;->b:Ljava/lang/String;

    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/alensw/transfer/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->d()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/alensw/transfer/f;->d:J

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v6, Lcom/alensw/transfer/f;->e:Landroid/net/Uri;

    iget-wide v8, v6, Lcom/alensw/transfer/f;->d:J

    cmp-long v1, v8, v12

    if-nez v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/alensw/transfer/bd;->d:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Lcom/alensw/bean/CommonFile;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alensw/b/c/f;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/alensw/b/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alensw/b/c/f;->e()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/alensw/transfer/f;->d:J

    invoke-virtual {v0}, Lcom/alensw/b/c/f;->h()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    :goto_1
    iget-wide v0, v6, Lcom/alensw/transfer/f;->d:J

    cmp-long v0, v0, v12

    if-lez v0, :cond_3

    iget-wide v0, v4, Lcom/alensw/transfer/d;->a:J

    iget-wide v8, v6, Lcom/alensw/transfer/f;->d:J

    add-long/2addr v0, v8

    iput-wide v0, v4, Lcom/alensw/transfer/d;->a:J

    iget-object v0, v4, Lcom/alensw/transfer/d;->b:Ljava/util/HashMap;

    iget-object v1, v6, Lcom/alensw/transfer/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    move v1, v3

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/alensw/transfer/d;->a(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alensw/transfer/bd;->e:Lcom/alensw/transfer/TransferService;

    iget-object v3, p0, Lcom/alensw/transfer/bd;->a:Lcom/alensw/transfer/a/t;

    invoke-static {v1, v3}, Lcom/alensw/transfer/TransferService;->a(Lcom/alensw/transfer/TransferService;Lcom/alensw/transfer/a/t;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/request?session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alensw/transfer/bd;->e:Lcom/alensw/transfer/TransferService;

    invoke-virtual {v1}, Lcom/alensw/transfer/TransferService;->c()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/alensw/transfer/d;->b(J)V

    invoke-virtual {v4}, Lcom/alensw/transfer/d;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alensw/transfer/bd;->a:Lcom/alensw/transfer/a/t;

    invoke-virtual {v3}, Lcom/alensw/transfer/a/t;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/alensw/transfer/d;->b(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alensw/transfer/bd;->e:Lcom/alensw/transfer/TransferService;

    invoke-static {v3}, Lcom/alensw/transfer/TransferService;->g(Lcom/alensw/transfer/TransferService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v3, v2, [Z

    aput-boolean v2, v3, v10

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "POST"

    const/4 v5, 0x0

    new-instance v8, Lcom/alensw/transfer/be;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9, v1, v3}, Lcom/alensw/transfer/be;-><init>(Lcom/alensw/transfer/bd;Lcom/alensw/b/e/f;Ljava/lang/String;[Z)V

    invoke-static {v0, v2, v5, v8}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alensw/b/e/g;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    aget-boolean v0, v3, v10

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alensw/transfer/bd;->e:Lcom/alensw/transfer/TransferService;

    invoke-static {v0}, Lcom/alensw/transfer/TransferService;->g(Lcom/alensw/transfer/TransferService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v0, p0, Lcom/alensw/transfer/bd;->e:Lcom/alensw/transfer/TransferService;

    invoke-static {v0}, Lcom/alensw/transfer/TransferService;->e(Lcom/alensw/transfer/TransferService;)V

    iget-object v0, p0, Lcom/alensw/transfer/bd;->e:Lcom/alensw/transfer/TransferService;

    invoke-virtual {v0}, Lcom/alensw/transfer/TransferService;->d()V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "TransferService"

    const-string v2, "Response from peer: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "TransferService"

    const-string v2, "Connecting to peer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/alensw/transfer/TransferService;->f()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method
