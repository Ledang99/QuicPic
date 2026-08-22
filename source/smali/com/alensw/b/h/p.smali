.class Lcom/alensw/b/h/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alensw/b/k/k;


# instance fields
.field final synthetic a:Lcom/alensw/b/h/n;

.field private volatile b:Z

.field private c:I

.field private d:Lcom/alensw/b/h/a;

.field private final e:Lcom/alensw/b/i/b;


# direct methods
.method private constructor <init>(Lcom/alensw/b/h/n;)V
    .locals 2

    iput-object p1, p0, Lcom/alensw/b/h/p;->a:Lcom/alensw/b/h/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alensw/b/h/p;->c:I

    new-instance v0, Lcom/alensw/b/i/b;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/alensw/b/i/b;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/b/h/p;->e:Lcom/alensw/b/i/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alensw/b/h/n;Lcom/alensw/b/h/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alensw/b/h/p;-><init>(Lcom/alensw/b/h/n;)V

    return-void
.end method

.method private e()I
    .locals 4

    iget-object v1, p0, Lcom/alensw/b/h/p;->e:Lcom/alensw/b/i/b;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/h/p;->e:Lcom/alensw/b/i/b;

    invoke-virtual {v0}, Lcom/alensw/b/i/b;->c()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alensw/b/h/p;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/alensw/b/h/p;->e:Lcom/alensw/b/i/b;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/alensw/b/h/p;->e:Lcom/alensw/b/i/b;

    invoke-virtual {v0}, Lcom/alensw/b/i/b;->c()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alensw/b/h/p;->e:Lcom/alensw/b/i/b;

    invoke-virtual {v0}, Lcom/alensw/b/i/b;->b()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/alensw/b/h/p;->c:I

    iget v0, p0, Lcom/alensw/b/h/p;->c:I

    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/b/h/p;->b:Z

    invoke-virtual {p0}, Lcom/alensw/b/h/p;->c()V

    return-void
.end method

.method public a(I)Z
    .locals 2

    iget-object v1, p0, Lcom/alensw/b/h/p;->e:Lcom/alensw/b/i/b;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/h/p;->e:Lcom/alensw/b/i/b;

    invoke-virtual {v0, p1}, Lcom/alensw/b/i/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alensw/b/h/p;->c:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/alensw/b/h/p;->e:Lcom/alensw/b/i/b;

    invoke-virtual {v0, p1}, Lcom/alensw/b/i/b;->b(I)V

    iget-object v0, p0, Lcom/alensw/b/h/p;->e:Lcom/alensw/b/i/b;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

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

    iget-object v1, p0, Lcom/alensw/b/h/p;->e:Lcom/alensw/b/i/b;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/b/h/p;->e:Lcom/alensw/b/i/b;

    invoke-virtual {v0}, Lcom/alensw/b/i/b;->a()V

    iget-object v0, p0, Lcom/alensw/b/h/p;->e:Lcom/alensw/b/i/b;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/alensw/b/h/p;->d:Lcom/alensw/b/h/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/b/h/p;->d:Lcom/alensw/b/h/a;

    invoke-virtual {v0}, Lcom/alensw/b/h/a;->requestCancelDecode()V

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alensw/b/h/p;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Void;
    .locals 8

    const/4 v7, -0x1

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/alensw/b/h/p;->b:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/alensw/b/h/p;->e()I

    move-result v3

    if-eq v3, v7, :cond_0

    invoke-static {}, Lcom/alensw/b/h/a;->e()Lcom/alensw/b/h/a;

    move-result-object v4

    monitor-enter p0

    :try_start_0
    iput-object v4, p0, Lcom/alensw/b/h/p;->d:Lcom/alensw/b/h/a;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lcom/alensw/b/h/m;->a(I)I

    move-result v0

    sget v5, Lcom/alensw/b/h/m;->b:I

    shl-int/2addr v5, v0

    invoke-static {v3}, Lcom/alensw/b/h/m;->c(I)I

    move-result v6

    iput v6, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Lcom/alensw/b/h/m;->d(I)I

    move-result v6

    iput v6, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v5

    iput v6, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/alensw/b/h/p;->a:Lcom/alensw/b/h/n;

    invoke-static {v5}, Lcom/alensw/b/h/n;->a(Lcom/alensw/b/h/n;)Landroid/graphics/Rect;

    move-result-object v5

    monitor-enter v5

    :try_start_1
    iget-object v6, p0, Lcom/alensw/b/h/p;->a:Lcom/alensw/b/h/n;

    invoke-static {v6}, Lcom/alensw/b/h/n;->b(Lcom/alensw/b/h/n;)I

    move-result v6

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/alensw/b/h/p;->a:Lcom/alensw/b/h/n;

    invoke-static {v0}, Lcom/alensw/b/h/n;->a(Lcom/alensw/b/h/n;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/b/h/p;->a:Lcom/alensw/b/h/n;

    invoke-static {v0, v3, v2, v4}, Lcom/alensw/b/h/n;->a(Lcom/alensw/b/h/n;ILandroid/graphics/Rect;Lcom/alensw/b/h/a;)Z

    :cond_1
    iget-object v3, p0, Lcom/alensw/b/h/p;->e:Lcom/alensw/b/i/b;

    monitor-enter v3

    const/4 v0, -0x1

    :try_start_2
    iput v0, p0, Lcom/alensw/b/h/p;->c:I

    iget-object v0, p0, Lcom/alensw/b/h/p;->e:Lcom/alensw/b/i/b;

    invoke-virtual {v0}, Lcom/alensw/b/i/b;->c()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alensw/b/h/p;->a:Lcom/alensw/b/h/n;

    invoke-static {v0}, Lcom/alensw/b/h/n;->c(Lcom/alensw/b/h/n;)Landroid/view/View;

    move-result-object v0

    :goto_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v3, v5, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_2
    :goto_3
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/alensw/b/h/p;->d:Lcom/alensw/b/h/a;

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-static {v4}, Lcom/alensw/b/h/a;->a(Lcom/alensw/b/h/a;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_4
    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :cond_6
    return-object v1
.end method
