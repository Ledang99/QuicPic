.class public Lcom/alensw/a/n;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/alensw/a/n;


# instance fields
.field private final a:Lcom/alensw/b/c/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alensw/b/c/h;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/alensw/b/c/h;-><init>(I)V

    iput-object v0, p0, Lcom/alensw/a/n;->a:Lcom/alensw/b/c/h;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alensw/a/n;
    .locals 2

    const-class v1, Lcom/alensw/a/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alensw/a/n;->b:Lcom/alensw/a/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/a/n;

    invoke-direct {v0}, Lcom/alensw/a/n;-><init>()V

    sput-object v0, Lcom/alensw/a/n;->b:Lcom/alensw/a/n;

    sget-object v0, Lcom/alensw/a/n;->b:Lcom/alensw/a/n;

    invoke-direct {v0, p0}, Lcom/alensw/a/n;->b(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/alensw/a/n;->b:Lcom/alensw/a/n;
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

    const-string v0, "folder_covers"

    invoke-static {p1, v0}, Lcom/alensw/b/l/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/a/n;->a:Lcom/alensw/b/c/h;

    invoke-virtual {v1, v0}, Lcom/alensw/b/c/h;->a(Ljava/io/File;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/a/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alensw/a/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alensw/a/n;->a:Lcom/alensw/b/c/h;

    invoke-virtual {v0, p1}, Lcom/alensw/b/c/h;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alensw/a/n;->a:Lcom/alensw/b/c/h;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/b/c/h;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/alensw/a/n;->a:Lcom/alensw/b/c/h;

    invoke-virtual {v0}, Lcom/alensw/b/c/h;->h()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alensw/a/n;->a:Lcom/alensw/b/c/h;

    invoke-virtual {v0, p1}, Lcom/alensw/b/c/h;->c(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method
