.class Lcom/alensw/transfer/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/k/k;


# instance fields
.field final synthetic a:Lcom/alensw/transfer/a/a;

.field private b:I

.field private volatile c:Z

.field private d:Lcom/alensw/b/e/f;


# direct methods
.method public constructor <init>(Lcom/alensw/transfer/a/a;I)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/transfer/a/k;->a:Lcom/alensw/transfer/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alensw/transfer/a/l;

    invoke-direct {v0, p0}, Lcom/alensw/transfer/a/l;-><init>(Lcom/alensw/transfer/a/k;)V

    iput-object v0, p0, Lcom/alensw/transfer/a/k;->d:Lcom/alensw/b/e/f;

    iput p2, p0, Lcom/alensw/transfer/a/k;->b:I

    return-void
.end method

.method static synthetic a(Lcom/alensw/transfer/a/k;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alensw/transfer/a/k;->c:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/transfer/a/k;->c:Z

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()Ljava/lang/Void;
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/transfer/a/k;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->r(Lcom/alensw/transfer/a/a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/transfer/a/k;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v1}, Lcom/alensw/transfer/a/a;->j(Lcom/alensw/transfer/a/a;)Lcom/alensw/transfer/a/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alensw/transfer/a/t;->b()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/id/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "?ip="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/alensw/transfer/a/k;->b:I

    if-nez v0, :cond_1

    const-string v0, "join"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://hub.q-supreme.com"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "POST"

    invoke-static {v1, v4}, Lcom/alensw/b/e/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    const/16 v4, 0x1388

    :try_start_2
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v4, "X-PeerHub-ReqCode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "POST "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "`tpu_becqe__cptsg`tcscafabfucpdq"

    invoke-static {v5}, Lcom/alensw/b/f/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alensw/transfer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alensw/transfer/a/k;->d:Lcom/alensw/b/e/f;

    invoke-static {v1, v0}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;Lcom/alensw/b/e/f;)Ljava/lang/String;

    move-result-object v0

    iget v4, p0, Lcom/alensw/transfer/a/k;->b:I

    if-nez v4, :cond_4

    const-string v4, "hub:"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string v0, "DiscoveryManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "peer hub list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v5, v4

    move v0, v3

    :goto_1
    if-ge v0, v5, :cond_2

    aget-object v6, v4, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/alensw/transfer/a/k;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v7}, Lcom/alensw/transfer/a/a;->k(Lcom/alensw/transfer/a/a;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-static {}, Lcom/alensw/transfer/a/a;->b()Lcom/alensw/transfer/a/t;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_1
    const-string v0, "leave"

    goto/16 :goto_0

    :catch_0
    move-exception v7

    :try_start_5
    const-string v7, "DiscoveryManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid ip address: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_3
    :try_start_6
    const-string v3, "DiscoveryManager"

    const-string v4, "request peer hub: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;)V

    :goto_4
    return-object v2

    :cond_2
    :try_start_7
    array-length v0, v4

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/alensw/transfer/a/k;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->b(Lcom/alensw/transfer/a/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/alensw/transfer/a/k;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v0}, Lcom/alensw/transfer/a/a;->b(Lcom/alensw/transfer/a/a;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    :cond_3
    new-instance v6, Lcom/alensw/transfer/a/m;

    invoke-direct {v6, p0}, Lcom/alensw/transfer/a/m;-><init>(Lcom/alensw/transfer/a/k;)V

    const-wide/16 v4, 0x0

    move v0, v3

    :goto_5
    const/4 v3, 0x3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/alensw/transfer/a/k;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v3}, Lcom/alensw/transfer/a/a;->t(Lcom/alensw/transfer/a/a;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    iget-object v7, p0, Lcom/alensw/transfer/a/k;->a:Lcom/alensw/transfer/a/a;

    invoke-static {v7}, Lcom/alensw/transfer/a/a;->s(Lcom/alensw/transfer/a/a;)Lcom/alensw/transfer/a/r;

    move-result-object v7

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v6, v4, v5, v8}, Lcom/alensw/transfer/a/r;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    const-wide/16 v8, 0xa

    add-long/2addr v4, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_6
    invoke-static {v1}, Lcom/alensw/b/e/b;->a(Ljava/net/HttpURLConnection;)V

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/transfer/a/k;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
