.class Lcom/alensw/b/h/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/k/k;


# instance fields
.field final synthetic a:Lcom/alensw/b/h/d;

.field private volatile b:Z

.field private final c:Lcom/alensw/b/k/f;

.field private final d:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/alensw/b/h/d;)V
    .locals 1

    iput-object p1, p0, Lcom/alensw/b/h/g;->a:Lcom/alensw/b/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alensw/b/k/f;

    invoke-direct {v0}, Lcom/alensw/b/k/f;-><init>()V

    iput-object v0, p0, Lcom/alensw/b/h/g;->c:Lcom/alensw/b/k/f;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alensw/b/h/g;->d:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alensw/b/h/d;Lcom/alensw/b/h/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/b/h/g;-><init>(Lcom/alensw/b/h/d;)V

    return-void
.end method

.method private e()Lcom/alensw/b/h/f;
    .locals 6

    iget-object v1, p0, Lcom/alensw/b/h/g;->c:Lcom/alensw/b/k/f;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/h/g;->c:Lcom/alensw/b/k/f;

    invoke-virtual {v0}, Lcom/alensw/b/k/f;->b()Lcom/alensw/b/k/e;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/h/f;

    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/alensw/b/h/g;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/alensw/b/h/g;->c:Lcom/alensw/b/k/f;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/b/h/g;->b:Z

    iget-object v1, p0, Lcom/alensw/b/h/g;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/h/g;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/alensw/b/h/g;->c()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/alensw/b/h/f;)V
    .locals 2

    iget-object v1, p0, Lcom/alensw/b/h/g;->c:Lcom/alensw/b/k/f;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/h/g;->c:Lcom/alensw/b/k/f;

    invoke-virtual {v0, p1}, Lcom/alensw/b/k/f;->a(Lcom/alensw/b/k/e;)V

    iget-object v0, p0, Lcom/alensw/b/h/g;->c:Lcom/alensw/b/k/f;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v1, p0, Lcom/alensw/b/h/g;->c:Lcom/alensw/b/k/f;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/h/g;->c:Lcom/alensw/b/k/f;

    invoke-virtual {v0}, Lcom/alensw/b/k/f;->a()V

    iget-object v0, p0, Lcom/alensw/b/h/g;->c:Lcom/alensw/b/k/f;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/b/h/g;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Void;
    .locals 7

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/alensw/b/h/g;->b:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/alensw/b/h/g;->e()Lcom/alensw/b/h/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/alensw/b/h/g;->a:Lcom/alensw/b/h/d;

    invoke-static {v1}, Lcom/alensw/b/h/d;->c(Lcom/alensw/b/h/d;)I

    move-result v1

    iput v1, v0, Lcom/alensw/b/h/f;->c:I

    iget-object v1, p0, Lcom/alensw/b/h/g;->a:Lcom/alensw/b/h/d;

    iget v4, v0, Lcom/alensw/b/h/f;->c:I

    iget v5, v0, Lcom/alensw/b/h/f;->a:I

    iget v6, v0, Lcom/alensw/b/h/f;->b:I

    invoke-static {v1, v4, v5, v6}, Lcom/alensw/b/h/d;->b(Lcom/alensw/b/h/d;III)I

    move-result v1

    iget-object v4, p0, Lcom/alensw/b/h/g;->a:Lcom/alensw/b/h/d;

    invoke-static {v4}, Lcom/alensw/b/h/d;->d(Lcom/alensw/b/h/d;)I

    move-result v4

    iget-object v5, p0, Lcom/alensw/b/h/g;->a:Lcom/alensw/b/h/d;

    invoke-static {v5}, Lcom/alensw/b/h/d;->e(Lcom/alensw/b/h/d;)I

    move-result v5

    if-lt v4, v5, :cond_1

    iget-object v4, p0, Lcom/alensw/b/h/g;->a:Lcom/alensw/b/h/d;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/alensw/b/h/d;->b(Lcom/alensw/b/h/d;I)I

    :cond_1
    if-lez v1, :cond_2

    iget-boolean v4, p0, Lcom/alensw/b/h/g;->b:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/alensw/b/h/g;->a:Lcom/alensw/b/h/d;

    invoke-static {v4}, Lcom/alensw/b/h/d;->f(Lcom/alensw/b/h/d;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    long-to-int v0, v2

    sub-int v0, v1, v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-boolean v1, p0, Lcom/alensw/b/h/g;->b:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alensw/b/h/g;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/alensw/b/h/g;->d:Ljava/lang/Object;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
