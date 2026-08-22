.class public Lcom/alensw/cloud/sync/Provider;
.super Landroid/content/ContentProvider;


# static fields
.field private static final a:Landroid/content/UriMatcher;


# instance fields
.field private final b:Lcom/alensw/cloud/sync/w;

.field private final c:Lcom/alensw/cloud/sync/u;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/alensw/cloud/sync/Provider;->a:Landroid/content/UriMatcher;

    sget-object v0, Lcom/alensw/cloud/sync/Provider;->a:Landroid/content/UriMatcher;

    const-string v1, "com.alensw.PicFolder.cloud.sync"

    const-string v2, "task"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/alensw/cloud/sync/Provider;->a:Landroid/content/UriMatcher;

    const-string v1, "com.alensw.PicFolder.cloud.sync"

    const-string v2, "task/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/alensw/cloud/sync/Provider;->a:Landroid/content/UriMatcher;

    const-string v1, "com.alensw.PicFolder.cloud.sync"

    const-string v2, "status"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/alensw/cloud/sync/Provider;->a:Landroid/content/UriMatcher;

    const-string v1, "com.alensw.PicFolder.cloud.sync"

    const-string v2, "status/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Lcom/alensw/cloud/sync/w;

    invoke-direct {v0}, Lcom/alensw/cloud/sync/w;-><init>()V

    iput-object v0, p0, Lcom/alensw/cloud/sync/Provider;->b:Lcom/alensw/cloud/sync/w;

    new-instance v0, Lcom/alensw/cloud/sync/u;

    invoke-direct {v0}, Lcom/alensw/cloud/sync/u;-><init>()V

    iput-object v0, p0, Lcom/alensw/cloud/sync/Provider;->c:Lcom/alensw/cloud/sync/u;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alensw/cloud/sync/Provider;->d:Z

    return-void
.end method

.method private declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alensw/cloud/sync/Provider;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/alensw/cloud/sync/Provider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alensw/cloud/sync/Provider;->b:Lcom/alensw/cloud/sync/w;

    invoke-virtual {v1, v0}, Lcom/alensw/cloud/sync/w;->b(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alensw/cloud/sync/Provider;->c:Lcom/alensw/cloud/sync/u;

    invoke-virtual {v1, v0}, Lcom/alensw/cloud/sync/u;->a(Landroid/content/Context;)V

    const-string v0, "SyncProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tasks loaded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alensw/cloud/sync/Provider;->b:Lcom/alensw/cloud/sync/w;

    invoke-virtual {v2}, Lcom/alensw/cloud/sync/w;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alensw/cloud/sync/Provider;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/cloud/sync/Provider;->b:Lcom/alensw/cloud/sync/w;

    invoke-virtual {v0, p1}, Lcom/alensw/cloud/sync/w;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/sync/Provider;->b:Lcom/alensw/cloud/sync/w;

    invoke-virtual {v0}, Lcom/alensw/cloud/sync/w;->h()V

    :cond_0
    iget-object v0, p0, Lcom/alensw/cloud/sync/Provider;->c:Lcom/alensw/cloud/sync/u;

    invoke-virtual {v0, p1}, Lcom/alensw/cloud/sync/u;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alensw/cloud/sync/Provider;->c:Lcom/alensw/cloud/sync/u;

    invoke-virtual {v0}, Lcom/alensw/cloud/sync/u;->h()V

    :cond_1
    invoke-virtual {p0}, Lcom/alensw/cloud/sync/Provider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alensw/cloud/sync/g;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/alensw/cloud/sync/t;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/cloud/sync/Provider;->c:Lcom/alensw/cloud/sync/u;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/cloud/sync/u;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/alensw/cloud/sync/Provider;->c:Lcom/alensw/cloud/sync/u;

    invoke-virtual {v0}, Lcom/alensw/cloud/sync/u;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/alensw/cloud/sync/v;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/cloud/sync/Provider;->b:Lcom/alensw/cloud/sync/w;

    invoke-virtual {v0, p1, p2}, Lcom/alensw/cloud/sync/w;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alensw/cloud/sync/Provider;->b:Lcom/alensw/cloud/sync/w;

    invoke-virtual {v0}, Lcom/alensw/cloud/sync/w;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    invoke-direct {p0}, Lcom/alensw/cloud/sync/Provider;->a()V

    sget-object v0, Lcom/alensw/cloud/sync/Provider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alensw/cloud/sync/Provider;->a(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/alensw/cloud/sync/Provider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/vnd.syncadapter.task"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.android.cursor.item/vnd.syncadapter.status"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    invoke-direct {p0}, Lcom/alensw/cloud/sync/Provider;->a()V

    sget-object v0, Lcom/alensw/cloud/sync/Provider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert not supported on URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "task_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alensw/cloud/sync/Provider;->b:Lcom/alensw/cloud/sync/w;

    invoke-virtual {v0, v2}, Lcom/alensw/cloud/sync/w;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/sync/v;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/cloud/sync/v;

    invoke-direct {v0}, Lcom/alensw/cloud/sync/v;-><init>()V

    :cond_0
    const-string v1, "task_name"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alensw/cloud/sync/v;->c:Ljava/lang/String;

    const-string v1, "dir_local"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alensw/cloud/sync/v;->d:Ljava/lang/String;

    const-string v1, "dir_remote"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alensw/cloud/sync/v;->e:Ljava/lang/String;

    const-string v1, "disabled"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/alensw/cloud/sync/v;->f:Z

    invoke-direct {p0, v2, v0}, Lcom/alensw/cloud/sync/Provider;->a(Ljava/lang/String;Lcom/alensw/cloud/sync/v;)V

    invoke-static {v2}, Lcom/alensw/cloud/sync/e;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    invoke-direct {p0}, Lcom/alensw/cloud/sync/Provider;->a()V

    sget-object v0, Lcom/alensw/cloud/sync/Provider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    new-instance v2, Lcom/alensw/b/j/c;

    invoke-direct {v2, p2}, Lcom/alensw/b/j/c;-><init>([Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/alensw/cloud/sync/Provider;->b:Lcom/alensw/cloud/sync/w;

    invoke-virtual {v0}, Lcom/alensw/cloud/sync/w;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Lcom/alensw/b/j/c;->a()Lcom/alensw/b/j/d;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alensw/cloud/sync/v;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "task_id"

    invoke-virtual {v4, v5, v0}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v0, "task_name"

    iget-object v5, v1, Lcom/alensw/cloud/sync/v;->c:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v0, "dir_local"

    iget-object v5, v1, Lcom/alensw/cloud/sync/v;->d:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v0, "dir_remote"

    iget-object v5, v1, Lcom/alensw/cloud/sync/v;->e:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v5, "disabled"

    iget-boolean v0, v1, Lcom/alensw/cloud/sync/v;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_2
    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/alensw/cloud/sync/Provider;->c:Lcom/alensw/cloud/sync/u;

    invoke-virtual {v0}, Lcom/alensw/cloud/sync/u;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/alensw/cloud/sync/Provider;->b:Lcom/alensw/cloud/sync/w;

    invoke-virtual {v4, v1}, Lcom/alensw/cloud/sync/w;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/alensw/b/j/c;->a()Lcom/alensw/b/j/d;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/sync/t;

    const-string v5, "task_id"

    invoke-virtual {v4, v5, v1}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "state"

    iget v5, v0, Lcom/alensw/cloud/sync/t;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "total_files"

    iget v5, v0, Lcom/alensw/cloud/sync/t;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "synced_files"

    iget v5, v0, Lcom/alensw/cloud/sync/t;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "sync_time"

    iget-wide v6, v0, Lcom/alensw/cloud/sync/t;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "duration"

    iget-wide v6, v0, Lcom/alensw/cloud/sync/t;->e:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "total_size"

    iget-wide v6, v0, Lcom/alensw/cloud/sync/t;->f:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "io_exceptions"

    iget v5, v0, Lcom/alensw/cloud/sync/t;->g:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "auth_exceptions"

    iget v5, v0, Lcom/alensw/cloud/sync/t;->h:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "fatal_exceptions"

    iget v5, v0, Lcom/alensw/cloud/sync/t;->i:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "fetch_state"

    iget v5, v0, Lcom/alensw/cloud/sync/t;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "folder_time"

    iget v5, v0, Lcom/alensw/cloud/sync/t;->k:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "folder_hash"

    iget-object v0, v0, Lcom/alensw/cloud/sync/t;->l:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    goto/16 :goto_3

    :cond_3
    move-object v0, v2

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alensw/cloud/sync/Provider;->c:Lcom/alensw/cloud/sync/u;

    invoke-virtual {v0, v1}, Lcom/alensw/cloud/sync/u;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/sync/t;

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/alensw/b/j/c;->a()Lcom/alensw/b/j/d;

    move-result-object v3

    const-string v4, "task_id"

    invoke-virtual {v3, v4, v1}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "state"

    iget v4, v0, Lcom/alensw/cloud/sync/t;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "total_files"

    iget v4, v0, Lcom/alensw/cloud/sync/t;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "synced_files"

    iget v4, v0, Lcom/alensw/cloud/sync/t;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "sync_time"

    iget-wide v4, v0, Lcom/alensw/cloud/sync/t;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "duration"

    iget-wide v4, v0, Lcom/alensw/cloud/sync/t;->e:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "total_size"

    iget-wide v4, v0, Lcom/alensw/cloud/sync/t;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "io_exceptions"

    iget v4, v0, Lcom/alensw/cloud/sync/t;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "auth_exceptions"

    iget v4, v0, Lcom/alensw/cloud/sync/t;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "fatal_exceptions"

    iget v4, v0, Lcom/alensw/cloud/sync/t;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "fetch_state"

    iget v4, v0, Lcom/alensw/cloud/sync/t;->j:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "folder_time"

    iget v4, v0, Lcom/alensw/cloud/sync/t;->k:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    const-string v1, "folder_hash"

    iget-object v0, v0, Lcom/alensw/cloud/sync/t;->l:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lcom/alensw/b/j/d;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alensw/b/j/d;

    :cond_4
    move-object v0, v2

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/alensw/cloud/sync/Provider;->a()V

    sget-object v0, Lcom/alensw/cloud/sync/Provider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/alensw/cloud/sync/Provider;->c:Lcom/alensw/cloud/sync/u;

    invoke-virtual {v0, v4}, Lcom/alensw/cloud/sync/u;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/sync/t;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alensw/cloud/sync/t;

    invoke-direct {v0}, Lcom/alensw/cloud/sync/t;-><init>()V

    :cond_0
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/alensw/cloud/sync/t;->a:I

    const-string v1, "total_files"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lcom/alensw/cloud/sync/t;->b:I

    const-string v5, "synced_files"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lcom/alensw/cloud/sync/t;->c:I

    const-string v5, "sync_time"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alensw/cloud/sync/t;->d:J

    const-string v5, "duration"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alensw/cloud/sync/t;->e:J

    const-string v5, "total_size"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/alensw/cloud/sync/t;->f:J

    const-string v5, "io_exceptions"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lcom/alensw/cloud/sync/t;->g:I

    const-string v5, "auth_exceptions"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lcom/alensw/cloud/sync/t;->h:I

    const-string v5, "fatal_exceptions"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lcom/alensw/cloud/sync/t;->i:I

    const-string v5, "fetch_state"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lcom/alensw/cloud/sync/t;->j:I

    const-string v5, "folder_time"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lcom/alensw/cloud/sync/t;->k:I

    const-string v5, "folder_hash"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alensw/cloud/sync/t;->l:Ljava/lang/String;

    :cond_1
    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-direct {p0, v4, v0, v1}, Lcom/alensw/cloud/sync/Provider;->a(Ljava/lang/String;Lcom/alensw/cloud/sync/t;Z)V

    invoke-virtual {p0}, Lcom/alensw/cloud/sync/Provider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    return v2

    :cond_2
    move v1, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
