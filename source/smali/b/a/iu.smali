.class public Lb/a/iu;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lb/a/l;

.field private c:Lb/a/z;

.field private d:Lb/a/au;

.field private e:Lb/a/dv;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/a/iu;->a:Ljava/util/List;

    iput-object v1, p0, Lb/a/iu;->b:Lb/a/l;

    iput-object v1, p0, Lb/a/iu;->c:Lb/a/z;

    iput-object v1, p0, Lb/a/iu;->d:Lb/a/au;

    iput-object v1, p0, Lb/a/iu;->e:Lb/a/dv;

    iput-object v1, p0, Lb/a/iu;->f:Landroid/content/Context;

    iput-object p1, p0, Lb/a/iu;->f:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lb/a/iu;->c:Lb/a/z;

    invoke-static {p1}, Lcom/c/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/z;->a(Ljava/lang/String;)Lb/a/z;

    iget-object v0, p0, Lb/a/iu;->c:Lb/a/z;

    invoke-static {p1}, Lcom/c/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/z;->e(Ljava/lang/String;)Lb/a/z;

    sget-object v0, Lcom/c/a/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/c/a/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/iu;->c:Lb/a/z;

    sget-object v1, Lcom/c/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/z;->f(Ljava/lang/String;)Lb/a/z;

    iget-object v0, p0, Lb/a/iu;->c:Lb/a/z;

    sget-object v1, Lcom/c/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/z;->g(Ljava/lang/String;)Lb/a/z;

    :cond_0
    iget-object v0, p0, Lb/a/iu;->c:Lb/a/z;

    invoke-static {p1}, Lb/a/gd;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/z;->c(Ljava/lang/String;)Lb/a/z;

    iget-object v0, p0, Lb/a/iu;->c:Lb/a/z;

    sget-object v1, Lb/a/fa;->a:Lb/a/fa;

    invoke-virtual {v0, v1}, Lb/a/z;->a(Lb/a/fa;)Lb/a/z;

    iget-object v0, p0, Lb/a/iu;->c:Lb/a/z;

    const-string v1, "5.5.3"

    invoke-virtual {v0, v1}, Lb/a/z;->d(Ljava/lang/String;)Lb/a/z;

    iget-object v0, p0, Lb/a/iu;->c:Lb/a/z;

    invoke-static {p1}, Lb/a/gd;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/z;->b(Ljava/lang/String;)Lb/a/z;

    iget-object v0, p0, Lb/a/iu;->c:Lb/a/z;

    invoke-static {p1}, Lb/a/gd;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/z;->a(I)Lb/a/z;

    iget-object v0, p0, Lb/a/iu;->c:Lb/a/z;

    sget v1, Lcom/c/a/a;->c:I

    invoke-virtual {v0, v1}, Lb/a/z;->b(I)Lb/a/z;

    iget-object v0, p0, Lb/a/iu;->c:Lb/a/z;

    invoke-static {}, Lcom/c/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/z;->d(Ljava/lang/String;)Lb/a/z;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lb/a/iu;->d:Lb/a/au;

    invoke-static {}, Lb/a/gd;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/au;->e(Ljava/lang/String;)Lb/a/au;

    iget-object v0, p0, Lb/a/iu;->d:Lb/a/au;

    invoke-static {p1}, Lb/a/gd;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/au;->a(Ljava/lang/String;)Lb/a/au;

    iget-object v0, p0, Lb/a/iu;->d:Lb/a/au;

    invoke-static {p1}, Lb/a/gd;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/au;->b(Ljava/lang/String;)Lb/a/au;

    iget-object v0, p0, Lb/a/iu;->d:Lb/a/au;

    invoke-static {p1}, Lb/a/gd;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/au;->c(Ljava/lang/String;)Lb/a/au;

    iget-object v0, p0, Lb/a/iu;->d:Lb/a/au;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/au;->d(Ljava/lang/String;)Lb/a/au;

    iget-object v0, p0, Lb/a/iu;->d:Lb/a/au;

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lb/a/au;->f(Ljava/lang/String;)Lb/a/au;

    iget-object v0, p0, Lb/a/iu;->d:Lb/a/au;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/au;->g(Ljava/lang/String;)Lb/a/au;

    invoke-static {p1}, Lb/a/gd;->l(Landroid/content/Context;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lb/a/iu;->d:Lb/a/au;

    new-instance v2, Lb/a/em;

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x0

    aget v0, v0, v4

    invoke-direct {v2, v3, v0}, Lb/a/em;-><init>(II)V

    invoke-virtual {v1, v2}, Lb/a/au;->a(Lb/a/em;)Lb/a/au;

    :cond_0
    sget-object v0, Lcom/c/a/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/c/a/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_1
    iget-object v0, p0, Lb/a/iu;->d:Lb/a/au;

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/au;->h(Ljava/lang/String;)Lb/a/au;

    iget-object v0, p0, Lb/a/iu;->d:Lb/a/au;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/au;->i(Ljava/lang/String;)Lb/a/au;

    iget-object v0, p0, Lb/a/iu;->d:Lb/a/au;

    sget-wide v2, Landroid/os/Build;->TIME:J

    invoke-virtual {v0, v2, v3}, Lb/a/au;->a(J)Lb/a/au;

    iget-object v0, p0, Lb/a/iu;->d:Lb/a/au;

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/au;->j(Ljava/lang/String;)Lb/a/au;

    iget-object v0, p0, Lb/a/iu;->d:Lb/a/au;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/au;->k(Ljava/lang/String;)Lb/a/au;

    iget-object v0, p0, Lb/a/iu;->d:Lb/a/au;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/au;->l(Ljava/lang/String;)Lb/a/au;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    invoke-static {p1}, Lb/a/gd;->e(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wi-Fi"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lb/a/iu;->e:Lb/a/dv;

    sget-object v2, Lb/a/k;->c:Lb/a/k;

    invoke-virtual {v1, v2}, Lb/a/dv;->a(Lb/a/k;)Lb/a/dv;

    :goto_0
    const-string v1, ""

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb/a/iu;->e:Lb/a/dv;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lb/a/dv;->d(Ljava/lang/String;)Lb/a/dv;

    :cond_0
    iget-object v0, p0, Lb/a/iu;->e:Lb/a/dv;

    invoke-static {p1}, Lb/a/gd;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/dv;->c(Ljava/lang/String;)Lb/a/dv;

    invoke-static {p1}, Lb/a/gd;->i(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb/a/iu;->e:Lb/a/dv;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lb/a/dv;->b(Ljava/lang/String;)Lb/a/dv;

    iget-object v1, p0, Lb/a/iu;->e:Lb/a/dv;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Lb/a/dv;->a(Ljava/lang/String;)Lb/a/dv;

    iget-object v0, p0, Lb/a/iu;->e:Lb/a/dv;

    invoke-static {p1}, Lb/a/gd;->h(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lb/a/dv;->a(I)Lb/a/dv;

    :goto_1
    return-void

    :cond_1
    const-string v1, "2G/3G"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lb/a/iu;->e:Lb/a/dv;

    sget-object v2, Lb/a/k;->b:Lb/a/k;

    invoke-virtual {v1, v2}, Lb/a/dv;->a(Lb/a/k;)Lb/a/dv;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v1, p0, Lb/a/iu;->e:Lb/a/dv;

    sget-object v2, Lb/a/k;->a:Lb/a/k;

    invoke-virtual {v1, v2}, Lb/a/dv;->a(Lb/a/k;)Lb/a/dv;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/iu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lb/a/iu;->b:Lb/a/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lb/a/fp;)V
    .locals 3

    iget-object v0, p0, Lb/a/iu;->f:Landroid/content/Context;

    invoke-static {v0}, Lb/a/jb;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/iu;->b:Lb/a/l;

    if-eqz v0, :cond_1

    new-instance v0, Lb/a/b;

    iget-object v2, p0, Lb/a/iu;->f:Landroid/content/Context;

    invoke-direct {v0, v2}, Lb/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lb/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/iu;->b:Lb/a/l;

    invoke-virtual {p1, v0}, Lb/a/fp;->a(Lb/a/l;)Lb/a/fp;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/iu;->b:Lb/a/l;

    :cond_1
    iget-object v0, p0, Lb/a/iu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/is;

    invoke-interface {v0, p1, v1}, Lb/a/is;->a(Lb/a/fp;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lb/a/iu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lb/a/iu;->b()Lb/a/z;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/fp;->a(Lb/a/z;)Lb/a/fp;

    invoke-virtual {p0}, Lb/a/iu;->c()Lb/a/au;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/fp;->a(Lb/a/au;)Lb/a/fp;

    invoke-virtual {p0}, Lb/a/iu;->d()Lb/a/dv;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/fp;->a(Lb/a/dv;)Lb/a/fp;

    invoke-virtual {p0}, Lb/a/iu;->g()Lb/a/ag;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/fp;->a(Lb/a/ag;)Lb/a/fp;

    invoke-virtual {p0}, Lb/a/iu;->e()Lb/a/cm;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/fp;->a(Lb/a/cm;)Lb/a/fp;

    invoke-virtual {p0}, Lb/a/iu;->f()Lb/a/ce;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/fp;->a(Lb/a/ce;)Lb/a/fp;

    invoke-virtual {p0}, Lb/a/iu;->h()Lb/a/s;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/a/fp;->a(Lb/a/s;)Lb/a/fp;

    goto :goto_0
.end method

.method public declared-synchronized a(Lb/a/is;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/iu;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lb/a/l;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lb/a/iu;->b:Lb/a/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Lb/a/z;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/iu;->c:Lb/a/z;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/z;

    invoke-direct {v0}, Lb/a/z;-><init>()V

    iput-object v0, p0, Lb/a/iu;->c:Lb/a/z;

    iget-object v0, p0, Lb/a/iu;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lb/a/iu;->a(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lb/a/iu;->c:Lb/a/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Lb/a/au;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/iu;->d:Lb/a/au;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/au;

    invoke-direct {v0}, Lb/a/au;-><init>()V

    iput-object v0, p0, Lb/a/iu;->d:Lb/a/au;

    iget-object v0, p0, Lb/a/iu;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lb/a/iu;->b(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lb/a/iu;->d:Lb/a/au;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Lb/a/dv;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lb/a/iu;->e:Lb/a/dv;

    if-nez v0, :cond_0

    new-instance v0, Lb/a/dv;

    invoke-direct {v0}, Lb/a/dv;-><init>()V

    iput-object v0, p0, Lb/a/iu;->e:Lb/a/dv;

    iget-object v0, p0, Lb/a/iu;->f:Landroid/content/Context;

    invoke-direct {p0, v0}, Lb/a/iu;->c(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lb/a/iu;->e:Lb/a/dv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Lb/a/cm;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lb/a/iu;->f:Landroid/content/Context;

    invoke-static {v0}, Lb/a/id;->a(Landroid/content/Context;)Lb/a/id;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/id;->a()Lb/a/cm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lb/a/ce;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lb/a/iu;->f:Landroid/content/Context;

    invoke-static {v0}, Lb/a/hg;->a(Landroid/content/Context;)Lb/a/hg;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/hg;->b()Lb/a/ce;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Lb/a/ag;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lb/a/iu;->f:Landroid/content/Context;

    invoke-static {v0}, Lb/a/b;->a(Landroid/content/Context;)Lb/a/ag;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Lb/a/ag;

    invoke-direct {v0}, Lb/a/ag;-><init>()V

    goto :goto_0
.end method

.method public h()Lb/a/s;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lb/a/iu;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/c/a/q;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    aget-object v0, v1, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    aget-object v0, v1, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lb/a/s;

    aget-object v2, v1, v2

    aget-object v1, v1, v3

    invoke-direct {v0, v2, v1}, Lb/a/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
