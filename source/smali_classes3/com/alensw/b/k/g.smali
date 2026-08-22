.class public Lcom/alensw/b/k/g;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Lcom/alensw/b/k/c;

.field private c:Lcom/alensw/b/k/e;

.field private final d:Lcom/alensw/b/k/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alensw/b/k/f;

    invoke-direct {v0}, Lcom/alensw/b/k/f;-><init>()V

    iput-object v0, p0, Lcom/alensw/b/k/g;->d:Lcom/alensw/b/k/f;

    return-void
.end method

.method static synthetic a(Lcom/alensw/b/k/g;Lcom/alensw/b/k/e;)Lcom/alensw/b/k/e;
    .locals 0

    iput-object p1, p0, Lcom/alensw/b/k/g;->c:Lcom/alensw/b/k/e;

    return-object p1
.end method

.method static synthetic a(Lcom/alensw/b/k/g;)Lcom/alensw/b/k/f;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/k/g;->d:Lcom/alensw/b/k/f;

    return-object v0
.end method

.method static synthetic b(Lcom/alensw/b/k/g;)Lcom/alensw/b/k/e;
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/k/g;->c:Lcom/alensw/b/k/e;

    return-object v0
.end method


# virtual methods
.method protected varargs a(III[Ljava/lang/Object;)Lcom/alensw/b/k/e;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "override!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a()V
    .locals 0

    return-void
.end method

.method protected a(Lcom/alensw/b/k/e;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v1, p0, Lcom/alensw/b/k/g;->d:Lcom/alensw/b/k/f;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/k/g;->d:Lcom/alensw/b/k/f;

    invoke-virtual {v0}, Lcom/alensw/b/k/f;->a()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alensw/b/k/g;->c:Lcom/alensw/b/k/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/k/g;->c:Lcom/alensw/b/k/e;

    invoke-virtual {p0, v0}, Lcom/alensw/b/k/g;->a(Lcom/alensw/b/k/e;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected b(Lcom/alensw/b/k/e;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/k/g;->b:Lcom/alensw/b/k/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/b/k/h;

    invoke-direct {v0, p0}, Lcom/alensw/b/k/h;-><init>(Lcom/alensw/b/k/g;)V

    iput-object v0, p0, Lcom/alensw/b/k/g;->b:Lcom/alensw/b/k/c;

    :cond_0
    iget-object v0, p0, Lcom/alensw/b/k/g;->b:Lcom/alensw/b/k/c;

    invoke-virtual {v0}, Lcom/alensw/b/k/c;->start()V

    iget-object v0, p0, Lcom/alensw/b/k/g;->b:Lcom/alensw/b/k/c;

    invoke-virtual {v0}, Lcom/alensw/b/k/c;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alensw/b/k/g;->a:J

    return-void
.end method

.method public varargs b(III[Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alensw/b/k/g;->d:Lcom/alensw/b/k/f;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/alensw/b/k/g;->c:Lcom/alensw/b/k/e;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alensw/b/k/g;->c:Lcom/alensw/b/k/e;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/alensw/b/k/e;->a(III[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/alensw/b/k/g;->d:Lcom/alensw/b/k/f;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/alensw/b/k/f;->a(III[Ljava/lang/Object;)Lcom/alensw/b/k/e;

    move-result-object v2

    if-eqz v2, :cond_1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alensw/b/k/g;->d:Lcom/alensw/b/k/f;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/alensw/b/k/g;->a(III[Ljava/lang/Object;)Lcom/alensw/b/k/e;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alensw/b/k/f;->a(Lcom/alensw/b/k/e;)V

    iget-object v0, p0, Lcom/alensw/b/k/g;->d:Lcom/alensw/b/k/f;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alensw/b/k/g;->a(Z)V

    iget-object v0, p0, Lcom/alensw/b/k/g;->b:Lcom/alensw/b/k/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/k/g;->b:Lcom/alensw/b/k/c;

    iget-object v1, p0, Lcom/alensw/b/k/g;->d:Lcom/alensw/b/k/f;

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/c;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alensw/b/k/g;->b:Lcom/alensw/b/k/c;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alensw/b/k/g;->a:J

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method
