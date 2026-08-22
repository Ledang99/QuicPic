.class public Lcom/alensw/a/o;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/alensw/a/o;


# instance fields
.field private final a:Lcom/alensw/b/c/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alensw/b/c/a;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/alensw/b/c/a;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/a/o;->a:Lcom/alensw/b/c/a;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alensw/a/o;
    .locals 2

    const-class v1, Lcom/alensw/a/o;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alensw/a/o;->b:Lcom/alensw/a/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/a/o;

    invoke-direct {v0}, Lcom/alensw/a/o;-><init>()V

    sput-object v0, Lcom/alensw/a/o;->b:Lcom/alensw/a/o;

    sget-object v0, Lcom/alensw/a/o;->b:Lcom/alensw/a/o;

    invoke-direct {v0, p0}, Lcom/alensw/a/o;->b(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/alensw/a/o;->b:Lcom/alensw/a/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    const-string v0, "folder_list"

    invoke-static {p1, v0}, Lcom/alensw/b/l/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/a/o;->a:Lcom/alensw/b/c/a;

    invoke-virtual {v1, v0}, Lcom/alensw/b/c/a;->a(Ljava/io/File;)Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 11

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alensw/a/o;->a(Z)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eq v8, v5, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v6, v2

    :goto_1
    if-ltz v6, :cond_5

    add-int/lit8 v1, v3, -0x1

    if-ge v6, v1, :cond_5

    sget-char v1, Ljava/io/File;->separatorChar:C

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    move v2, v3

    :goto_2
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    move v4, v5

    :goto_3
    if-ge v4, v8, :cond_4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v10, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v2

    goto :goto_1

    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_0

    :cond_7
    move v2, v1

    goto :goto_2
.end method

.method public declared-synchronized a(Z)Ljava/util/ArrayList;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alensw/a/o;->a:Lcom/alensw/b/c/a;

    invoke-virtual {v0}, Lcom/alensw/b/c/a;->c()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/alensw/a/o;->a:Lcom/alensw/b/c/a;

    invoke-virtual {v0}, Lcom/alensw/b/c/a;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    return-object v2
.end method

.method public declared-synchronized a(Lcom/alensw/a/e;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/a/o;->a:Lcom/alensw/b/c/a;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alensw/b/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alensw/a/o;->a:Lcom/alensw/b/c/a;

    invoke-virtual {v0}, Lcom/alensw/b/c/a;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/util/ArrayList;Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alensw/a/o;->a:Lcom/alensw/b/c/a;

    invoke-virtual {v0}, Lcom/alensw/b/c/a;->c()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/alensw/a/o;->a:Lcom/alensw/b/c/a;

    invoke-virtual {v0}, Lcom/alensw/b/c/a;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alensw/a/o;->a:Lcom/alensw/b/c/a;

    invoke-virtual {v0}, Lcom/alensw/b/c/a;->d()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/alensw/a/o;->a:Lcom/alensw/b/c/a;

    if-nez p2, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/alensw/b/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/alensw/a/o;->a:Lcom/alensw/b/c/a;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/alensw/b/c/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/alensw/a/o;->a:Lcom/alensw/b/c/a;

    invoke-virtual {v0}, Lcom/alensw/b/c/a;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
