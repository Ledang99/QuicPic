.class public Lcom/alensw/a/q;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/alensw/a/q;


# instance fields
.field public a:I

.field private final b:Lcom/alensw/b/c/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alensw/a/r;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcom/alensw/a/r;-><init>(Lcom/alensw/a/q;I)V

    iput-object v0, p0, Lcom/alensw/a/q;->b:Lcom/alensw/b/c/d;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alensw/a/q;->a:I

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alensw/a/q;
    .locals 2

    const-class v1, Lcom/alensw/a/q;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alensw/a/q;->c:Lcom/alensw/a/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/a/q;

    invoke-direct {v0}, Lcom/alensw/a/q;-><init>()V

    sput-object v0, Lcom/alensw/a/q;->c:Lcom/alensw/a/q;

    sget-object v0, Lcom/alensw/a/q;->c:Lcom/alensw/a/q;

    invoke-direct {v0, p0}, Lcom/alensw/a/q;->b(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/alensw/a/q;->c:Lcom/alensw/a/q;
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
    .locals 5

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "default_sort"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alensw/a/q;->a:I

    const-string v0, "folder_modes"

    invoke-static {p1, v0}, Lcom/alensw/b/l/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/a/q;->b:Lcom/alensw/b/c/d;

    invoke-virtual {v1, v0}, Lcom/alensw/b/c/d;->a(Ljava/io/File;)Z

    const-string v0, "cfolder_modes"

    invoke-static {p1, v0}, Lcom/alensw/b/c/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    new-instance v0, Lcom/alensw/b/c/d;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/alensw/b/c/d;-><init>(I)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/alensw/b/c/d;->a(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/alensw/b/c/d;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v4, p0, Lcom/alensw/a/q;->b:Lcom/alensw/b/c/d;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/alensw/b/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alensw/a/q;->b:Lcom/alensw/b/c/d;

    invoke-virtual {v0}, Lcom/alensw/b/c/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/a/q;->b:Lcom/alensw/b/c/d;

    invoke-virtual {v0}, Lcom/alensw/b/c/d;->h()V

    :cond_1
    invoke-static {v2}, Lcom/alensw/b/l/b;->c(Ljava/io/File;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/alensw/a/e;)I
    .locals 2

    iget-object v0, p0, Lcom/alensw/a/q;->b:Lcom/alensw/b/c/d;

    invoke-virtual {p1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alensw/b/c/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alensw/a/q;->a:I

    invoke-virtual {p1, v0}, Lcom/alensw/a/e;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/alensw/bean/CommonFolder;)I
    .locals 5

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/alensw/a/q;->b:Lcom/alensw/b/c/d;

    invoke-virtual {p1}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alensw/b/c/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/alensw/bean/CommonFolder;->c()I

    move-result v3

    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/alensw/a/q;->a:I

    if-nez v4, :cond_3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    :goto_2
    invoke-static {v0, v1}, Lcom/alensw/bean/CommonFolder;->a(II)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/alensw/a/q;->a:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    const/4 v1, 0x3

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/alensw/a/q;->a:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/alensw/a/q;->a:I

    goto :goto_2
.end method

.method public b(Lcom/alensw/a/e;)V
    .locals 3

    invoke-virtual {p1}, Lcom/alensw/a/e;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/a/q;->b:Lcom/alensw/b/c/d;

    iget v2, p1, Lcom/alensw/a/e;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alensw/b/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alensw/a/q;->b:Lcom/alensw/b/c/d;

    invoke-virtual {v0}, Lcom/alensw/b/c/d;->h()V

    return-void
.end method

.method public b(Lcom/alensw/bean/CommonFolder;)V
    .locals 3

    invoke-virtual {p1}, Lcom/alensw/bean/CommonFolder;->i()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/a/q;->b:Lcom/alensw/b/c/d;

    iget v2, p1, Lcom/alensw/bean/CommonFolder;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alensw/b/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alensw/a/q;->b:Lcom/alensw/b/c/d;

    invoke-virtual {v0}, Lcom/alensw/b/c/d;->h()V

    return-void
.end method
