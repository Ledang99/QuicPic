.class public Lcom/alensw/b/k/a;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# static fields
.field public static final b:Z

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/alensw/b/k/a;->b:Z

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sget-boolean v2, Lcom/alensw/b/k/a;->b:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/alensw/b/k/a;->c:I

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IIII)V
    .locals 9

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7, p3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Lcom/alensw/b/k/i;

    invoke-direct {v8, p4}, Lcom/alensw/b/k/i;-><init>(I)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v0, Lcom/alensw/b/k/b;

    invoke-direct {v0, p0}, Lcom/alensw/b/k/b;-><init>(Lcom/alensw/b/k/a;)V

    invoke-super {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-void
.end method

.method public static a(II)Lcom/alensw/b/k/a;
    .locals 2

    new-instance v0, Lcom/alensw/b/k/a;

    const v1, 0x7fffffff

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/alensw/b/k/a;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alensw/b/k/d;)Lcom/alensw/b/k/d;
    .locals 3

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "AsyncExecutor"

    const-string v2, "execute"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lcom/alensw/b/k/k;)Lcom/alensw/b/k/d;
    .locals 1

    new-instance v0, Lcom/alensw/b/k/d;

    invoke-direct {v0, p1}, Lcom/alensw/b/k/d;-><init>(Lcom/alensw/b/k/k;)V

    invoke-virtual {p0, v0}, Lcom/alensw/b/k/a;->a(Lcom/alensw/b/k/d;)Lcom/alensw/b/k/d;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/alensw/b/k/a;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/alensw/b/k/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AsyncExecutor"

    const-string v2, "clear"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Runnable;)V
    .locals 1

    instance-of v0, p1, Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method
