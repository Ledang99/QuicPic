.class public Lcom/alensw/b/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;

.field private final c:Lcom/alensw/b/a/d;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alensw/b/a/a;->a:I

    if-gtz p1, :cond_0

    const/16 p1, 0x100

    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/b/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/alensw/b/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alensw/b/a/d;-><init>(Lcom/alensw/b/a/a;Lcom/alensw/b/a/b;)V

    iput-object v0, p0, Lcom/alensw/b/a/a;->c:Lcom/alensw/b/a/d;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;Lcom/alensw/b/a/c;)Lcom/alensw/b/a/c;
    .locals 5

    const/4 v1, 0x0

    iput-object p1, p2, Lcom/alensw/b/a/c;->e:Ljava/lang/Object;

    iget-object v2, p0, Lcom/alensw/b/a/a;->c:Lcom/alensw/b/a/d;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/a/a;->c:Lcom/alensw/b/a/d;

    invoke-virtual {v0, p2}, Lcom/alensw/b/a/d;->a(Lcom/alensw/b/a/c;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/alensw/b/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/a/c;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alensw/b/a/a;->c:Lcom/alensw/b/a/d;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/alensw/b/a/a;->c:Lcom/alensw/b/a/d;

    invoke-virtual {v3, v0}, Lcom/alensw/b/a/d;->b(Lcom/alensw/b/a/c;)Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-object v1, v0, Lcom/alensw/b/a/c;->e:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/alensw/b/a/a;->a(Lcom/alensw/b/a/c;)V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_0
    iget-object v2, p0, Lcom/alensw/b/a/a;->c:Lcom/alensw/b/a/d;

    monitor-enter v2

    :try_start_4
    iget-object v0, p0, Lcom/alensw/b/a/a;->c:Lcom/alensw/b/a/d;

    invoke-virtual {v0}, Lcom/alensw/b/a/d;->b()Lcom/alensw/b/a/c;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/alensw/b/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    iget v4, p0, Lcom/alensw/b/a/a;->a:I

    if-le v0, v4, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/alensw/b/a/a;->c:Lcom/alensw/b/a/d;

    invoke-virtual {v4, v3}, Lcom/alensw/b/a/d;->b(Lcom/alensw/b/a/c;)Z

    :cond_1
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alensw/b/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v3, Lcom/alensw/b/a/c;->e:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v3, Lcom/alensw/b/a/c;->e:Ljava/lang/Object;

    invoke-virtual {p0, v3}, Lcom/alensw/b/a/a;->a(Lcom/alensw/b/a/c;)V

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/alensw/b/a/a;->a:I

    return-void
.end method

.method protected a(Lcom/alensw/b/a/c;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/alensw/b/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Lcom/alensw/b/a/c;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alensw/b/a/a;->c:Lcom/alensw/b/a/d;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/a/a;->c:Lcom/alensw/b/a/d;

    invoke-virtual {v0}, Lcom/alensw/b/a/d;->b()Lcom/alensw/b/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/alensw/b/a/a;->c:Lcom/alensw/b/a/d;

    invoke-virtual {v3, v0}, Lcom/alensw/b/a/d;->b(Lcom/alensw/b/a/c;)Z

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/alensw/b/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, v0, Lcom/alensw/b/a/c;->e:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/alensw/b/a/c;->e:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/alensw/b/a/a;->a(Lcom/alensw/b/a/c;)V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final b(Ljava/lang/Object;)Lcom/alensw/b/a/c;
    .locals 5

    iget-object v0, p0, Lcom/alensw/b/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/a/c;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alensw/b/a/a;->c:Lcom/alensw/b/a/d;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/alensw/b/a/a;->c:Lcom/alensw/b/a/d;

    invoke-virtual {v2, v0}, Lcom/alensw/b/a/d;->b(Lcom/alensw/b/a/c;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alensw/b/a/a;->c:Lcom/alensw/b/a/d;

    invoke-virtual {v2, v0}, Lcom/alensw/b/a/d;->a(Lcom/alensw/b/a/c;)V

    :goto_0
    monitor-exit v1

    :goto_1
    return-object v0

    :cond_0
    const-string v2, "ConcurrentLruHashMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "entry was unlinked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    sub-int/2addr v0, p1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alensw/b/a/a;->b()Lcom/alensw/b/a/c;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "ConcurrentLruHashMap"

    const-string v1, "eldest is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public c(Ljava/lang/Object;)Lcom/alensw/b/a/c;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alensw/b/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/b/a/c;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alensw/b/a/a;->c:Lcom/alensw/b/a/d;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/alensw/b/a/a;->c:Lcom/alensw/b/a/d;

    invoke-virtual {v3, v0}, Lcom/alensw/b/a/d;->b(Lcom/alensw/b/a/c;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, v0, Lcom/alensw/b/a/c;->e:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/alensw/b/a/a;->a(Lcom/alensw/b/a/c;)V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/alensw/b/a/a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v1, p0, Lcom/alensw/b/a/a;->c:Lcom/alensw/b/a/d;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/a/a;->c:Lcom/alensw/b/a/d;

    invoke-virtual {v0}, Lcom/alensw/b/a/d;->a()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
