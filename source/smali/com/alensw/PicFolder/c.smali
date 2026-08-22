.class Lcom/alensw/PicFolder/c;
.super Ljava/lang/Object;


# static fields
.field private static final h:[Ljava/lang/String;


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Lcom/alensw/cloud/oauth/a;

.field d:Lcom/alensw/cloud/a/ay;

.field e:Lcom/alensw/cloud/a/bv;

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/Object;

.field private final i:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "document_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "content_url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thumbnail_url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "last_modified"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alensw/PicFolder/c;->h:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alensw/PicFolder/c;->f:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alensw/PicFolder/c;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alensw/PicFolder/c;->i:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alensw/PicFolder/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/alensw/PicFolder/c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alensw/PicFolder/c;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alensw/PicFolder/c;->g:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/alensw/PicFolder/e;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/PicFolder/c;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alensw/PicFolder/e;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/alensw/PicFolder/e;

    invoke-direct {v0, v3}, Lcom/alensw/PicFolder/e;-><init>(Lcom/alensw/PicFolder/a;)V

    iget-object v1, p0, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    sget-object v2, Lcom/alensw/PicFolder/c;->h:[Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3, v3}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alensw/PicFolder/e;->a:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alensw/PicFolder/e;->b:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alensw/PicFolder/e;->c:J

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)Ljava/io/File;
    .locals 6

    iget-object v1, p0, Lcom/alensw/PicFolder/c;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    const-string v2, "last_modified"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, p1, v2, v4, v5}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    invoke-static {p1, p2}, Lcom/alensw/PicFolder/CloudProvider;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2, v3}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;J)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    iget-object v1, p0, Lcom/alensw/PicFolder/c;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/alensw/PicFolder/c;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    iget-object v2, p0, Lcom/alensw/PicFolder/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    invoke-virtual {v3}, Lcom/alensw/cloud/a/bv;->a()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/alensw/cloud/a/ay;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alensw/PicFolder/c;->a:Z

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

.method public declared-synchronized a(Lcom/alensw/cloud/oauth/b;Lcom/alensw/b/e/f;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alensw/PicFolder/c;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/alensw/PicFolder/c;->c:Lcom/alensw/cloud/oauth/a;

    iget-object v2, v0, Lcom/alensw/cloud/oauth/a;->g:Lcom/alensw/cloud/oauth/aj;

    iget-object v0, p0, Lcom/alensw/PicFolder/c;->c:Lcom/alensw/cloud/oauth/a;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/a;->a:Lcom/alensw/cloud/z;

    invoke-static {v0}, Lcom/alensw/cloud/e;->a(Lcom/alensw/cloud/z;)Lcom/alensw/cloud/x;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "drive is null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    iget v0, v0, Lcom/alensw/cloud/x;->e:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/alensw/PicFolder/c;->c:Lcom/alensw/cloud/oauth/a;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/a;->a:Lcom/alensw/cloud/z;

    invoke-static {v0}, Lcom/alensw/cloud/oauth/ah;->a(Lcom/alensw/cloud/z;)Lcom/alensw/cloud/oauth/ah;

    move-result-object v0

    check-cast v0, Lcom/alensw/cloud/oauth/ad;

    invoke-static {p2}, Lcom/alensw/b/e/b;->a(Lcom/alensw/b/e/f;)V

    invoke-virtual {v0, v2, p2}, Lcom/alensw/cloud/oauth/ad;->a_(Lcom/alensw/cloud/oauth/aj;Lcom/alensw/b/e/f;)V

    iget-object v0, p0, Lcom/alensw/PicFolder/c;->e:Lcom/alensw/cloud/a/bv;

    invoke-virtual {v0, v2}, Lcom/alensw/cloud/a/bv;->a(Lcom/alensw/cloud/oauth/aj;)V

    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/alensw/PicFolder/c;->c:Lcom/alensw/cloud/oauth/a;

    invoke-virtual {p1, v0}, Lcom/alensw/cloud/oauth/b;->a(Lcom/alensw/cloud/oauth/a;)V

    invoke-virtual {p1}, Lcom/alensw/cloud/oauth/b;->g()Z

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    const-string v0, "CloudProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alensw/PicFolder/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    iget-object v1, p0, Lcom/alensw/PicFolder/c;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/alensw/PicFolder/c;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    invoke-virtual {v0}, Lcom/alensw/cloud/a/ay;->c()V

    :cond_0
    iget-object v0, p0, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    iget-object v2, p0, Lcom/alensw/PicFolder/c;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/alensw/cloud/a/ay;->a(Landroid/content/Context;Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alensw/PicFolder/c;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/alensw/PicFolder/c;->d:Lcom/alensw/cloud/a/ay;

    sget-object v2, Lcom/alensw/PicFolder/c;->h:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/alensw/cloud/a/ay;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/alensw/PicFolder/e;

    invoke-direct {v1, v3}, Lcom/alensw/PicFolder/e;-><init>(Lcom/alensw/PicFolder/a;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alensw/PicFolder/e;->a:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alensw/PicFolder/e;->b:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/alensw/PicFolder/e;->c:J

    iget-object v4, p0, Lcom/alensw/PicFolder/c;->i:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method public declared-synchronized c(Landroid/content/Context;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alensw/PicFolder/c;->c:Lcom/alensw/cloud/oauth/a;

    iget-object v0, v0, Lcom/alensw/cloud/oauth/a;->a:Lcom/alensw/cloud/z;

    invoke-static {v0}, Lcom/alensw/cloud/e;->a(Lcom/alensw/cloud/z;)Lcom/alensw/cloud/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/alensw/cloud/x;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/alensw/PicFolder/d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/alensw/PicFolder/d;-><init>(Lcom/alensw/PicFolder/c;Landroid/os/Looper;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/alensw/PicFolder/c;->c:Lcom/alensw/cloud/oauth/a;

    invoke-static {v0, v1, v2}, Lcom/alensw/cloud/oauth/e;->a(Landroid/content/Context;Landroid/os/Handler;Lcom/alensw/cloud/oauth/a;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x64

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/16 v1, 0x64

    const/4 v2, 0x1

    const v3, 0x108008a

    const v4, 0x7f020001

    const v5, 0x7f0a0098

    const v6, 0x7f0a0097

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/alensw/b/l/a;->a(Landroid/content/Context;IZIIILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
