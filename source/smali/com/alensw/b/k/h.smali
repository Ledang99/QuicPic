.class Lcom/alensw/b/k/h;
.super Lcom/alensw/b/k/c;


# instance fields
.field final synthetic a:Lcom/alensw/b/k/g;


# direct methods
.method constructor <init>(Lcom/alensw/b/k/g;)V
    .locals 0

    iput-object p1, p0, Lcom/alensw/b/k/h;->a:Lcom/alensw/b/k/g;

    invoke-direct {p0}, Lcom/alensw/b/k/c;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/alensw/b/k/h;->a:Lcom/alensw/b/k/g;

    invoke-virtual {v0}, Lcom/alensw/b/k/g;->a()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alensw/b/k/h;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alensw/b/k/h;->a:Lcom/alensw/b/k/g;

    invoke-static {v1}, Lcom/alensw/b/k/g;->a(Lcom/alensw/b/k/g;)Lcom/alensw/b/k/f;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/alensw/b/k/h;->a:Lcom/alensw/b/k/g;

    iget-object v3, p0, Lcom/alensw/b/k/h;->a:Lcom/alensw/b/k/g;

    invoke-static {v3}, Lcom/alensw/b/k/g;->a(Lcom/alensw/b/k/g;)Lcom/alensw/b/k/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alensw/b/k/f;->b()Lcom/alensw/b/k/e;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alensw/b/k/g;->a(Lcom/alensw/b/k/g;Lcom/alensw/b/k/e;)Lcom/alensw/b/k/e;

    iget-object v2, p0, Lcom/alensw/b/k/h;->a:Lcom/alensw/b/k/g;

    invoke-static {v2}, Lcom/alensw/b/k/g;->b(Lcom/alensw/b/k/g;)Lcom/alensw/b/k/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/alensw/b/k/h;->a:Lcom/alensw/b/k/g;

    invoke-static {v2}, Lcom/alensw/b/k/g;->a(Lcom/alensw/b/k/g;)Lcom/alensw/b/k/f;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/alensw/b/k/h;->a:Lcom/alensw/b/k/g;

    iget-object v1, p0, Lcom/alensw/b/k/h;->a:Lcom/alensw/b/k/g;

    invoke-static {v1}, Lcom/alensw/b/k/g;->b(Lcom/alensw/b/k/g;)Lcom/alensw/b/k/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/b/k/g;->b(Lcom/alensw/b/k/e;)I

    move-result v0

    iget-object v1, p0, Lcom/alensw/b/k/h;->a:Lcom/alensw/b/k/g;

    invoke-static {v1}, Lcom/alensw/b/k/g;->a(Lcom/alensw/b/k/g;)Lcom/alensw/b/k/f;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/alensw/b/k/h;->a:Lcom/alensw/b/k/g;

    invoke-static {v2}, Lcom/alensw/b/k/g;->b(Lcom/alensw/b/k/g;)Lcom/alensw/b/k/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alensw/b/k/e;->a()V

    iget-object v2, p0, Lcom/alensw/b/k/h;->a:Lcom/alensw/b/k/g;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/alensw/b/k/g;->a(Lcom/alensw/b/k/g;Lcom/alensw/b/k/e;)Lcom/alensw/b/k/e;

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/alensw/b/k/h;->a:Lcom/alensw/b/k/g;

    invoke-virtual {v0}, Lcom/alensw/b/k/g;->d()V

    return-void

    :catch_0
    move-exception v2

    goto :goto_1
.end method
